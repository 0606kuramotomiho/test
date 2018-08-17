<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="./css/header.css">
<title>header</title>
</head>
<body>
<div id="header">
<a href="HomeAction" id="header-logo" >MULTITASKING</a>

	<div id="header-menu">
		<ul>
			<s:form id="form" name="form">
				<li><a href="LoginAction">Login</a>
				<li><a href="#">New</a>
				<li><a href="#">Sarch</a>
				<li><a href="#">Contact us</a>
			</s:form>
		</ul>
	</div>
	</div>


</body>
</html>