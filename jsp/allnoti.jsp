<%-- 
    Document   : allnoti
    Created on : Jul 13, 2012, 5:26:49 PM
    Author     : Monica
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
     <%@taglib prefix="h" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
   <h:if test="${sessionScope.login ne true}"><c:redirect url="Logout.jsp"/></h:if>

    <h:forEach var="it" items="${requestScope.rs.rows}">
        
       <a href="getNotice?subject=${it.subject}"> ${it.subject}</a><br>
       
      </h:forEach>
       
      
         <form action="Home.jsp">
      <c:if test="${sessionScope.role ne 'student'}">
           
             <input type="submit" value="add notice">
             <input type="hidden" value="7" name="id">
      </c:if>
     </form>
   

    </body>
</html>
