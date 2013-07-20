<%-- 
    Document   : SelectStudent
    Created on : Jul 15, 2012, 5:41:31 PM
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
        <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
        <c:if test="${sessionScope.role ne 'admin'}"><c:redirect url="Logout.jsp"/></c:if>

       <c:if test="${sessionScope.role eq 'admin'}">
    <sql:query var="foruser" sql="select userId from student"/>
    <sql:query var="forfac" sql="select userId from faculty"/>
    <form action="Home.jsp">
    <table>
    
        <tr>
        
            <td>Select Student</td><td><input type="hidden" name="id" value="14"></td>
            <td><select name="fors" >
                <c:forEach var="foru" items="${foruser.rows}"><option value="${foru.userId}">${foru.userId}</option></c:forEach>
               
                </select></td>
      
                <td> <input type="submit" value="Select"></td>
               
                  </tr>
    </table></form>
                
    <form action="Home.jsp">
        <table>
        <tr><td>Select Faculty :</td><td><input type="hidden" name="id" value="18"></td>
            <td><select name="fors" >
                <c:forEach var="forf" items="${forfac.rows}"><option value="${forf.userId}">${forf.userId}</option></c:forEach>
                
            </select></td>
            <td><input type="submit" value="Select"></td></tr>
    </table>
                </form>
    </c:if>
    </body>
</html>
