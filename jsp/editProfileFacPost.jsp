<%-- 
    Document   : editProfileFacPost
    Created on : Jul 15, 2012, 9:00:38 PM
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
        <c:if test="${sessionScope.role ne 'faculty'}"><c:redirect url="Logout.jsp"/></c:if>
    
        <sql:update sql="update faculty set name='${param.name}',mobile='${param.mobile}',dob='${param.dob}',address='${param.address}',qualification='${param.qualification}',email='${param.email}',speciality='${param.speciality}',dept='${param.dept}' where userId='${sessionScope.user}'"/>
                    <c:redirect url="Home.jsp?id=18"/>
 </body>
</html>
