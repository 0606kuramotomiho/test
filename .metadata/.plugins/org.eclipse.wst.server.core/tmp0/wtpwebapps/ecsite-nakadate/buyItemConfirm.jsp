<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/buyItemConfirm-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>購入確認画面</title>


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
						<p>購入手続き</p>
				</div>

				<s:form action="BuyItemConfirmAction" theme="simple">
				<!-- 左 -->
				<div id="leftContainer">

						<s:iterator value="cartList">
						<div id="itemDetail">
							<!-- URL作成 -->
								<s:url id="url" action="GoItemPageAction">
										<s:param name="id" value="%{item_id}"/>
								</s:url>

							<!-- 画像 -->
							<div class="imageContainer">
									<img id ="image" src="<s:property value='image_file_name'/>">
							</div>

							<!-- 商品名 -->
							<div class="name">
									<s:property value="itemName"/>
							</div>


							<!-- 金額 -->
							<div class="price">
									<span class="kakaku">価格: </span><span class="yen">&yen;
									<fmt:formatNumber value="${price}" /></span>
							</div>

							<!-- 個数 -->
							<div class="count">
									<s:property value="itemCount"/>点
							</div>
						</div>
						<s:hidden name="itemCountList" value="%{itemCount}"/>
						<s:hidden name="itemIdList" value="%{itemId}"/>
						</s:iterator>

				</div>

				<!-- 右 -->
				<div id="rightContainer">
					<h3>合計：<span class="yen">&yen; <fmt:formatNumber value="${totalPrice}" /></span></h3>

					<!-- 宛先情報 -->
					<div class="destinationContainer clearfix">
						<s:iterator value="destinationInfoListDTO">
							<div class="box">
								<div class="destination_title">
									<label>
									<s:if test="id == 1">
										<input type="radio" name="destinationId" value="${id}"  checked="checked"/>
									</s:if>
									<s:else>
										<input type="radio" name="destinationId" value="${id}"/>
									</s:else>
									お届け先
									</label>
								</div>

								<div class="destination_box">
									ふりがな:
									<s:property value="familyNameKana"/>
									<s:property value="firstNameKana"/>
									<br>
									名前:
									<s:property value="familyName"/>
									<s:property value="firstName"/>
									<br>
									住所:
									<s:property value="userAddress"/>
									<br>
									電話番号:
									<s:property value="telNumber"/>
									<br>
									メールアドレス:
									<s:property value="email"/>
									<br>
								</div>
							</div>

						</s:iterator>
						<!-- <div class="button">
							<input type="submit" value="購入"/>
						</div> -->
						</s:form>
					</div>

					<div class="box2">
						<div class="btn_1">
							<input type="button" id="button" value="宛先情報の新規登録" onclick="location.href='<s:url action="GoDestinationInsertAction"/>'">

						</div>
						<br>
						<table>
						<tr>
								<td><input type="button" id="button" value="カートに戻る" onclick="submitAction('GoCartAction')"/>
								</td>

								<td><input type="button" id="button" value="購入" onclick="submitAction('BuyItemConfirmAction')"/>
								</td>
						</tr>
						</table>

					</div>
				</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>