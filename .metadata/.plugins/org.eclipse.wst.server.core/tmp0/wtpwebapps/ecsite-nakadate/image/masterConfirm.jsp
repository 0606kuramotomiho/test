<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/masterConfirm-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>

	<title>MasterConfirm画面</title>


</head>
<body>
	<div id="header">
				<div id="pr">
				<a id="logo" href='<s:url action="GoHomeAction"/>'>Home</a>
				<a id="mypage" href='<s:url action="MyPageAction"/>'>マイページ</a>
				</div>
		</div>
		<div id="main">
				<div id="top">
						<p>MasterConfirm</p>
				</div>

				<div>
						<s:form>
								<s:iterator value="buyItemDTOList">
										<s:if test="count != 0">
												<tr>
														<td>
															商品名
														</td>

														<td>
															<s:property value="itemName"/>
														</td>
												</tr>

												<tr>
														<td>
															追加個数
														</td>

														<td>
															<s:property value="count"/>
														</td>
												</tr>

												<tr>
														<td>
															<br>
														</td>
												</tr>
										</s:if>
								</s:iterator>

								<tr>
										<td>
											<input type="button" value="戻る" onclick="submitAction('HomeAction')"/>
										</td>

										<td>
											<input type="button" value="完了" onclick="submitAction('MasterConfirmAction')"/>
										</td>
								</tr>
						</s:form>
				</div>
		</div>

		<div id="footer">
				<div id="pr">
				</div>
		</div>
</body>
</html>