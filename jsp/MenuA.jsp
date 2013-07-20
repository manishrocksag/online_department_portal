<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
    #cssmenu {
	margin: 0;
	padding: 0;
	font-family: Verdana, Helvetica, Arial, sans-serif;
}
#cssmenu{
	width: 233px;
}
#cssmenu ul{
	list-style: none;
	text-indent: 0px;
}
#cssmenu li{
	margin-top: 3px;
}
#cssmenu a{
	font: 12px Verdana;
	padding: 4px;
	color: #646464;
	display:block;
	padding: 6px 30px;
	height: 20px;
	text-decoration: none;
	background: url('menu_assets/images/background.gif');
}
#cssmenu a:hover{
	background: url('menu_assets/images/highlight.gif') no-repeat right;
	padding: 6px 40px;
}no-repeat </style>
</head>
<body>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%--<c:if test="${sessionScope.role ne 'admin'}"><c:redirect url="Logout.jsp"/></c:if>--%>
    
<div id='cssmenu'>
    <div style="position: absolute; top:100px; width: 233px;">
    <ul>
   <li><a href='Home.jsp?id=10'><span>Student Regn.</span></a></li>
   <li><a href='Home.jsp?id=12'><span>Faculty Regn.</span></a></li>
   <li><a href='Home.jsp?id=16'><span>Profiles</span></a></li>
   <li><a href='Home.jsp?id=5'><span>Files</span></a></li>
   <li><a href='noti'><span>Notice Board</span></a></li>
   <li><a href='Home.jsp?id=9'><span>Query</span></a></li>
   
   <%--<li><a href='#'><span>Item</span></a></li>--%>
</ul>
</div>
</div>

</body>
</html>
