<%-- 
    Document   : nextpage
    Created on : Dec 11, 2021, 8:27:01 AM
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
        <jsp:declaration>
            String username="";
            String password="";
        </jsp:declaration>
        <jsp:scriptlet>
            username = request.getParameter("username");
                password = request.getParameter("pass");
        </jsp:scriptlet>
                <strong>Hello <jsp:expression>username</jsp:expression>Your password is
                    <jsp:expression>password</jsp:expression> </strong> 
    </body>
</html>
