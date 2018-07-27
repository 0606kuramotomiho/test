<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/home-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>Home画面</title>


</head>
<body>

		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">

				<div id="top">
						<p>Home</p>
				</div>
				<div id="text-center">
						<!-- 購入ボタン -->
						<s:form action="HomeAction">
								<%-- <s:submit value="商品購入"/> --%>
								<a href='<s:url action="StartAction"/>'>商品購入</a>
						</s:form>

						<!-- ログアウト -->
						<s:if test="#session.id != null">
								<p>ログアウトする場合は
								<a href='<s:url action="LogoutAction"/>'>こちら</a>
								</p>
						</s:if>
						<!-- 管理者ログアウト -->
						<s:if test="#session.masterId != null">
								<a href='<s:url action="LogoutAction"/>'>ログアウト</a>
						</s:if>
				</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>