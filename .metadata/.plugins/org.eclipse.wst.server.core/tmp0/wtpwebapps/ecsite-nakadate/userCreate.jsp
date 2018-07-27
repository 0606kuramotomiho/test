<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/userCreate-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>ユーザー情報入力画面</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">
				<div id="top">
						<p>アカウント新規登録</p>
				</div>

				<div>

						<div class="error">
								<s:iterator value="errorMessageList">
										<s:property /><br>
								</s:iterator>
						</div>

								<s:form action="CheckUserInfoAction" theme="simple">
								<table>
								<tr>
										<td>
											<span class="member_form_title">姓</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="member_form_text">
												<s:textfield name="familyName" value="%{familyName}"/>
											</div>
										</td>
								</tr>
								<tr>
										<td>
											<span class="member_form_title">名</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="member_form_text">
												<s:textfield name="firstName" value="%{firstName}"/>
											</div>
										</td>
								</tr>
								<tr>
										<td>
											<span class="member_form_title">姓ふりがな</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="member_form_text">
														<s:textfield name="familyNameKana" value="%{familyNameKana}"/>
												</div>
										</td>
								</tr>
								<tr>
										<td>
											<span class="member_form_title">名ふりがな</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="member_form_text">
														<s:textfield name="firstNameKana" value="%{firstNameKana}"/>
												</div>
										</td>
								</tr>
								<tr>
										<td>
											<span class="member_form_title">ユーザーID</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="member_form_text">
														<s:textfield name="userId" value="%{userId}"/>
												</div>
										</td>
								</tr>
								<tr>
										<td>
											<span class="member_form_title">パスワード</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="member_form_text">
														<s:textfield name="password" value="%{password}"/>
												</div>
										</td>
								</tr>
								<tr>
										<td>
											<span class="member_form_title">性別</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="member_form_radio">
														<s:radio name="sex" list="#{'0': '男性　　', '1': '女性'}" value="0"/>
												</div>
										</td>
								</tr>
								<tr>
										<td>
											<span class="member_form_title">メールアドレス</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="member_form_text">
														<s:textfield name="email" value="%{email}"/>
											</div>
										</td>
								</tr>
								<tr>
										<td>
											<span class="member_form_title">利用規約および<br>個人情報保護方針</span>
											<span class="mandatory">必須</span>
										</td>
										<td>
											<div class="personal">
														<h3>利用規約</h3>
														<p>利用規約です</p><br><p>利用規約です</p><br><p>利用規約です</p>
														<h3>個人情報保護方針</h3>
														<p>個人情報を守ります</p><br><p>個人情報を守ります</p><br><p>個人情報を守ります</p><br>
												</div>
										</td>
								</tr>

								</table>



								<s:checkbox name="personal" value="true"/>
								上記の利用規約および個人情報保護方針に同意する
								<br>
								<br>

								<div class="button">
										<button type="submit" id="button">登録情報を確認</button>
								</div>

								<br>
								</s:form>

						<%-- <div>
								<span>前画面に戻る場合は</span>
								<a href='<s:url action="HomeAction"/>'>こちら</a>
						</div> --%>
				</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>