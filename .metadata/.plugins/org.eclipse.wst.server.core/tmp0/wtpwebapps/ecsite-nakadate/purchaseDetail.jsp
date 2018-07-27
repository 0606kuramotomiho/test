<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/purchaseDetail-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>注文詳細</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main" class="clearfix">

				<div id="top">
						<p>注文詳細</p>
				</div>


				<!-- 注文詳細 -->
				<div id="itemContainer" class="clearfix">

				<div id="purchaseLeft">
				<s:iterator value="session.purchaseDetailList">

						<div id="itemDetail">



							<!-- 画像 -->

									<img  src="<s:property value='itemImage'/>">


						</div>
						<!-- 注文日 -->
							<div id="date">
									<p>
											<fmt:parseDate var="date" value="${insertDate}" pattern="yyyy-MM-dd HH:mm:ss.SS" />
											<fmt:formatDate value="${date}" pattern="yyyy年M月d日 HH:mm"/>
											ご注文分
									</p>
							</div>
						<!-- 金額 -->
							<div class="price">
									<span>価格: &yen; </span>
									<fmt:formatNumber value="${price}" />

									<br>

									<s:property value="count"/>点
							</div>



				</s:iterator>

				</div>

				<div id="purchaseRight">

				<!-- 宛先情報 -->
				<div class="destinationContainer clearfix">

				<s:if test="message != null">
					<s:property value="message"/>
				</s:if>

				<s:form theme="simple">
				<h3>お届け先</h3>
				<s:iterator value="session.destinationList">
					<div class="box">

						<div class="destination_box">

							<table>
								<tr>
									<td id="tdLeft">
										名前:
									</td>
									<td id="tdRight">
										<s:property value="familyName"/>
										<s:property value="firstName"/>
									</td>
								</tr>

								<tr>
									<td id="tdLeft">
										ふりがな:
									</td>
									<td id="tdRight">
										<s:property value="familyNameKana"/>
										<s:property value="firstNameKana"/>
									</td>
								</tr>

								<tr>
									<td id="tdLeft">
										メールアドレス:
									</td>
									<td id="tdRight">
										<s:property value="email"/>
									</td>
								</tr>

								<tr>
									<td id="tdLeft">
										電話番号:
									</td>
									<td id="tdRight">
										<s:property value="telNumber"/>
									</td>
								</tr>

								<tr>
									<td id="tdLeft">
										住所:
									</td>
									<td id="tdRight">
										<s:property value="userAddress"/>
									</td>
								</tr>

							</table>

						</div>
					</div>

				</s:iterator>
				</s:form>

				</div>
				<br>
				<s:form action="GoDestinationChangeAction">
						<s:submit cssClass="button" value="お届け先の変更"/>
				</s:form>

				</div>

				</div>


				<%-- <!-- マイページに戻る -->
				<!-- <div class=link> -->
						<s:form action="BuyItemHistoryAction" class="button">
							<s:submit value="購入履歴に戻る"/>
						</s:form>
				<!-- </div> --> --%>
		</div>


</body>
</html>