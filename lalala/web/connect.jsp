<%-- 
    Document   : connect
    Created on : Dec 11, 2021, 7:31:06 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<html>
    <head>
    <style>
    p {text-align: center;}
    h1 {text-align: center;}
    </style>
</head>
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
			pst.setString(2, custPwd);
			pst.setString(3, custPhoneNum);
			pst.setString(4, custEmail);
			pst.setString(5, custUsername);
			
			int x = pst.executeUpdate();
			if(x>0){
				out.println("Successfully");
			}else{
				out.println("Failed");
			}
			con.close();
		}catch(Exception e){
			out.println(e);
		}
        %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile Edited</title>
        
         <link href="bootstrap/css/bootstrap.css" rel="stylesheet" type="text/css"/>
        <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        
        
        
    </head>
    <body>
        <h1>Your Profile Has Been Updated!</h1><br><br>
        
        
        <div class="col-sm-8">
                 <div class="panel-body">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%" colour="blue">
                         <thead>
                             <tr>
                                    <th>Customer Name</th>
                                    <th>Password</th>
                                    <th>Phone Number</th>
                                    <th>Email</th>
                                    <th>Username</th>
                             </tr> 
                             <%  
 
                                Connection con;
                                PreparedStatement pst;
                                ResultSet rs;
        
                                Class.forName("com.mysql.jdbc.Driver");
                                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tiedye","root","");
                                
                                  String query = "select * from customers";
                                  Statement st = con.createStatement();
                                  
                                    rs =  st.executeQuery(query);
                                    
                                        while(rs.next())
                                        {
                                            String id = rs.getString("custID");
                                   %>
                             <tr>
                                 <td align="center"><%=rs.getString("custName") %></td>
                                 <td align="center"><%=rs.getString("custPwd") %></td>
                                 <td align="center"><%=rs.getString("custPhoneNum") %></td>
                                 <td align="center"><%=rs.getString("custEmail") %></td>
                                 <td align="center"><%=rs.getString("custUsername") %></td>
                             </tr>
                              <% 
                                 }
                               %>
                       </table>    
                 </div>
                                 <p><a href="homepage.jsp" align="center">HomePage</a></p>
                                 <p><a href="editProfile.jsp" align="center">Edit Profile</a></p>
            </div>  
      </body>
</html>