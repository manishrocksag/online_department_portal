<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>show</title>
</head>

<body>
    <%@taglib prefix="h" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib prefix="s" uri="http://java.sun.com/jsp/jstl/sql" %>
    <c:if test="${sessionScope.login ne true}"><c:redirect url="Logout.jsp"/></c:if>
    
   <h:forEach var="it" items="${requestScope.rs.rows}">
    <table align="center">
             <tr>
                <td>
                  Date:
                </td>
                <td>
                    <h:out value="${it.date}"/>
                </td>
  </tr>
              <tr>
                <td>
                  Subject:
                </td>
                <td>
                   <h:out value="${it.subject}" />
                </td>
              </tr>
                <tr>
                 <td>
                   Description:
                 </td>
                 <td>
                    <h:out value="${it.content}" />
    </td>
  </tr>
    <tr>
<td>
         Issued by:
                 </td>
                 <td>
                    <h:out value="${it.issuer}" />
    </td>
  </tr>
     <tr>
         <td>
             <form action="noti">
           <input type="submit" value="Back to notices"/>
       </form>
        </td>
           </tr>
</table>
</h:forEach>
</body>
</html>
