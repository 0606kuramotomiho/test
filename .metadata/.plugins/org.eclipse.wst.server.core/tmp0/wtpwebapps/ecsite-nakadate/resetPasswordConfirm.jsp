<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/resetPasswordConfirm-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>パスワード再設定確認画面</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">

				<div id="top">
						<p>パスワード再設定確認</p>
				</div>

				<div id="container">
						<h3>登録内容は以下でよろしいですか</h3>

						<s:form action="ResetPasswordCompleteAction" theme="simple">
						<div id="confirmContainer">
						<table>
								<tr>
										<td id="title">
											ID:
										</td>
										<td id="property">
											<s:property value="session.newUserId" escape="false"/>
										</td>
								</tr>
								<tr>
										<td id="title">
											新しいパスワード:
										</td>
										<td id="property">
											<s:property value="reconfirmPassword" escape="false"/>
										</td>
								</tr>
						</table>
						</div>


            			<br>
						<button type="submit">
								<span>送信</span>
						</button>

						</s:form>

				</div>



		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>
