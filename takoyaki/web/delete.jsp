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
             int idcust = Integer.parseInt(id);
       
            Connection con;
            /*PreparedStatement pst;*/
            ResultSet rs;
            
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection("jdbc:mysql://localhost/testdb","root","");
            Statement pst = con.createStatement();
            pst.executeUpdate("delete from customer where id = '"+idcust+"'");
            response.sendRedirect("index.jsp");
            
            
            
          
        
        %>
        
        <script>
            
            alert("Succesfull Deleted!");
            window.location.href="index.jsp";
            
       </script>
     </body>
 </html>
