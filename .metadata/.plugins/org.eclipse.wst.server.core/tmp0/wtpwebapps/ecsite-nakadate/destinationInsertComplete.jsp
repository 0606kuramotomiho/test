<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/buyItemComplete-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>宛先情報登録完了画面</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">

				<div id="top">
						<p>宛先情報登録完了</p>
				</div>

				<div>
						<p>宛先情報の登録が完了致しました。</p>
						<div class="button">

						<s:if test="settleFlg == true">
								<a href='<s:url action="BuyItemAction"/>'>
										決済画面へ</a>
						</s:if>

						<%-- <s:if test="session.where.equals('fromDestinationInsert')">
								<a href='<s:url action="GoDestinationChangeAction"/>'>
										宛先変更画面へ</a>
						</s:if> --%>

						<s:if test="session.where.equals('fromDestinationInsert')">
								<a href='<s:url action="MyPageAction"/>'>
										マイページへ</a>
						</s:if>


						</div>
				</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>