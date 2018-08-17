<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<link rel="stylesheet" href="./css/style.css">
	<title>Home画面</title>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


</head>
<body>
<div id="abc">



	<jsp:include page="header.jsp" />
	<img src="./img/IEZbJGSGMxLI4Kj1534472615_1534472778.jpg">
</div>
	<div id="shop">
<h1>新着</h1>
<s:if test="shopInfoDtoList==null">
<div class="info">
検索結果がありません。
</div>
</s:if>
<s:else>
<div id="shop-list">
<s:iterator value="#session.shopInfoDtoList">
<div class="product-list-box">
<ul>
	<li>
	<a href='<s:url action="#">
	<s:param name="shopId" value="%{shopId}"/>
	</s:url>'><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-200"/></a><br>
	<s:property value="shopName"/><br>
	<s:property value="prace"/><br>

  </li>
</ul>
</div>
</s:iterator>
</div>
<div class="pager">
<s:iterator begin="1" end="#session.totalPageSize" status="pageNo">
	<s:if test="#session.currentPageNo == #pageNo.count">
		<s:property value="%{#pageNo.count}"/>
	</s:if>
	<s:else>
		<a href="<s:url action='#'><s:param name='pageNo' value='%{#pageNo.count}'/><s:param name='categoryId' value='%{categoryId}'/></s:url> ">	<s:property value="%{#pageNo.count}"/></a>
	</s:else>
</s:iterator>
</div>
</s:else>
</div>




	<div id="footer">
		<div id="pr">
		</div>
	</div>

</body>
</html>