<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/itemPage-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

	<title><s:property value="session.item_detail.itemName"/></title>

	<script>
	//オンロードさせ、リロード時に選択を保持
	window.onload = changeBox;

	jQuery(function($){

		$(function() {
			$('.slider').bxSlider({
			minSlides: 3,
			maxSlides: 3,
			moveSlides: 1,
			slideWidth: 320,
			slideMargin: 10,
			pager:false,
			randomStart:true

			});
		});

	});

    function changeBox(){

    	i = 0;
    	j = 0;
    	k = 0;

		i = document.getElementById('inputItemStock').value;
		num_i = Number(i);
		console.log("在庫は"+num_i);

		j = document.getElementById('inputItemCountInCart').value;
		num_j = Number(j);
		console.log("カート内は"+num_j);

		if(document.getElementById('changeSelect')){
		id = document.getElementById('changeSelect').value;
		num_id = Number(id);

		k = num_id+num_j;

		console.log("追加個数は"+num_id);

		console.log("追加個数 + カート内は"+k)


		if(k <= num_i){
			//フォーム
			document.getElementById('firstBox').style.display = "block";
			document.getElementById('secondBox').style.display = "none";
		}else if(k > num_i){
			//フォーム
			document.getElementById('firstBox').style.display = "none";
			document.getElementById('secondBox').style.display = "block";
		}
		}
	}




  </script>
</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main" class="clearfix">
				<div id="top">
						<p>商品詳細</p>
				</div>

				<s:form id="form" name="form" action="PutItemIntoShoppingCartAction" theme="simple">
				<div class="detail clearfix">


						<!-- 左 -->
						<div class="leftCol">

								<!-- 商品画像 -->
								<s:hidden name="imageFileName"
									value="%{session.item_detail.image_file_name}"/>

								<img class="image" src='<s:property value="session.item_detail.image_file_name"/>'/>
						</div>




						<!-- 中央 -->
						<div class="centerCol">

								<!-- 商品名 -->
								<div class="itemName">
									<s:hidden name="itemId" value="%{session.item_detail.item_id}"/>
									<s:hidden name="itemName" value="%{session.item_detail.itemName}"/>
									<s:property value="session.item_detail.itemName"/>

									<!-- レート -->
									<div class="rate">
											<div class="rate-front" style="width: <s:property value="rating"/>%">★★★★★</div>
											<div class="rate-back">★★★★★</div>
									</div>
								</div>


								<!-- 価格 -->
								<div class="price">
									<s:hidden name="price" value="%{session.item_detail.itemPrice}"/>
									<span class="kakaku">価格:</span><span> &yen; </span>
									<fmt:formatNumber value="${item_detail.itemPrice}"/>

								</div>

								<!-- 在庫表示 -->
								<div>
									<s:if test="session.itemStock == 0">
										<span class="stockZero">一時的に在庫切れ 入荷時期は未定です</span>
									</s:if>

									<s:elseif test="5 > session.itemStock > 0">
										<span class="stockLast">残り<s:property value="session.itemStock"/>点 ご注文はお早めに</span>
									</s:elseif>

									<s:elseif test="session.itemStock > 0">
										<span class="stockOk">在庫あり</span>
									</s:elseif>
								</div>

								<!-- 商品詳細 -->
								<div>
									<s:property value="item_detail.item_description"/>
								</div>

						</div>


						<!-- 右 -->
						<div class="rightCol">

								<!-- 購入個数 -->
								<div class="itemStock">

										<!-- 在庫があれば -->
										<s:if test="session.item_detail.item_stock > 0">

											<!-- 個数選択 -->
											<div class="select">
											<select name="itemCount" id="changeSelect" onchange="changeBox();">

											<script>
													for(i = 1; i <= <s:property value="session.itemStock"/>; i++){
														document.write("<option>");
					 									document.write(i);
														document.write("</option>")
														}
											</script>
											</select>

											<!-- changeBoxにデータを送る -->
											<form name="formItemStock">
													<input type="hidden" id="inputItemStock" value="<s:property value='session.itemStock'/>" >
											</form>

											<form name="formItemCountInCart">
													<input type="hidden" id="inputItemCountInCart" value="<s:property value='session.itemCountInCart'/>" >
											</form>


											</div>

											<!-- ショッピングカートボタン -->
											<div class="shoppingCartButton" id="firstBox">

													<a class="cartButton" href="javascript:void(0)"
													   onclick="document.form.submit();return false;">
													<!-- <i class="fa fa-shopping-cart fa-2x" id="cart-icon"></i> -->
													<span>カートに入れる</span>
													</a>

											</div>
											<!-- 在庫数より多くカートに入れようとすると表示 -->
											<div class="shoppingCartButtonSoldOut" id="secondBox">

													<p class="cartButtonSoldOut">
													   品切れ
													</p>

											</div>
										</s:if>

										<!-- 在庫がなければ -->
										<s:else>
											<div class="shoppingCartButtonSoldOut">

													<p class="cartButtonSoldOut">
													   品切れ
													</p>

											</div>
										</s:else>
								</div>
						</div>
				</div>

				</s:form>

				<div class="relation clearfix">
						<div id="top">
							<p>関連商品</p>
						</div>

						<div class="slider">

						<s:if test="similarInfoList.size() < 1">
							<span>関連商品はありません</span>
						</s:if>


							<s:iterator value="session.similarInfoList">

							<!-- 関連商品ページ -->
							<div id="similarContainer" class="ratio-1_1">


								<!-- URL作成 -->
								<s:url id="url" action="GoItemPageAction">
										<s:param name="id" value="%{item_id}"/>
								</s:url>

								<!-- 画像 -->
								<s:a class="image-container" href="%{url}">
									<img class="imageRelative" src='<s:property value="image_file_name"/>'/>
								</s:a>
								<!-- 商品名 -->
								<s:a class="name" href="%{url}">
										<s:property value="itemName"/>
								</s:a>
								<br>

								<!-- 価格 -->
								<s:a class="price" href="%{url}">
								<span>&yen;</span>
								<fmt:formatNumber value="${itemPrice}"/>
								</s:a>

							</div>

							</s:iterator>


						</div>


				</div>

				<div class="customerReview">
					<div id="top">
						<p>カスタマーレビュー</p>
					</div>

					<s:if test="ratingList.size() > 0">

							<!-- レート -->
							<span class="reviewSize">レビュー数<s:property value="session.ReviewDTOList.size()"/>件</span>
							<div class="rateTop">
								<div class="rate">
										<div class="rate-front" style="width: <s:property value="rating"/>%">★★★★★</div>
										<div class="rate-back">★★★★★</div>
								</div>


								<a href="javascript:void(0)">5つ星のうち<s:property value="averageRateToString"/></a>

							</div>

							<s:iterator value="session.ReviewDTOList">

								<!-- ユーザーID -->
								<div class="userId">
									<s:property value="userId"/>さん
									<div class="date">
											<fmt:parseDate var="date" value="${insertDate}" pattern="yyyy-MM-dd HH:mm:ss.SS" />
											<fmt:formatDate value="${date}" pattern="yyyy年M月d日"/>
									</div>
								</div>

								<!-- レート -->
								<div class="rate">
										<div class="rate-front" style="width: <s:property value="rating"/>%">★★★★★</div>
										<div class="rate-back">★★★★★</div>

										<!-- タイトル -->
										<div class="title">
												<s:property value="title"/>
										</div>


								</div>


								<br>

								<!-- コメント -->
								<div class="comment">
										<s:property value="comment"/>
								</div>
								<br>
								<br>

							</s:iterator>

							<s:form action="GoReviewAction">
							<button type="submit">カスタマーレビューを書く</button>
							</s:form>

					</s:if>

					<s:else>

							<s:form action="GoReviewAction">
							<button type="submit">この商品のレビューはまだありません。<br>レビューを書いてください</button>
							</s:form>

					</s:else>



				</div>

		</div>


		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>