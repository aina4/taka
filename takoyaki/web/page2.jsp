<%-- 
    Document   : page2
    Created on : Dec 11, 2021, 1:28:10 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>page 2</h1>
        <%
            response.sendRedirect("page3.jsp");
        %>
    </body>
</html>
