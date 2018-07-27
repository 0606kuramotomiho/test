<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<link rel="stylesheet" type="text/css" href="./CSS/userUpdate-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
<title>ユーザー情報変更画面</title>
</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">
				<div id="top">
						<p>ユーザー情報変更</p>
				</div>

				<div>
						<%-- <s:if test="errorMessage != ''">
								<s:property value="errorMessage" escape="false"/>
						</s:if> --%>

						<s:iterator value="errorMessageList">
								<s:property />
						</s:iterator>
						<table>
								<s:form action="UserUpdateAction" theme="simple">

										<!-- <tr>
												<td>
														<label>ログインID：</label>
												</td>
												<td>
														<input type="text" name="loginUserId" value=""/>
												</td>
										</tr>
										<tr>
												<td>
														<label>ログインPASS：</label>
												</td>
												<td>
														<input type="text" name="loginPassword" value=""/>
												</td>
										</tr>
										<tr>
												<td>
														<label>ユーザー名：</label>
												</td>
												<td>
														<input type="text" name="userName" value=""/>
												</td>
										</tr> -->

										<span class="member_form_title">姓</span><span class="mandatory">必須</span>
												<div class="member_form_text">
														<s:textfield name="familyName" value="%{familyName}" placeholder="<s:property value=''/>"/>
												</div>
												<br>

												<span class="member_form_title">名</span><span class="mandatory">必須</span>
												<div class="member_form_text">
														<s:textfield name="firstName" value="%{firstName}"/>
												</div>
												<br>

												<span class="member_form_title">姓ふりがな</span><span class="mandatory">必須</span>
												<div class="member_form_text">
														<s:textfield name="familyNameKana" value="%{familyNameKana}"/>
												</div>
												<br>

												<span class="member_form_title">名ふりがな</span><span class="mandatory">必須</span>
												<div class="member_form_text">
														<s:textfield name="firstNameKana" value="%{firstNameKana}"/>
												</div>
												<br>

												<span class="member_form_title">ユーザーID</span><span class="mandatory">必須</span>
												<div class="member_form_text">
														<s:textfield name="userId" value="%{userId}"/>
												</div>
												<br>

												<span class="member_form_title">パスワード</span><span class="mandatory">必須</span>
												<div class="member_form_text">
														<s:textfield name="password" value="%{password}"/>
												</div>
												<br>

												<span class="member_form_title">性別</span><span class="mandatory">必須</span>
												<div class="member_form_radio">
														<s:radio name="sex" list="#{'0': '男性　　', '1': '女性'}" value="0"/>
												</div>
												<br>

												<span class="member_form_title">メールアドレス</span><span class="mandatory">必須</span>
												<div class="member_form_text">
														<s:textfield name="email" value="%{email}"/>
												</div>
												<br>


												<br>

												<div class="button">
														<button type="submit">登録情報を確認</button>
												</div>
								</s:form>
						</table>
						<div>
								<span>前画面に戻る場合は</span>
								<a href='<s:url action="MyPageAction"/>'>こちら</a>
						</div>
				</div>

				<%-- <div>
						<s:if test="errorMessage != ''">
							<h3><s:property value="errorMessage" escape="false"/></h3>
						</s:if>

						<s:form action="UserUpdateAction">

							<tr>
									<td>ログインID：</td>

									<td>
										<input type="text" name="loginUserId" value="<s:property value="session.loginUser.loginId"/>"/>
									</td>
							</tr>

							<tr>
									<td>
										<br>
									</td>
							</tr>

							<tr>
									<td>
										<label>ログインパスワード：</label>
									</td>

									<td>
										<input type="text" name="loginPassword" value="<s:property value="session.loginUser.loginPassword"/>"/>
									</td>
							</tr>

							<tr>
									<td>
										<br>
									</td>
							</tr>

							<tr>
									<td>
										<label>ユーザー名：</label>
									</td>
									<td>
										<input type="text" name="userName" value="<s:property value="session.loginUser.userName"/>"/>
									</td>
							</tr>

							<tr>
									<td>
										<br>
									</td>
							</tr>

							<s:submit value="変更"/>
						</s:form>
				</div> --%>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>