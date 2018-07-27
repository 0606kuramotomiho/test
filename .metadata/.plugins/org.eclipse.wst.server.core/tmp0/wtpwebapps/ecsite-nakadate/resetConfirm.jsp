<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/userUpdateConfirm-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>ユーザー情報変更画面</title>

	<script type="text/javascript">
			function submitAction(url) {
				$('form').attr('action',url);
				$('form').submit();
			}
	</script>

</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">

				<div id="top">
						<p>ユーザー情報変更</p>
				</div>

				<div>
						<h3>変更内容は以下でよろしいですか</h3>

								<s:form action="ResetCompleteAction">

								<div class="member-form-title">

								<!-- 氏名 -->
								<s:if test="session.reset.equals('name')">
								<table>
									<tr>
										<td id="tdLeft">
											名前：
										</td>
										<td id="tdRight">
											<s:property value="familyName"/><s:property value="firstName"/>
											<s:hidden name="familyName" value="%{familyName}"/>
											<s:hidden name="firstName" value="%{firstName}"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											ふりがな：
										</td>
										<td id="tdRight">
											<s:property value="familyNameKana"/><s:property value="firstNameKana"/>
											<s:hidden name="familyNameKana" value="%{familyNameKana}"/>
											<s:hidden name="firstNameKana" value="%{firstNameKana}"/>
										</td>
									</tr>
								</table>

								</s:if>

								<!-- 性別 -->
								<s:elseif test="session.reset.equals('sex')">
								<table>
									<tr>
										<td id="tdLeft">
											性別：
										</td>
										<td id="tdRight">
											<s:if test="sex==0">
											男性
											</s:if>
											<s:else>
											女性
											</s:else>
											<s:hidden name="sex" value="%{sex}"/>
										</td>
									</tr>
								</table>
								</s:elseif>

								<!-- メールアドレス -->
								<s:elseif test="session.reset.equals('email')">
								<table>
									<tr>
										<td id="tdLeft">
											メールアドレス：
										</td>
										<td id="tdRight">
											<s:property value="email"/>
											<s:hidden name="email" value="%{email}"/>
										</td>
									</tr>
								</table>
								</s:elseif>

								<!-- ID -->
								<s:elseif test="session.reset.equals('userId')">
								<table>
									<tr>
										<td id="tdLeft">
											ID：
										</td>
										<td id="tdRight">
											<s:property value="userId"/>
											<s:hidden name="userId" value="%{userId}"/>
										</td>
									</tr>
								</table>
								</s:elseif>

								<!-- 確認ボタン -->
								<div>
									<input type="button" id="button" value="確認" onclick="submitAction('ResetCompleteAction')"/>
								</div>

								</div>
								</s:form>

				</div>


		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>