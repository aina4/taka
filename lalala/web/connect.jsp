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
      

* {
    box-sizing: border-box;
}
h1 {
    text-align: center;
}
body {
    min-height: 100vh;
    display: flex;
    font-family: 'Roboto', sans-serif;

}

.table_responsive {
    max-width: 900px;
    border: 1px solid #00bcd4;
    background-color: whitesmoke;
    padding: 15px;
    overflow: auto;
    margin: auto;
    border-radius: 4px;
}

table {
    width: 100%;
    font-size: 13px;
    color: #444;
    white-space: nowrap;
    border-collapse: collapse;
}

table>thead {
    background-color: #00bcd4;
    color: #fff;
}

table>thead th {
    padding: 15px;
}

table th,
table td {
    border: 1px solid #00000017;
    padding: 10px 15px;
}

table>tbody>tr {
    background-color: white;
    transition: 0.3s ease-in-out;
}


table>tbody>tr:nth-child(even) {
    background-color: rgb(238, 238, 238);
}

table>tbody>tr:hover{
    filter: drop-shadow(0px 2px 6px #0002);
}

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
        
        
        
        <div class="col-sm-8">
                 <div class="table_responsive">
                     <table id="tbl-student" class="table table-responsive table-bordered" cellpadding ="0" width="100%" >
                         <h1>Your Profile Has Been Updated!</h1>
                         <br><br><thead>
                             <thead>
                                 <tr>
                                    <th>Customer Name</th>
                                    <th>Password</th>
                                    <th>Phone Number</th>
                                    <th>Email</th>
                                    <th>Username</th>
                                 </tr>
                             </thead> 
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
                                   <tbody>
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
                      </tbody>  
                     </table>    
                 </div>
                      <center><p><a href="homepage.jsp" align="center">HomePage</a></p></center>
    
            </div>  
      </body>
</html>