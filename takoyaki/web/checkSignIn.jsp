<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
	<body>
		<%
			String username2 = request.getParameter("username");
			String password2 = request.getParameter("password");
			
			try{ 
				//load the driver class 
				Class.forName("com.mysql.jdbc.Driver"); 
				
				//create the connection object 
				Connection con=DriverManager.getConnection( "jdbc:mysql://localhost/tiedye", "root",""); 
				String username = request.getParameter("username");
				String pass = request.getParameter("pass");
		
				//create the statement object 
				Statement stmt=con.createStatement(); 
				String sql = "select * from customers where custUsername= '" + username + "' and custPwd= '" + pass + "'";
				
				//execute query 
				ResultSet rs=stmt.executeQuery(sql); 

				//processing resultset - iterate
				if(rs.next()){
					response.sendRedirect("newhomepage.jsp");
					
				}
				else {
					request.setAttribute("error", "Wrong username or password. Try Again");
					RequestDispatcher rd = request.getRequestDispatcher("signIn.jsp");
					rd.include(request, response);
				} 
				con.close(); 
			}
			catch(Exception e){ 
				System.out.println(e); 
			} 
		%>
	</body>
</html>
