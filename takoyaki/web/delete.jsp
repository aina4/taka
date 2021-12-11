<%-- 
    Document   : delete
    Created on : Dec 11, 2021, 11:10:17 AM
    Author     : User
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
 <!DOCTYPE html>
 <html>
     <body>
   
<%
       String id = request.getParameter("id");
        Connection con;
        PreparedStatement pst;
        ResultSet rs;
        
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost/testdb","root","");
        pst = con.prepareStatement("delete from customer where id = ?"); //change customer into table name in database
         pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Succesfull Deleted!");
            window.location.href="index.jsp";
            
       </script>
     </body>
 </html>
       
    
