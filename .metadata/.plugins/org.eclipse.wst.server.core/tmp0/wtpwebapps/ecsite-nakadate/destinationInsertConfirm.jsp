<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/destinationInsertConfirm-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>宛先情報確認画面</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">

				<div id="top">
						<p>宛先情報確認</p>
				</div>

				<div>
						<div class="insert_box">
								<div class="member">
									<s:form action="DestinationInsertCompleteAction" theme="simple">

										<div class="member_form">

										<h3>以下の内容でよろしいでしょうか</h3>

										<table>
												<tr>
													<td id="tdLeft">
														名前:
													</td>
													<td id="tdRight">
														<s:property value="familyName"/>
														<s:hidden name="familyName" value="%{familyName}" />

														<s:property value="firstName"/>
														<s:hidden name="firstName" value="%{firstName}" />
													</td>
												</tr>

												<tr>
													<td id="tdLeft">
														ふりがな:
													</td>
													<td id="tdRight">
														<s:property value="familyNameKana"/>
														<s:hidden name="familyNameKana" value="%{familyNameKana}" />

														<s:property value="firstNameKana"/>
														<s:hidden name="firstNameKana" value="%{firstNameKana}" />
													</td>
												</tr>

												<tr>
													<td id="tdLeft">
														メールアドレス:
													</td>
													<td id="tdRight">
														<s:property value="email"/>
														<s:hidden name="email" value="%{email}" />
													</td>
												</tr>

												<tr>
													<td id="tdLeft">
														電話番号:
													</td>
													<td id="tdRight">
														<s:property value="telNumber"/>
														<s:hidden name="telNumber" value="%{telNumber}" />
													</td>
												</tr>

												<tr>
													<td id="tdLeft">
														住所:
													</td>
													<td id="tdRight">
														<s:property value="userAddress"/>
														<s:hidden name="userAddress" value="%{userAddress}" />
													</td>
												</tr>

										</table>
										<br>

												<div class="member_btn">
														<button type="submit" class="button">登録情報確定</button>
												</div>

										</div>
										<br>

<!--
										<div class="return">
											<a href="/nakazon/destinationInsert.jsp">戻る</a>
										</div> -->
								</div>

									</s:form>

								</div>
						</div>
				</div>


		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>