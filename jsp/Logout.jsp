<%-- 
    Document   : Logout
    Created on : Jul 15, 2012, 3:11:43 PM
    Author     : Sigma Zix
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <%
        session.invalidate();
        %>
        <c:redirect url="Home.jsp?id=1"/>
    </body>
</html>
