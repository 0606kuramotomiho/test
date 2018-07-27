<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Error Page</title>
</head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">

	<title>エラー画面</title>

	<style type="text/css">
	/* ========TAG LAYOUT======== */

		* {
			font-family:'Hiragino Kaku Gothic Pro W3','Hiragino Kaku Gothic ProN',Meiryo,sans-serif;
			text-decoration:none;
		}

		body {
			margin:0;
			padding:0;
			line-height:1.6;
			letter-spacing:1px;
			font-family:Verdane,Helvetica,sans-serif;
			font-size:12px;
			color:#333;
			background:#fff;
		}

		table {
			text-align:center;
			margin:0 auto;
		}

	/* ========ID LAYOUT======== */

		#header {
			width:100%;
			height:80px;
			background-color:black;
		}

		#header #mypage {
			color:#fff;
			float:right;
			font-size:18px;
		}

		#header #logo {
			color:#fff;
			float:left;
			font-size:28px;
			line-height:80px;
			padding-left:10px;
		}

		#main {
			width:100%;
			height:500px;
			text-align:center;
		}

		#footer {
			width:100%;
			height:80px;
			background-color:black;
			clear:both;
		}

	</style>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">
				<div id="top">
						<p>エラー</p>
				</div>

				<h1>エラーが発生しました。</h1>
				<p>恐れ入りますが、<a href='<s:url action="StartAction"/>'>初め</a>からやり直してください。</p>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>