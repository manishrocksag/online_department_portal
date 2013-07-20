<%-- 
    Document   : editProfilePost
    Created on : Jul 15, 2012, 4:10:38 PM
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
        <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
        
        <sql:update sql="update studentprof set mobile='${param.mobile}',address='${param.address}',graduation='${param.graduation}',inter='${param.inter}',acadachmnt='${param.acadachmnt}',sports='${param.sports}',acadproj='${param.acadproj}',industryexp='${param.industryexp}',interest='${param.interest}',highschool='${param.highschool}',email='${param.email}' where userId='${sessionScope.user}'"/>
        <c:redirect url="Home.jsp?id=14"/>
    </body>
</html>
