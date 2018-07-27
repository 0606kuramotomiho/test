<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/userCreateConfirm-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>登録内容確認画面</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">
				<div id="top">
						<p>登録内容確認</p>
				</div>
				<div>
						<h3>登録する内容は以下でよろしいですか</h3>
						<table>
								<s:form action="UserCreateCompleteAction" theme="simple">

								<div class="member-form-title">

								<tr>
										<td id="tdLeft">
											<span class="member_form_title">名前:</span>
										</td>
										<td id="tdRight">
											<div class="member_form_text">
												<s:property value="familyName"/>
												<s:hidden name="familyName" value="%{familyName}"/>
												<s:property value="firstName"/>
												<s:hidden name="firstName" value="%{firstName}"/>
											</div>
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											<span class="member_form_title">ふりがな:</span>
										</td>
										<td id="tdRight">
											<div class="member_form_text">
												<s:property value="familyNameKana"/>
										<s:hidden name="familyNameKana" value="%{familyNameKana}"/>
										<s:property value="firstNameKana"/>
										<s:hidden name="firstNameKana" value="%{firstNameKana}"/>
											</div>
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											<span class="member_form_title">ID:</span>
										</td>
										<td id="tdRight">
											<div class="member_form_text">
												<s:property value="userId"/>
												<s:hidden name="userId" value="%{userId}"/>
											</div>
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											<span class="member_form_title">パスワード:</span>
										</td>
										<td id="tdRight">
											<div class="member_form_text">
												<s:property value="password"/>
												<s:hidden name="password" value="%{password}"/>
											</div>
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											<span class="member_form_title">性別:</span>
										</td>
										<td id="tdRight">
											<div class="member_form_text">
												<s:if test="sex==0">
												男性
												</s:if>
												<s:else>
												女性
												</s:else>
												<s:hidden name="sex" value="%{sex}"/>
											</div>
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											<span class="member_form_title">メールアドレス:</span>
										</td>
										<td id="tdRight">
											<div class="member_form_text">
												<s:property value="email"/>
												<s:hidden name="email" value="%{email}"/>
											</div>
										</td>
								</tr>

								</table>

										<br>
										<h4>貴方は利用規約及び個人情報保護方針に同意しました</h4>

										<div class="button">
												<button type="submit" id="button">登録情報を確定</button>
										</div>

										<br>

										<div>
											<span>前画面に戻る場合は</span>
												<a href="/nakazon/userCreate.jsp">こちら</a>
										</div>

								</div>
								</s:form>

				</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>