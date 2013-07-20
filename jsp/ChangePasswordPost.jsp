<%-- 
    Document   : ChangePasswordPost
    Created on : Jul 15, 2012, 7:39:50 PM
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
        <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
        <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
        
       <c:if test="${param.newpas eq param.newpas2}">
        <sql:query var="pas" sql="select password from ${sessionScope.role} where userId='${sessionScope.user}'"/>
            <c:forEach var="p" items="${pas.rows}"><c:set var="pass" value="${p.password}"/></c:forEach>
            <c:if test="${param.exist eq pass}">
                <sql:update sql="update ${sessionScope.role} set password='${param.newpas}' where userId='${sessionScope.user}'"/>
         </c:if>   
        </c:if>
            <c:redirect url="Home.jsp?id=14"/>
    </body>
</html>
