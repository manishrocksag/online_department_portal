<%-- 
    Document   : layout
    Created on : Jul 12, 2012, 5:00:53 PM
    Author     : Sigma Zix
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html >
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>COMPUTER SCIENCE PORTAL</title>
    </head>
    <body>
        <jsp:include page="Header.jsp" />
        <div style="position: absolute; top:163px;left: 27px;">
            <jsp:include page="Menu.html"/>
           
            
        </div>
            <table><tr>
                    <td valign="top">
                        <%--<c:if test="${sessionScope.login ne true}">
                <jsp:include page="Login.jsp"/>
            </c:if>
            <c:if test="${sessionScope.login eq true}">
                
                You are logged in as ${sessionScope.user}, <a href="Logout.jsp">Logout</a><br>--%>
                
                <c:if test="${sessionScope.role eq 'faculty'}">
                        <jsp:include page="MenuF.jsp"/>
                    </c:if>
                    <c:if test="${sessionScope.role eq 'admin'}">
                        <jsp:include page="MenuA.jsp"/>
                    </c:if>
                    <c:if test="${sessionScope.role eq 'student'}">
                        <jsp:include page="MenuS.jsp"/>
                    </c:if>
                    
                       
          
           
            </td>
            
                <td style="position:relative;left:50px; width: 700px">
                    
                    <c:choose>
                        <c:when test="${param.id eq null}">
                    <jsp:include page="slider.jsp"/>
                        </c:when>
                        <c:when test="${param.id eq 1}">
                    <jsp:include page="slider.jsp"/>
                        </c:when>
                        <c:when test="${param.id eq 2}">
                            <jsp:include page="faculty.jsp"/>
                        </c:when>
                        <c:when test="${param.id eq 3}">
                            <jsp:include page="aboutUs.jsp"/>
                        </c:when>
                        <c:when test="${param.id eq 4}">
                            <jsp:include page="contactUs.jsp"/>
                        </c:when>
                    </c:choose>
                        <c:if test="${sessionScope.login eq true}">
                            <c:choose>
                            <c:when test="${param.id eq 5}">
                            <jsp:include page="fileUpload.jsp"/>
                        </c:when>
                        <c:when test="${param.id eq 6}">
                            <jsp:include page="allnoti.jsp"/>
                        </c:when>
                        <c:when test="${param.id eq 7}">
                            <c:if test="${sessionScope.role eq 'student'}"><c:redirect url="Logout.jsp"/></c:if>
                            <jsp:include page="notice.jsp"/>
                       </c:when>
                        <c:when test="${param.id eq 8}">
                            <jsp:include page="showNotice.jsp"/>
                       </c:when>
                        <c:when test="${param.id eq 9}">
                            <jsp:include page="Query.jsp"/>
                     </c:when>
                        <c:when test="${param.id eq 10}">
                            <c:if test="${sessionScope.role ne 'admin'}"><c:redirect url="Logout.jsp"/></c:if>
                            <jsp:include page="stdRegd.html"/>
                        </c:when>
                        <c:when test="${param.id eq 11}">
                            <c:if test="${sessionScope.role ne 'admin'}"><c:redirect url="Logout.jsp"/></c:if>
                            <jsp:include page="stdRegdPost.jsp"/>
                        </c:when>
                        <c:when test="${param.id eq 12}">
                            <c:if test="${sessionScope.role ne 'admin'}"><c:redirect url="Logout.jsp"/></c:if>
                            <jsp:include page="fltRegd.html"/>
                        </c:when>
                        <c:when test="${param.id eq 13}">
                            <c:if test="${sessionScope.role ne 'admin'}"><c:redirect url="Logout.jsp"/></c:if>
                            <jsp:include page="fltRegdPost.jsp"/>
                        </c:when>
                       <c:when test="${param.id eq 14}">
                            <jsp:include page="ShowProfile.jsp"/>
                        </c:when>
                            <c:when test="${param.id eq 15}">
                                <jsp:include page="editProfile.jsp"/>
                        </c:when>
                            <c:when test="${param.id eq 16}">
                                <c:if test="${sessionScope.role ne 'admin'}"><c:redirect url="Logout.jsp"/></c:if>
                            <jsp:include page="SelectStudent.jsp"/>
                        </c:when>
                            <c:when test="${param.id eq 17}">
                                <jsp:include page="ChangePassword.jsp"/>
                        </c:when>
                            <c:when test="${param.id eq 18}">
                                <c:if test="${sessionScope.role eq 'student'}"><c:redirect url="Logout.jsp"/></c:if>
                            <jsp:include page="ShowProfileFac.jsp"/>
                        </c:when>
                            <c:when test="${param.id eq 19}">
                                <c:if test="${sessionScope.role eq 'student'}"><c:redirect url="Logout.jsp"/></c:if>
                            <jsp:include page="editProfileFac.jsp"/>
                        </c:when>
                           
                        
                </c:choose>
                              </c:if>
                   
                </td>
            </tr>
    </table>
                
        </body>
</html>
