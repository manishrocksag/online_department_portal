<%-- 
    Document   : ChangePassword
    Created on : Jul 15, 2012, 7:35:02 PM
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
       
        <form action="ChangePasswordPost.jsp">
        <table>
            <tr>
                <td>
                    Current Password:
                </td>
                <td>
                    
                </td>
                <td>
                    <input type="password" name="exist">
                </td>
            </tr>
             <tr>
                <td>
                    New Password:
                </td>
                <td>
                    
                </td>
                <td>
                    <input type="password" name="newpas">
                </td>
            </tr>
            <tr>
                <td>
                    Confirm Password:
                </td>
                <td>
                    
                </td>
                <td>
                    <input type="password" name="newpas2">
                </td>
            </tr>
            <tr>
                <td>
                   
                </td>
                <td>
                    
                </td>
                <td>
                    <input type="submit" value="Confirm">
                </td>
            </tr>
        
        
        </table>
    </form>
    </body>
</html>
