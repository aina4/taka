<%-- 
    Document   : connect
    Created on : Dec 11, 2021, 7:31:06 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%
 
        String custName = request.getParameter("custName");
	String custPwd = request.getParameter("custPwd");
	String custPhoneNum = request.getParameter("custPhoneNum");
        String custEmail = request.getParameter("custEmail");
	String custUsername = request.getParameter("custUsername");

		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiedye","root","");
			PreparedStatement pst = con.prepareStatement("insert into customers(custName, custPwd, custPhoneNum, custEmail, custUsername)values(?,?,?,?,?)");
		
			pst.setString(1, custName);
			pst.setString(4, custPwd);
			pst.setString(5, custPhoneNum);
			pst.setString(6, custEmail);
			pst.setString(7, custUsername);
			
			int x = pst.executeUpdate();
			if(x>0){
				out.println("Successfully");
			}else{
				out.println("Failed");
			}
			
		}catch(Exception e){
			out.println(e);
		}
        %>
