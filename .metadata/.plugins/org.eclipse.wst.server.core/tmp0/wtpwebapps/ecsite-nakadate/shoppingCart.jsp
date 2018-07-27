<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/shoppingCart-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
	<title>ショッピングカート</title>

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

		<div id="main"  class="clearfix">

				<div id="top">
						<p>ショッピングカート</p>
				</div>

				<div id="Container" class="clearfix">

					<!-- カートに商品が入っていなければ表示 -->
					<s:if test="cartList.isEmpty()">
							<p class="message">カートの中は空です</p>
					</s:if>

					<!-- カート中身 -->
					<div id="itemContainer" class="clearfix">

						<div>
							<s:iterator value="cartList">

								<!-- 商品詳細ページURL作成 -->
								<div id="itemDetail"  class="ratio-1_1">

										<!-- URL作成 -->
										<s:url id="url" action="GoItemPageAction">
												<s:param name="id" value="%{itemId}"/>
										</s:url>

										<!-- リンク -->
										<s:a class="image-container" href="%{url}">
												<img  id="image" src='<s:property value="image_file_name"/>' alt="画像なし"/>
										</s:a>

										<s:a class="link" href="%{url}">
												<s:property value="itemName"/>
												<s:hidden name="itemIdList" value="%{itemId}"/>
										</s:a>

										<!-- 価格 -->
										<span>&yen;</span>
										<span id="kakaku"><s:property value="Price"/></span>
										<br>

										<!-- 購入個数 -->
										<span>個数</span>
										<s:property value="ItemCount"/>
										<s:hidden name="itemCountList" value="%{itemCount}"/>
										<span>個</span>

										<!-- 削除ボタン -->
										<div class="delete">
												<s:form action="CartDeleteAction">
														<a href='<s:url action="CartDeleteAction">
																<s:param name="itemId" value="itemId"></s:param>
																</s:url>'>
																削除</a>

												</s:form>
										</div>

								</div>


							</s:iterator>
						</div>

					</div>
					<!-- カートここまで -->

					<!-- カートに商品が入っていれば表示 -->
					<s:else>


					<!-- 合計金額 -->
					<div class="totalprice">
							<span>合計金額<br>&yen;</span>
							<!-- JSTLのfmt使用 金額に合わせて,を付随 -->
							<span id="kakaku"><fmt:formatNumber value="${totalPrice}"/></span>
					</div>
					<!-- 合計金額ここまで -->

					<br>

					<!-- 決済 -->
					<s:if test="! cartList.isEmpty()">
							<div class="settlement_btn">
									<%-- <a href ='<s:url action="BuyItemAction"/>'>決済画面へ</a> --%>
									<input type="button" id="button" value="決済画面へ" onclick="submitAction('BuyItemAction')"/>
							</div>

					</s:if>
					<!-- 決済ここまで -->

					</s:else>

				</div>


		</div>

		<script language="JavaScript">
				//キー制御
				function keydown() {

						//F5キー制御
						if(event.keyCode == 116){
							event.keyCode = 0;
							return false;
						}
						//Backspaceキー制御
						if(event.keyCode == 8){
							event.keyCode = 0;
							return false;
						}
						//十字キー制御
						if(event.keyCode >= 37 && event.keyCode <= 40){
							event.keyCode = 0;
							return false;
						}
						//Altキー制御
						if(event.keyCode == 18){
							event.keyCode = 0;
							return false;
						}

				}
				//何かキーが押下されると実行
				window.document.onkeydown = keydown;

		</script>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>