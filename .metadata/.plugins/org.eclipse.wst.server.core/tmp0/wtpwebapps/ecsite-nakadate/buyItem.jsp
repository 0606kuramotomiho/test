<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/buyItem-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>


	<title>商品一覧</title>



	<script type="text/javascript">
			function submitAction(url) {
				$('form').attr('action',url);
				$('form').submit();
			}

			//スライダー
			jQuery(function($){
				$(function() {
					$('.slider').bxSlider({
/* 					minSlides: 3,
					maxSlides: 3, */
					auto: true,
					moveSlides: 1,
					slideWidth: 1200,
					/* slideMargin: 10, */
					controls:false,
					pager:false,
					randomStart:true
					});
				});
			});

	</script>

</head>



<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main" class="clearfix">

				<s:if test="pages == 1">
				<div id="slider">
					<ul class="slider">
						<!-- 包丁 -->
						<s:url id="url" action="GoItemPageAction">
							<s:param name="id" value="16"/>
						</s:url>
						<s:a class="image-container" href="%{url}">
							<li>
								<img src="./image/slide2.png" class="sliderImage">
							</li>
						</s:a>
						<!-- 美容健康カテゴリー -->
						<s:url id="url2" action="ItemSearchAction">
							<s:param name="categoryId" value="5"/>
							<s:param name="searchWord"></s:param>
						</s:url>
						<s:a class="image-container" href="%{url2}">
							<li>
								<img src="./image/slide1.png" class="sliderImage">
							</li>
						</s:a>
						<!-- カテゴリー文房具 -->
						<s:url id="url3" action="ItemSearchAction">
							<s:param name="categoryId" value="2"/>
							<s:param name="searchWord"></s:param>
						</s:url>
						<s:a class="image-container" href="%{url3}">
							<li>
								<img src="./image/slide3.png" class="sliderImage">
							</li>
						</s:a>
					</ul>

				</div>

				<div id="categoryContainer">
					<s:url id="category1" action="ItemSearchAction">
						<s:param name="categoryId" value="2"/>
						<s:param name="searchWord"></s:param>
					</s:url>
					<s:a href="%{category1}">
						<div class="categories cate1">
							<span class="categoriesTitle">文房具</span>
							<span class="categoriesComment">鉛筆・シャーペン・消しゴムなど<br>多くの文具をご用意</span>
							<br>
							<img src="./image/category1.jpg">
						</div>
					</s:a>
					<s:url id="category2" action="ItemSearchAction">
						<s:param name="categoryId" value="3"/>
						<s:param name="searchWord"></s:param>
					</s:url>
					<s:a href="%{category2}">
						<div class="categories cate2">
							<span class="categoriesTitle">生活雑貨</span>
							<span class="categoriesComment">幅広い品ぞろえの生活雑貨を<br>いつでもお手頃な価格で</span>
							<br>
							<img src="./image/category2.jpg">
						</div>
					</s:a>
					<s:url id="category3" action="ItemSearchAction">
						<s:param name="categoryId" value="4"/>
						<s:param name="searchWord"></s:param>
					</s:url>
					<s:a href="%{category3}">
						<div class="categories cate3">
							<span class="categoriesTitle">調理器具</span>
							<span class="categoriesComment">鍋・フライパン・調理用品<br>サンドイッチメーカーまで</span>
							<br>
							<img src="./image/category3.jpg">
						</div>
					</s:a>
					<s:url id="category4" action="ItemSearchAction">
						<s:param name="categoryId" value="5"/>
						<s:param name="searchWord"></s:param>
					</s:url>
					<s:a href="%{category4}">
						<div class="categories cate4">
							<span class="categoriesTitle">美容健康</span>
							<span class="categoriesComment">いつまでも若々しくあるために<br>日頃のお手入れを</span>
							<br>
							<img src="./image/category4.jpg">
						</div>
					</s:a>
				</div>
				</s:if>

				<s:if test="pages > 1">
				<div id="top">
						<p>商品一覧</p>
				</div>
				</s:if>

				<div id="Container" class="clearfix">

					<!-- 商品一覧 -->
					<div id="itemContainer" class="clearfix">

						<div>

							<s:iterator value="session.arr">

							<!-- 商品詳細ページ -->
							<div id="itemDetail"  class="ratio-1_1">
									<!-- URL作成 -->
									<s:url id="url" action="GoItemPageAction">
											<s:param name="id" value="%{item_id}"/>
									</s:url>

									<!-- リンク -->
									<s:a class="image-container" href="%{url}">
											<!-- 画像 -->
											<img  id="image" src='<s:property value="image_file_name"/>' alt="画像なし"/>

									</s:a>

									<!-- 商品名 -->
									<s:a class="name" href="%{url}">
											<s:property value="itemName"/>
									</s:a>

									<!-- 価格 -->
									<s:a class="price" href="%{url}">
									<span>&yen;</span>
									<fmt:formatNumber value="${itemPrice}"/>
									</s:a>

							</div>

								</s:iterator>
						</div>



					<!-- ページング -->
					<div id="paging">

						<!--
						minPages:1
						#pages:iteratorページ数
						pages:現在のページ
						maxPages:最大ページ数
						 -->

						<!-- 前へURL作成 -->
						<s:url id="urlPrev" action="StartAction">
								<s:param name="pages" value="pages- 1"/>
						</s:url>
						<s:if test="pages != 1">
							<s:a href="%{urlPrev}">前へ</s:a>
						</s:if>

							<s:iterator value="#session.pageList" var="pages">

								<!-- URL作成 -->
								<s:url id="url" action="StartAction">
										<s:param name="pages" value="#pages"/>
								</s:url>

								<!-- 1ページ目 -->
								<s:if test="pages == 1">
									<!-- 3までは表示 -->
									<s:if test="#pages <= 3">
										<!-- 表示ページと一致していたらリンク消す -->
										<s:if test="pages == #pages">
											<span class="thisPage"><s:property value="pages"/></span>
										</s:if>
										<s:else>
											<s:a href="%{url}"><s:property value="#pages"/></s:a>
										</s:else>
									</s:if>
									<!-- 4以降は省略 -->
									<s:if test="#pages == 4">
										<span class="ten">･･･</span>
									</s:if>

									<s:if test="#pages == maxPages">
										<s:a href="%{url}"><s:property value="#pages"/></s:a>
									</s:if>
								</s:if>

								<!-- 2から最大ページ-1 -->
								<s:elseif test="pages > 1 && pages < maxPages">

									<s:if test="pages > 2 && pages < maxPages -1">
										<s:if test="#pages == 1">
											<s:a href="%{url}"><s:property value="#pages"/></s:a>
										</s:if>
										<s:elseif test="#pages == 2">
											<span class="ten">･･･</span>
										</s:elseif>
										<s:elseif test="#pages == maxPages -1">
											<span class="ten">･･･</span>
										</s:elseif>
										<s:elseif test="#pages == pages">
											<!-- 表示ページと一致していたらリンク消す -->
											<span><s:property value="pages"/></span>
										</s:elseif>
										<s:elseif test="#pages > pages -1 || #pages < pages +1">
											<s:a href="%{url}"><s:property value="#pages"/></s:a>
										</s:elseif>

									</s:if>

									<!-- 2ページ目 -->
									<s:elseif test="pages == 2">
										<s:if test="#pages >= 1 && #pages < maxPages -1">
												<!-- 表示ページと一致していたらリンク消す -->
												<s:if test="pages == #pages">
													<span class="thisPage"><s:property value="pages"/></span>
												</s:if>
												<s:else>
													<s:a href="%{url}"><s:property value="#pages"/></s:a>
												</s:else>
										</s:if>
										<s:elseif test="#pages == maxPages">
											<s:a href="%{url}"><s:property value="#pages"/></s:a>
										</s:elseif>
										<s:else>
											<span>･･･</span>
										</s:else>
									</s:elseif>

									<!-- 最大ページ-1 -->
									<s:elseif test="pages == maxPages -1">
										<s:if test="#pages == 1">
											<s:a href="%{url}"><s:property value="#pages"/></s:a>
										</s:if>
										<s:elseif test="#pages >= maxPages -2">
												<!-- 表示ページと一致していたらリンク消す -->
												<s:if test="pages == #pages">
													<span class="thisPage"><s:property value="pages"/></span>
												</s:if>
												<s:else>
													<s:a href="%{url}"><s:property value="#pages"/></s:a>
												</s:else>
										</s:elseif>
										<s:elseif test="#pages == maxPages -3">
											<span class="ten">･･･</span>
										</s:elseif>
									</s:elseif>

								</s:elseif>

								<!-- 最大ページ -->
								<s:elseif test="pages == maxPages">
									<s:if test="#pages == 1">
										<s:a href="%{url}"><s:property value="#pages"/></s:a>
									</s:if>

									<s:if test="#pages == maxPages -3">
										<span class="ten">･･･</span>
									</s:if>
									<s:if test="#pages >= maxPages -2">
											<!-- 表示ページと一致していたらリンク消す -->
											<s:if test="pages == #pages">
												<span class="thisPage"><s:property value="pages"/></span>
											</s:if>
											<s:else>
												<s:a href="%{url}"><s:property value="#pages"/></s:a>
											</s:else>
									</s:if>
								</s:elseif>

							</s:iterator>

						<!-- 次へURL作成 -->
						<s:url id="urlNext" action="StartAction">
									<s:param name="pages" value="pages +1"/>
							</s:url>
						<s:if test="pages != maxPages">
							<s:a href="%{urlNext}">次へ</s:a>
						</s:if>



					</div>

				</div>

				</div>



		</div>
<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>


</html>