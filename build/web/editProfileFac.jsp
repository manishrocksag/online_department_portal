
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">

<title>Student Registration Form</title>

</head>



<body>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:if test="${sessionScope.role ne 'faculty'}"><c:redirect url="Logout.jsp"/></c:if>
    
    <form action="editProfileFacPost.jsp">
<table width="969" border="0" cellpadding="0" cellspacing="0">

  <!--DWLayoutDefaultTable-->

  <tr>

    <td height="71" colspan="7" valign="top"><h1 align="center"><u>PROFILE</u></h1></td>

  </tr>

  <tr>

    <td height="63" colspan="7" valign="top"></td>
</tr>

  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Name:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="text" name="name" size="35"></td>
    
  </tr>
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Email:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="text" name="email" size="35"></td>
    
  </tr>

<tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Mobile No:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="text" name="mobile" size="35"></td>
    
  </tr>
   <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Date of Birth:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="text" name="dob" size="35"></td>
    
  </tr>

  <tr>

    <td height="21" colspan="7" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

  </tr>

  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Address:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="text" name="address" size="35"></td>
    
  </tr>
  <tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Department:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="text" name="dept" size="35"></td>
    
  </tr>

<tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Qualifications:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="text" name="qualification" size="35"></td>
    
  </tr>

<tr>

    <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top">Speciality:</td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="text" name="speciality" size="35"></td>
    
  </tr>
 
  <tr>
      <td width="39" height="32">&nbsp;</td>

    <td width="127" valign="top"></td>

    <td width="75" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>

    <td colspan="2" valign="top"><input type="submit" value="Save Now"></td>
  </tr>

   
   
  

  </table>
 </form>
</body>

</html>

