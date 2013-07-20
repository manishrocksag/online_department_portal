
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<title>Student Registration Form</title>

</head>



<body>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
    <%-- <c:if test="${sessionScope.role eq 'student'}"><c:redirect url="Logout.jsp"/></c:if>
     <c:if test="${sessionScope.login ne true}"><c:redirect url="Logout.jsp"/></c:if>--%>
<c:if test="${sessionScope.role eq 'faculty'}">
        <sql:query var="rs" sql="select * from faculty where userId='${sessionScope.user}'"/>
       
    </c:if>
    
    <c:if test="${sessionScope.role eq 'admin'}">
    <sql:query var="rs" sql="select * from faculty where userId='${param.fors}'"/>
    
    </c:if>

<table width="969" border="0" cellpadding="0" cellspacing="0">

  <!--DWLayoutDefaultTable-->

  <tr>

    <td height="71" colspan="7" valign="top"><h1 align="center"><u>PROFILE</u></h1></td>

  </tr>
  <c:forEach var="rss" items="${rs.rows}">
  <tr>

    <td height="63" colspan="7" valign="top"></td>
</tr>

  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Name:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.name}</td>
    
  </tr>
  
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Email:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.email}</td>
    
  </tr>

<tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Mobile No:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.mobile}</td>
    
  </tr>
   <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Date of Birth:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.dob}</td>
    
  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Address:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.address}</td>
    
  </tr>
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Department:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.dept}</td>
    
  </tr>

<tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Qualifications:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.qualification}</td>
    
  </tr>

<tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Speciality:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.speciality}</td>
    
  </tr>
 </c:forEach>


   
   <tr>

    <td height="24" colspan="4" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td>&nbsp;</td>

    <c:if test="${sessionScope.role eq 'faculty'}">
    <td valign="top"><a href="Home.jsp?id=19">Edit Profile</a></td>
    <td></td>
    <td valign="top"><a href="Home.jsp?id=17">Change Password</a></td>
    </c:if>

    <td>&nbsp;</td>

  </tr>

  </table>
 
</body>

</html>

