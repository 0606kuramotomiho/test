<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/login-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>ログイン画面</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">
				<div id="top">
						<p>ログイン</p>
				</div>
				<div>
						<!-- ログイン -->

						<s:form action="LoginAction"  theme="simple">

						<div class="errorMessage">
								<s:iterator value="errorMessageList">
										<s:property /><br>
								</s:iterator>
						</div>
						<br>
						<table>
								<tr>
										<td>
											ID:
										</td>
										<td>
											<s:textfield type="text" name="userId" value="%{#session.saveId}" autofocus="autofocus"/>
										</td>
								</tr>
								<tr>
										<td>
											パスワード:
										</td>
										<td>
											<s:password name="password"/>
										</td>
								</tr>
						</table>
						<br>

								<!-- パスワードリセット -->
								<div id="resetPassword">
										<span>パスワードを忘れた場合は</span>
										<a href='<s:url action="ResetPasswordAction"/>'>こちら</a>
								</div>
								<br>
								<!-- SaveID -->
								<div id="saveId">
										<span>次回からIDの入力を省略</span>
										<s:checkbox name="saveLogin"/>
										<s:if test="settlement > 0">
											<s:hidden name="settlement" value="%{settlement}"/>
										</s:if>
								</div>
								<br>
								<br>
								<!-- ログインボタン -->
								<div id="submitButton">
										<s:submit class="logButton" value="ログイン"/>
								</div>

						</s:form>

					<%-- 	<!-- 新規登録 -->
						<div id="text-link">
								<p>新規ユーザー登録は
										<a href='<s:url action="GoUserCreateAction"/>'>こちら</a>
								</p>
						</div> --%>
				</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>