<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/destinationInsert-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>宛先情報更新画面</title>

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
						<p>宛先情報入力</p>
				</div>

				<div>
						<div class="insert_box">
								<div class="member">
										<!-- エラーメッセージ -->
										<s:iterator value="errorMessageList">
												<s:property />
										</s:iterator>

										<br>
										<s:form action="DestinationUpdateAction"  theme="simple">
										<s:iterator value="destinationList">

										<div class="member_form">

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
														<span class="member_form_title">電話番号</span>
														<span class="mandatory">必須</span>
													</td>
													<td>
														<div class="member_form_text">
														<s:textfield name="telNumber" value="%{telNumber}"/>
														</div>
													</td>
												</tr>

												<tr>
													<td>
														<span class="member_form_title">住所</span>
														<span class="mandatory">必須</span>
													</td>
													<td>
														<div class="member_form_text">
														<s:textfield name="userAddress" value="%{userAddress}"/>
														</div>
													</td>
												</tr>
										</table>

												<br>
												<!-- <div class="member_btn"> -->
														<button type="submit" class="button">宛先情報更新</button>

												<!-- </div> -->
										</div>
										<input type="hidden" name="id" value="<s:property value="id"/>"/>
									</s:iterator>

									</s:form>



									<%-- <s:form action="ResetAction">
										<input type="button" id="button" value="宛先情報更新" onclick="submitAction('DestinationUpdateAction')"/>
										<button type='submit' name='reset' value='destination' class="button">戻る</button>
									</s:form> --%>

								</div>
						</div>
				</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>