<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/itemDelete-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>商品削除画面</title>

	<script type="text/javascript">
	function submitAction(url) {
		$('form').attr('action', url);
		$('form').submit();
	}
	</script>


</head>
<body>
	<!-- ヘッダー -->
	<jsp:include page="includeHeader.jsp"/>

		<div id="main">

				<div id="top">
						<p>商品削除</p>
				</div>

				<div id="itemUpdateContainerWrapper">
					<div id="itemUpdateContainer" class="clearfix">
						<s:form action="ItemDeleteAction">
								<s:iterator value="session.itemList">

								<div id="itemInsert" class="clearfix">
								<div id="itemDetail" class="ratio-1_1">

										<!-- 画像 -->
										<div class="image-container">
										<img  id="image" src='<s:property value="image_file_name"/>' alt="画像なし"/>
										</div>

								</div>
									<!-- 商品名 -->
										<div id="title">
										<h3><s:property value="itemName"/></h3>
										</div>
									<br>
									<button id="button" name="name" value="<s:property value='itemName'/>,<s:property value='image_file_name'/>">削除</button>
								</div>
								</s:iterator>

						</s:form>
						</div>
					</div>
		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>