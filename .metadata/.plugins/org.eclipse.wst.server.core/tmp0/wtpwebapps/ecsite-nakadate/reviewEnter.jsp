<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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

	<title>レビュー投稿画面</title>


</head>
<body>
		<!-- ヘッダー -->
		<jsp:include page="includeHeader.jsp"/>

		<div id="main">

				<div id="top">
						<p>お客様のレビュー</p>
				</div>

				レビューを入力してください

				<div>
						<s:if test="message != null">
								<s:property value="message"/>
						</s:if>
						<div>
								<form action="ReviewAction">
								<div class="evaluation">
										<input id="star1" type="radio" name="star" value="5" />
										<label for="star1">★</label>
										<input id="star2" type="radio" name="star" value="4" />
										<label for="star2">★</label>
										<input id="star3" type="radio" name="star" value="3" />
										<label for="star3">★</label>
										<input id="star4" type="radio" name="star" value="2" />
										<label for="star4">★</label>
										<input id="star5" type="radio" name="star" value="1" />
										<label for="star5">★</label>
								</div>

								<div class="title">
										<input type="text" name="title" placeholder="レビューの見出し"/>
								</div>

								<br>

								<div class="comment">
										<s:textarea name="comment" col="51" row="5" placeholder="ここに商品のレビューを記入"></s:textarea>
								</div>

								<br>
								<input type="submit" id="button" value="送信"/>
								</form>

						</div>
				</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>