
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<title>Student Registration Form</title>

</head>



<body>
    
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib  prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
   
     <c:if test="${sessionScope.login ne true}"><c:redirect url="Logout.jsp"/></c:if>
    <c:if test="${sessionScope.role eq 'faculty'}"><c:redirect url="Logout.jsp"/></c:if>

    <c:if test="${sessionScope.role eq 'student'}">
        <sql:query var="rs" sql="select * from student where userId='${sessionScope.user}'"/>
        <sql:query var="info" sql="select * from studentprof where userId='${sessionScope.user}'"/>
        <c:set var="temp" value="${sessionScope.user}" scope="request"/>
    </c:if>
    
    <c:if test="${sessionScope.role eq 'admin'}">
    <sql:query var="rs" sql="select * from student where userId='${param.fors}'"/>
    <sql:query var="info" sql="select * from studentprof where userId='${param.fors}'"/>
    <c:set var="temp" value="${param.fors}" scope="request"/>
    </c:if>
    
    <table width="969" border="0" cellpadding="0" cellspacing="0">

  <!--DWLayoutDefaultTable-->
  
  
  <tr>

    <td height="71" colspan="7" valign="top"><h1 align="center"><u>PROFILE</u></h1></td>

  </tr>

  <tr>

    <td height="63" colspan="7" valign="top"></td>
</tr>
  <c:forEach var="rss" items="${rs.rows}">
  

  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Name:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top">${rss.name}</td>
    
  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

  

   

   <tr>

    <td height="32">&nbsp;</td>

    <td valign="top">Father's Name:</td>

    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${rss.father}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

  <tr>

    <td height="2"></td>

    <td></td>

    <td></td>

    <td width="139"></td>

    <td width="71"></td>

    <td width="77"></td>

    <td width="5"></td>

  </tr>
<tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Date of birth:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${rss.dob}</td>

  </tr>
  

   <tr>

    <td height="32">&nbsp;</td>

    <td valign="top">Roll No:</td>

    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${rss.roll}</td>

  </tr>
 
  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

   <tr>

    <td height="32">&nbsp;</td>

    <td valign="top">Batch:</td>

    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${rss.batch}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

  <tr>

    <td height="2"></td>

    <td></td>

    <td></td>

    <td width="14"></td>

    <td width="23"></td>

    <td width="232"></td>

    <td width="459"></td>

  </tr>

  

   <tr>

    <td height="32">&nbsp;</td>

    <td valign="top">Department:</td>

    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${rss.dept}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

  <tr>

    <td height="1"></td>

    <td></td>

    <td></td>

    <td></td>

    <td></td>

    <td></td>

    <td></td>

  </tr>
</c:forEach>
<c:forEach var="inf" items="${info.rows}">
   <tr>

    <td height="32">&nbsp;</td>

    <td valign="top">Mobile:</td>

    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.mobile}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

   

   <tr>

    <td height="32">&nbsp;</td>

    <td valign="top">Email:</td>

    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.email}</td>

  </tr>

 

  <tr>

    <td height="1"></td>

    <td></td>

    <td></td>

    <td></td>

    <td></td>

    <td></td>

    <td></td>

  </tr>

   <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

   

   <tr>

    <td height="35">&nbsp;</td>

    <td valign="top">Address:</td>

    <td valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.address}</td>

  </tr>

   <tr>

    <td height="24" colspan="4" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td>&nbsp;</td>

    <td>&nbsp;</td>

    <td>&nbsp;</td>

  </tr>
  

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Graduation Marks:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.graduation}</td>

  </tr>
  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Inter Score:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.inter}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>
  
    
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">High School Score:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.highschool}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Sports:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.sports}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Academic Project:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.acadproj}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>
    <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Industry Experience:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.industryexp}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Academic Achievement::</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.acadachmnt}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Interest:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="4" valign="top">${inf.interest}</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>
</c:forEach>
   <tr>

    <td height="24" colspan="2" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    
    <c:if test="${sessionScope.role eq 'student'}">
    <td valign="top"><a href="Home.jsp?id=15">Edit Profile</a></td>
    <td></td>
    <td valign="top"><a href="Home.jsp?id=17">Change Password</a></td>
    </c:if>
    <td>&nbsp;</td>

  </tr>

  </table>
 
</body>

</html>

