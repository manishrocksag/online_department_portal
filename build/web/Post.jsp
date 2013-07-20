<!DOCTYPE html>
<body>
    
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>

<sql:update sql="insert into message values('${param.Text2}','${param.Text1}','${param.Text3}')"/>
<c:redirect url="Home.jsp?id=9" />
    </body>