<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/itemUpdateEnter-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>商品情報入力画面</title>

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
						<p>商品情報入力</p>
				</div>

				<s:if test="errorMessageList.size() > 0">
				<div id="errorMessage">
						<s:iterator value="errorMessageList">
						</s:iterator>
				</div>
				</s:if>
				<%-- <div>
					<a href='<s:url action="GoMasterAction"/>'>管理者画面へ戻る</a>
				</div> --%>
				<br>
				<div>
				<s:form action="ItemUpdateEnterAction" method="post" enctype="multipart/form-data">
				<s:iterator value="list">
				<table>
						<tr>
										<td id="tdLeft">
											商品名：
										</td>
										<td>
											<input type="text" name="itemName" value="<s:property value='itemName'/>">
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											商品かな：
										</td>
										<td>
											<input type="text" name="itemNameKana" value="<s:property value='item_name_kana'/>">
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											商品詳細：
										</td>
										<td>
											<input type="text" name="itemDescription" value="<s:property value='item_description'/>">
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											カテゴリーID：
										</td>
										<td>

											<div class="select">
											<s:if test="category_id == 2">
											<select name="categoryId">
													<option>選択してください</option>
													<option value="2" selected>文房具</option>
													<option value="3">生活雑貨</option>
													<option value="4">調理用品</option>
													<option value="5">美容健康</option>
											</select>
											</s:if>
											<s:elseif test="category_id == 3">
											<select name="categoryId">
													<option>選択してください</option>
													<option value="2">文房具</option>
													<option value="3" selected>生活雑貨</option>
													<option value="4">調理用品</option>
													<option value="5">美容健康</option>
											</select>
											</s:elseif>
											<s:elseif test="category_id == 4">
											<select name="categoryId">
													<option>選択してください</option>
													<option value="2">文房具</option>
													<option value="3">生活雑貨</option>
													<option value="4" selected>調理用品</option>
													<option value="5">美容健康</option>
											</select>
											</s:elseif>
											<s:elseif test="category_id == 5">
											<select name="categoryId">
													<option>選択してください</option>
													<option value="2">文房具</option>
													<option value="3">生活雑貨</option>
													<option value="4">調理用品</option>
													<option value="5" selected>美容健康</option>
											</select>
											</s:elseif>
											</div>
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											商品価格：
										</td>
										<td>
											<input type="text" name="itemPrice" value="<s:property value='itemPrice'/>">
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											在庫：
										</td>
										<td>
											<input type="text" name="itemStock" value="<s:property value='item_stock'/>">
										</td>
								</tr>

								<tr>
										<td id="tdLeft">
											商品画像：
										</td>
										<td class="insertImage">
											<img src="<s:property value='image_file_name'/>"/>
											<s:hidden name="imageFileName2" value="%{image_file_name}"/>
										</td>
								</tr>
								</table>
								<!-- <div id="inputFile">
								<input type="file" accept="image/*" name="imageFileName">
								</div> -->
								<div class="file">
									<s:form action="ItemUpdateEnterAction" method="post" enctype="multipart/form-data">
										<s:file name="userImage" />
									</s:form>
								</div>


				</s:iterator>
				</s:form>
				<br>
				<div>
					<input type="button" id="button" value="更新" onclick="submitAction('ItemUpdateEnterAction')"/>
				</div>
				</div>
				<br>


		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

</body>
</html>