<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="./css/style.css">
<title>店舗一覧</title>
</head>
<body>

<div id="contents">
<h1>商品一覧画面</h1>
<s:if test="shopInfoDtoList==null">
<div class="info">
検索結果がありません。
</div>
</s:if>
<s:else>
<div id="shop-list">
<s:iterator value="#session.shopInfoDtoList">
<div class="shop-list-box">
<ul>
	<li>
	<a href='<s:url action="#">
	<s:param name="shopId" value="%{shopId}"/>
	</s:url>'><img src='<s:property value="imageFilePath"/>/<s:property value="imageFileName"/>' class="item-image-box-200"/></a><br>
	<s:property value="shopName"/><br>
	<s:property value="place"/><br>

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
		<a href="<s:url action='SearchItemAction'><s:param name='pageNo' value='%{#pageNo.count}'/><s:param name='categoryId' value='%{categoryId}'/></s:url> ">	<s:property value="%{#pageNo.count}"/></a>
	</s:else>
</s:iterator>
</div>
</s:else>
</div>
<s:include value="footer.jsp"/>
</body>
</html>