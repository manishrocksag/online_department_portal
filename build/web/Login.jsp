<html>
        <head>
        </head>
        <body>
            <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>         
            <form action="Authenticate.jsp">
                <table>
                    <tr>
                        <td>
                            UserID :: 
                        </td>
                        <td width="70px">
                        </td>
                        <td>
                            <input type="text" name="user">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            Password :: 
                        </td>
                        <td >
                        </td>
                        <td>
                            <input type="password" name="pass">
                        </td>
                    </tr>
                    <tr>
                        <td><input type="radio" name="role" value="admin">Admin</td>
                        <td><input type="radio" name="role" value="faculty">Faculty</td>
                        <td><input type="radio" name="role" value="student" checked>Student</td>
                    </tr>
                    <tr>
                        <td>
                        </td>
                        <td>
                        </td>
                        <td>
                            <input type="submit" value="Login">
                        </td>
                        
                        
                    </tr>
                    
                </table>
                
        <br>
        </form>
        </body>
        </html>