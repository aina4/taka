<%-- 
    Document   : index
    Created on : Dec 11, 2021, 2:08:08 PM
    Author     : nurul
--%>

<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "taka";
String userid = "root";
String password = "";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Retrieve data from database in jsp</h1>
        <table border="1">
        <tr>
        <td>id</td>
        <td>name</td>
        <td>phonenumber</td>
        <td>Email</td>
        <td>update</td>
        </tr>
        <%
        try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from customer ";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
        %>
        <tr>
        <td><%=resultSet.getString("id") %></td>
        <td><%=resultSet.getString("cname") %></td>
        <td><%=resultSet.getString("phonenumber") %></td>
        <td><%=resultSet.getString("email") %></td>
        <td><a href="update.jsp?id=<%=resultSet.getString("id")%>">update</a></td>
        </tr>
        <%
        }
        connection.close();
        } catch (Exception e) {
        e.printStackTrace();
        }
        %>
        </table>
    </body>
</html>
