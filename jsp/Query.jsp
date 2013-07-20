

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta content="en-us" http-equiv="Content-Language" />
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<title>Queries</title>
<style type="text/css">
.auto-style1 {
	font-size: xx-large;
	text-align: center;
}
.auto-style2 {
	text-align: left;
	margin-left: 136px;
	margin-top: 15px;
	margin-bottom: 9px;
}
.auto-style3 {
	font-size: x-large;
	text-align: left;
	margin-left: 99px;
}
.auto-style4 {
	text-align: left;
	margin-left: 136px;
	margin-top: 15px;
	margin-bottom: 0px;
}
.auto-style5 {
	margin-left: 104px;
	margin-right: 0px;
	margin-top: 0px;
}
</style>
</head>

<body>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<c:if test="${sessionScope.login ne true }"><c:redirect url="Logout.jsp"/></c:if>

<p class="auto-style1">Queries</p>
<p class="auto-style1">&nbsp;</p>

<sql:query var="rs" sql="select * from message where sender='${sessionScope.user}' or receiver='${sessionScope.user}'"/>
<sql:query var="to1" sql="select userId from admin"/>
<sql:query var="to2" sql="select userId from faculty"/>
<sql:query var="to3" sql="select userId from student"/>



<c:forEach var="r" items="${rs.rows}">
<p class="auto-style3" style="width: 236px; height: 31px">From: ${r.sender}</p>
<p class="auto-style2" style="width: 674px;color: white">&nbsp;&nbsp;&nbsp; 
${r.description}</p>
<p class="auto-style2" style="width: 200px; height: 30px">TO:  ${r.receiver}</p>
</c:forEach>


<p class="auto-style4" style="width: 677px;">Reply<br />
    <form action="Post.jsp" method="post">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; From:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<input name="Text1" style="width: 532px" type="text" value="${sessionScope.user}" readonly="true"/><br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; To:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<select name="Text2">
    <c:forEach var="to" items="${to1.rows}"><option value="${to.userId}">${to.userId} (admin)</option></c:forEach>
    <c:forEach var="to" items="${to2.rows}"><option value="${to.userId}">${to.userId} (faculty)</option></c:forEach>
    <c:forEach var="to" items="${to3.rows}"><option value="${to.userId}">${to.userId} (student)</option></c:forEach>
</select>

<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Query:&nbsp;&nbsp;&nbsp;
<br />
<br />

&nbsp;<textarea class="auto-style5" name="Text3" cols="50" rows="10"></textarea>
<br>
    <input class="auto-style5" type="submit" value="post">
    
</form>
</p>

</body>

</html>
