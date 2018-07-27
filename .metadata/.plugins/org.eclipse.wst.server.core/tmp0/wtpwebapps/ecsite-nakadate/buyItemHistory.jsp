<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/buyItemHistory-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>購入履歴</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main" class="clearfix">

				<div id="top">
						<p>購入履歴</p>
				</div>

				<!-- 購入情報がなければ -->
				<s:if test = "historyList.size() == 0">
						<h2>購入情報はありません</h2>
				</s:if>


				<!-- 購入情報があれば -->
				<s:elseif test = "historyList != null && historyList.size() != 0">

				<!-- ソート -->
				<div>
						<s:form action="BuyItemHistoryAction" name="form">
							<s:if test="sort == 0">
								<select class="sort" id="Sort" name="sort" onchange="submit(this.form)">
										<option value="0" selected>購入日　新しい順</option>
										<option value="1">購入日　古い順</option>
										<option value="2">価格　高い順</option>
										<option value="3">価格　安い順</option>
								</select>
							</s:if>
							<s:elseif test="sort == 1">
								<select class="sort" id="Sort" name="sort" onchange="submit(this.form)">
										<option value="0">購入日　新しい順</option>
										<option value="1" selected>購入日　古い順</option>
										<option value="2">価格　高い順</option>
										<option value="3">価格　安い順</option>
								</select>
							</s:elseif>
							<s:elseif test="sort == 2">
								<select class="sort" id="Sort" name="sort" onchange="submit(this.form)">
										<option value="0">購入日　新しい順</option>
										<option value="1">購入日　古い順</option>
										<option value="2" selected>価格　高い順</option>
										<option value="3">価格　安い順</option>
								</select>
							</s:elseif>
							<s:elseif test="sort == 3">
								<select class="sort" id="Sort" name="sort" onchange="submit(this.form)">
										<option value="0">購入日　新しい順</option>
										<option value="1">購入日　古い順</option>
										<option value="2">価格　高い順</option>
										<option value="3" selected>価格　安い順</option>
								</select>
							</s:elseif>

						</s:form>
				</div>

				<!-- 購入情報 -->
				<div id="itemContainer" class="clearfix">
				<div id="itemUpdateContainer" class="clearfix">

				<s:iterator value="historyList">

					<div id="itemInsert" class="clearfix">
						<div id="itemDetail" class="ratio-1_1">
							<!-- 画像 -->
							<div id="imageContainer">
									<img id ="image" src="<s:property value='itemImage'/>">
							</div>

						</div>

						<!-- 注文日 -->
							<div id="date">
									<p>注文日
											<fmt:parseDate var="date" value="${insertDate}" pattern="yyyy-MM-dd HH:mm:ss.SS" />
											<fmt:formatDate value="${date}" pattern="yyyy年M月d日"/>
									</p>
							</div>


							<!-- 商品名 -->
							<div id="name" class="clearfix">
									<s:property value="itemName"/>
							</div>

							<!-- 金額 -->
							<div class="price">
									<span>価格: &yen; </span>
									<fmt:formatNumber value="${price}" />

									<br>

									<s:property value="count"/>点
							</div>

							<!-- 注文詳細ボタン -->
							<div class="PurchaseDetail">
									<s:form action="PurchaseDetailAction">
											<input type="hidden" name="destinationId" value="${destinationId}">

											<input type="hidden" name="id" value="${id}">

											<input type="submit" class="button" value="注文詳細"/>
									</s:form>
							</div>

							<!-- 削除ボタン -->
							<div class="delete">
									<s:form action="BuyItemHistoryAction">
											<input type="hidden" name="deleteFlg" value="2">
											<input type="hidden" name="id" value="${id}">
											<s:submit id="deleteOneEach" cssClass="button" value="削除" method="deleteOneEach"/>
									</s:form>
							</div>

					</div>



				</s:iterator>
				</div>
				</div>

				</s:elseif>

				<!-- 全件削除ボタン -->
				<s:if test = "historyList.size() != 0">
						<div class="all_delete">
						<s:form action="BuyItemHistoryAction" onSubmit="return allDel()">
								<input type="hidden" name="deleteFlg" value="1">
								<s:submit cssClass="button" id="all_delete" value="履歴を全て削除"/>
						</s:form>
						</div>
				</s:if>

		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>



<script type="text/javascript">
		//全件削除確認
		function allDel(){
			if(window.confirm('全件削除しますか？')){
				return true;
			} else {
				return false;
			}
		}
		//セレクター
		$(function(){
			  $("#submit_select").change(function(){
			    $("#submit_form").submit();
			  });
			});
</script>


</body>
</html>