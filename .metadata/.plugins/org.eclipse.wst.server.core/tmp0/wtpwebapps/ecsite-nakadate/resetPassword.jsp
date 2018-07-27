<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/resetPassword-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>パスワード再設定画面</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">

				<div id="top">
						<p>パスワード再設定</p>
				</div>

				<div id="container">

						<div class="error">
								<s:iterator value="errorMessageList">
										<s:property /><br>
								</s:iterator>
						</div>

						<s:form action="ResetPasswordConfirmAction" theme="simple">

						<table>
								<tr>
										<td>
											ID:
										</td>
										<td>
											<input type="text" autofocus name="userId" value="" placeholder="IDを入力">
										</td>
								</tr>
								<tr>
										<td>
											新しいパスワード:
										</td>
										<td>
											<input type="password" name="password" value="" placeholder="パスワードを入力">
										</td>
								</tr>
								<tr>
										<td>
											確認パスワード:
										</td>
										<td>
											<input type="password" name="confirmPassword" value="" placeholder="再入力してください">
										</td>
								</tr>
						</table>


						<br>

						<button type="submit">確認画面へ</button>

						</s:form>

						<br>

						<div class=link>
								<s:form action="MyPageAction" class="button">
									<button type="submit">マイページに戻る</button>
								</s:form>
						</div>

				</div>



		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>