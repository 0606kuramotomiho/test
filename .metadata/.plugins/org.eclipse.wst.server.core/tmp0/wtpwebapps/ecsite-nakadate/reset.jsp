<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<link rel="stylesheet" type="text/css" href="./CSS/resetPassword-style.css">
	<link rel="stylesheet" type="text/css" href="./CSS/common-style.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content=""/>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>

	<title>ユーザー情報再設定画面</title>

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

		<div id="main">

				<div id="top">
						<p>ユーザー情報再設定</p>
				</div>

				<div id="container">

						<s:iterator value="errorMessageList">
								<s:property />
						</s:iterator>

						<s:if test="message != null">
							<s:property value="message"/>
						</s:if>

						<s:form action="ResetConfirmAction" theme="simple">

						<!-- 氏名 -->
						<s:if test="session.reset.equals('name')">
						<table>
							<tr>
								<td id="tdLeft">
									姓：
								</td>
								<td>
									<input type="text" autofocus name="familyName" value="" placeholder="姓を入力">
								</td>
							</tr>
							<tr>
								<td id="tdLeft">
									名：
								</td>
								<td>
									<input type="text" name="firstName" value="" placeholder="名を入力">
								</td>
							</tr>
							<tr>
								<td id="tdLeft">
									姓ふりがな：
								</td>
								<td>
									<input type="text" name="familyNameKana" value="" placeholder="姓ふりがなを入力">
								</td>
							</tr>
							<tr>
								<td id="tdLeft">
									名ふりがな：
								</td>
								<td>
									<input type="text" name="firstNameKana" value="" placeholder="姓ふりがなを入力">
								</td>
							</tr>
						</table>

						<br>

						<!-- 確認ボタン -->
						<div>
							<input type="button" id="button" value="確認" onclick="submitAction('ResetConfirmAction')"/>
						</div>

						</s:if>

						<!-- 性別 -->
						<s:elseif test="session.reset.equals('sex')">
						<table>
							<tr>
								<td id="tdLeft">
									性別：
								</td>
								<td>
									<s:radio name="sex" list="#{'0': '男性　　', '1': '女性'}" value="0"/>
								</td>
							</tr>
						</table>

						<br>

						<!-- 確認ボタン -->
						<div>
							<input type="button" id="button" value="確認" onclick="submitAction('ResetConfirmAction')"/>
						</div>
						</s:elseif>

						<!-- メールアドレス -->
						<s:elseif test="session.reset.equals('email')">
						<table>
							<tr>
								<td id="tdLeft">
									メールアドレス：
								</td>
								<td>
									<input type="text" autofocus name="email" value="" placeholder="メールアドレスを入力">
								</td>
							</tr>
						</table>

						<br>

						<!-- 確認ボタン -->
						<div>
							<input type="button" id="button" value="確認" onclick="submitAction('ResetConfirmAction')"/>
						</div>
						</s:elseif>

						<!-- ID -->
						<s:elseif test="session.reset.equals('userId')">
						<table>
							<tr>
								<td id="tdLeft">
									ID：
								</td>
								<td>
									<input type="text" autofocus name="userId" value="" placeholder="IDを入力">
								</td>
							</tr>
						</table>

						<br>

						<!-- 確認ボタン -->
						<div>
							<input type="button" id="button" value="確認" onclick="submitAction('ResetConfirmAction')"/>
						</div>
						</s:elseif>

						</s:form>

						<!-- 宛先情報 -->
						<s:elseif test="session.reset.equals('destination')">

						<s:if test="destinationInfoList.size() == 0">
								宛先情報がありません
								<s:form action="GoDestinationInsertAction">
								<s:submit value="宛先情報の新規登録"/>
								<input type="hidden" name="where" value="fromReset"/>
							</s:form>
						</s:if>

						<s:else>
						<s:form action="DestinationChangeAction" theme="simple">
						<h4>お届け先選択</h4><br>
							<s:iterator value="destinationInfoList">
							<div id="destinationContainer" class="clearfix">
								<div id="destinationTitle">
								<table>
								<tr>
									<td>　
									</td>
								</tr>
								<tr>
									<td>　
									</td>
								</tr>
								<tr>
									<td>
										<s:if test="id == 1">
										<input type="radio" name="destinationId" value="<s:property value="id"/>" checked="checked"/>
									</s:if>
									<s:else>
										<input type="radio" name="destinationId" value="<s:property value="id"/>"/>
									</s:else>
									</td>
								</tr>
								<tr>
									<td>　
									</td>
								</tr>
								<tr>
									<td>　
									</td>
								</tr>
								</table>

								</div>
								<div id="destinationDetail">
								<div id="destinationDetail2">
								<table>
									<tr>
										<td id="tdLeft">
											ふりがな：
										</td>
										<td id="tdRight">
											<s:property value="familyNameKana"/>
											<s:property value="firstNameKana"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											名前：
										</td>
										<td id="tdRight">
											<s:property value="familyName"/>
											<s:property value="firstName"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											住所：
										</td>
										<td id="tdRight">
											<s:property value="userAddress"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											電話番号：
										</td>
										<td id="tdRight">
											<s:property value="telNumber"/>
										</td>
									</tr>
									<tr>
										<td id="tdLeft">
											メールアドレス：
										</td>
										<td id="tdRight">
											<s:property value="email"/>
										</td>
									</tr>
								</table>
								</div>
								</div>
								</div>

							</s:iterator>
							<br>
							<input type="button" id="button" value="宛先情報の新規登録" onclick="submitAction('GoDestinationInsertAction')"/>
							<button type='submit' name='action' class="button" value='update'>宛先情報の更新</button>
 							<button type='submit' name='action' class="button" value='delete' id="onclick">宛先情報の削除</button>

						</s:form>

						</s:else>

						</s:elseif>

				</div>



		</div>

		<!-- フッター -->
		<jsp:include page="includeFooter.jsp"/>

<%-- <script type="text/javascript">

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

</script> --%>

<script type="text/javascript">
document.getElementById("onclick").onclick = function() {



	// 「OK」時の処理開始 ＋ 確認ダイアログの表示
	if(window.confirm('削除してもよろしいですか？')){

		return true;

	}
	// 「OK」時の処理終了

	// 「キャンセル」時の処理開始
	else{

		window.alert('キャンセルされました'); // 警告ダイアログを表示
		return false;

	}
	// 「キャンセル」時の処理終了

}
</script>

</body>
</html>