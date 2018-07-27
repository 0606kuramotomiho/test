<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/destinationChange.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>宛先変更画面</title>


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
						<p>宛先変更</p>
				</div>


				<!-- 宛先情報 -->
				<!-- <div class="destinationContainer clearfix"> -->


				<s:iterator value="session.destinationList">
					<div id="destinationContainer" class="clearfix">
								<div id="destinationTitle">
								<table>
								<tr>
									<td>　
									</td>
								</tr>
								<tr>
									<td>　
									</td>
								</tr>
								<tr>
									<td>
										<s:if test="id == 1">
										<input type="radio" name="destinationId" value="<s:property value="id"/>" checked="checked"/>
									</s:if>
									<s:else>
										<input type="radio" name="destinationId" value="<s:property value="id"/>"/>
										<input type="hidden" value="<s:property value="id"/>" >
									</s:else>
									</td>
								</tr>
								<tr>
									<td>　
									</td>
								</tr>
								<tr>
									<td>　
									</td>
								</tr>
								</table>

								</div>
								<div id="destinationDetail">
								<div id="destinationDetail2">
								<table>
									<tr>
										<td id="tdLeft">
											ふりがな：
										</td>
										<td id="tdRight">
											<s:property value="familyNameKana"/>
											<s:property value="firstNameKana"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											名前：
										</td>
										<td id="tdRight">
											<s:property value="familyName"/>
											<s:property value="firstName"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											住所：
										</td>
										<td id="tdRight">
											<s:property value="userAddress"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											電話番号：
										</td>
										<td id="tdRight">
											<s:property value="telNumber"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											メールアドレス：
										</td>
										<td id="tdRight">
											<s:property value="email"/>
										</td>
									</tr>
								</table>
								</div>
								</div>
								</div>

				</s:iterator>
				<br>
				<s:form action="DestinationChangeAction">
				<div id="formContainer">

					<button type='submit' name='action' value='change' class="button">宛先の変更</button>

				</div>
				</s:form>


				<!-- </div> -->

				<%-- <div class="box2">
					<div class="btn_1">
					<div id="formContainer">
						<s:form action="GoDestinationInsertAction">
							<s:submit cssClass="button" value="宛先情報の新規登録"/>
							<input type="hidden" name="where" value="fromDestinationChange"/>
						</s:form>
						</div>

					</div>


				</div> --%>
		</div>


		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>