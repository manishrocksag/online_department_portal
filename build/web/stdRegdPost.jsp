<%-- 
    Document   : stdRegdPost
    Created on : Jul 15, 2012, 12:11:42 AM
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
        <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
        <c:if test="${sessionScope.role ne 'admin'}"><c:redirect url="Logout.jsp"/></c:if>
    
        <c:set var="uid" value="${param.name}.${param.roll}"/>
        <c:set var="pas" value="${param.name}${param.dob}"/>
        <sql:update sql="insert into student values('${uid}','${pas}','${param.name}','${param.batch}','${param.dept}','${param.roll}','${param.father}','${param.dob}')" />
        <sql:update sql="insert into studentprof values('${uid}',null,null,null,null,null,null,null,null,null,null,null)" />
        
        <div style="left: 200px;">Post Successful!!<br>
            UserId:${uid}<br>
            Password:${pas}
        </div>
        <form action="Home.jsp">
            <input type="hidden" value="10" name="id">
            <input type="submit" value="Enter Another">
        </form>
    </body>
</html>
