<%-- 
    Document   : editprofile
    Created on : Dec 11, 2021, 9:09:52 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page errorPage="error_page.jsp" %>
<%
    User user = (User) session.getAttribute("currentUser");
    if(user==null){
        response.sendRedirect("login_page.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <!--profile edit-->
        <form action="editservlet" method="post">
            <table class="table">
                <tr>
                    <td>Name: </td>
                    <td><%=user.getId() %></td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="password" class="form-control name="user_password" value="<%=user.getPassword() %>"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
