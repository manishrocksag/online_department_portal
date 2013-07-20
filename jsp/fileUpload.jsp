<%-- 
    Document   : fileUpload
    Created on : Jul 14, 2012, 2:04:28 PM
    Author     : Monica
--%>
<%@page import="java.io.File"%>
<%@taglib  prefix="h" uri="/WEB-INF/struts-html.tld" %>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <br>    <body>
        
        <br>
        <br
    
        <%
        try{
            //out.println("welcome ");

        int i=0;
           String path= getServletContext().getRealPath(File.separator)+"\\ProjectImage";
           //System.out.println("***************"+path);
           File file=new File(path);
           
           for(File file1:file.listFiles())
               {
               String file2="ProjectImage\\"+file1.getName();
               
               %>

               <a href="<%= file2%>"><%= file1.getName()%></a><br>
      

<%

               }
           
           
             }
        catch(Exception e)
        {
             System.out.println("heelo"+e.getMessage());
        }
           
           
      %>
      
      
        <h:form action="image.do" enctype="multipart/form-data" >
            <c:if test="${sessionScope.role ne 'student'}" >
            File Select <h:file property="image"/>
                    <h:submit value="Upload"/>
            </c:if> 
        </h:form>
            
    </body>
</html>
