<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<body>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <c:if test="${sessionScope.role eq 'student'}"><c:redirect url="Logout.jsp"/></c:if>
    <c:if test="${sessionScope.login ne true}"><c:redirect url="Logout.jsp"/></c:if>
    
    <form action="addNotice">
<table align="center">
             <tr>
                <td>
                  Date:
                </td>
                <td>
                    <input type="text" name="date" id="date3" width="100px" />
                </td>
                </tr>
              <tr>
                <td>
                  Subject*:
                </td>
                <td>
                  <input type="text" name="subject" id="subject" width="400px"/>
                </td>
                    <tr>
                 <td>
                   Description:
                 </td>
                 <td>
                   <label for="description"></label>
                   <textarea name="description" id="description" cols="45" rows="5"></textarea>
                    </td>
                        </tr>
                    <tr>
                   <td></td>
                 <td>
                   <blockquote>
                     <blockquote>
                       <blockquote>
                         <blockquote>
                           <blockquote>
                             <p>
                                 
                               <input type="submit" name="post" value="POST" />
                              
                             </p>

                           </blockquote>
                         </blockquote>
                       </blockquote>
                     </blockquote>
                 </blockquote></td>
   </tr>
</table>
</form>
</body>
</html>
