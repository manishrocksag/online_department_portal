<%-- 
    Document   : Login
    Created on : Jul 13, 2012, 5:33:54 PM
    Author     : Sigma Zix
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <sql:setDataSource driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/cse" user="root" password="password" scope="session"/>
        
        <sql:query var="test" sql="select password from ${param.role} where userID='${param.user}'" />
        <c:forEach var="r" items="${test.rows}">
            <c:set var="password" value="${r.password}"/>
        </c:forEach>
       
        <c:if test="${password eq param.pass}">
            <c:set var="user" value="${param.user}" scope="session"/>
           <c:set var="role" value="${param.role}" scope="session"/>
            <c:set var="login" value="true" scope="session"/>
            </c:if>
        <c:if test="${password ne param.pass}">
            
            <c:set var="login" value="false" scope="session"/>
        </c:if>
        <c:redirect url="Home.jsp" />
</body>
</html>
