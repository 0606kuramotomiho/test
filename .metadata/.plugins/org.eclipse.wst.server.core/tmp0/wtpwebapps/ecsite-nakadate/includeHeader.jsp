<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%String id = (String)session.getAttribute("userId");%> --%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel="stylesheet" type="text/css" href="http://netdna.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.css">
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<%-- <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script> --%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>


</head>

<style>

		* {
			font-family:'Hiragino Kaku Gothic Pro W3','Hiragino Kaku Gothic ProN',Meiryo,sans-serif;
			text-decoration:none;
		}
		a {
			/*水色*/
			color:#245fbb;
		}
		a:hover {
			/*オレンジ*/
			color:#F99F48;
		}
		.main {
			min-height:500px;
		}

		#main {
			min-height:700px;
		}

		#header {
			width:100%;
			height:100px;
			/*紺色*/
			background-color:#071D26;
		}

		#left {
			width:70%;
			height:100px;
			float:left;
			box-sizing:border-box;
			margin-right:0;
		}

		#right {
			width:30%;
			height:100px;
			float:left;
			box-sizing:border-box;
		}

		.logo {
			width:15%;
			color:#fff;
			float:left;
			font-size:28px;
			line-height:100px;
			padding-top:22.5px;
			padding-left:20px;
			box-sizing:border-box;
		}

		.logo img{
			width:100%;
		}

		#search {
			width:85%;
			height:auto;
			float:left;
			padding-top:32.5px;
			padding-left:3%;
			box-sizing:border-box;
		}

		/*検索カテゴリー*/
		.btn-select {
			width: 35%;
			height:35px;
			position: relative;
			float:left;
			z-index:5;
		}
		/*検索フィールド*/
		.textfield {
			width:55%;
			height:35px;
			float:left;
			border:none;
			box-sizing:border-box;
		}
		/*検索ボタン*/
		.searchButton {
			width:10%;
			height:35px;
			float:left;
			background-color:#F99F48;
			border:none;
			border-top-right-radius:4px;
			border-bottom-right-radius:4px;
			cursor:pointer;
		}

		.label {
			color: #444444;
			background-color:#EAEDED;

			position: absolute;
			top:0;
			width: 100%;
			height:35px;

			text-align:center;
			line-height:35px;

			margin-top:0;
			display: block;
			z-index: 1;
			white-space: nowrap;
			cursor:pointer;

			font-size:16px;

			border-top-left-radius:4px;
			border-bottom-left-radius:4px;
		}

		.btn-select .select {
			-webkit-appearance: none;
			-moz-appearance: none;
			appearance: none;

			display: block;
			cursor: pointer;

			width: 100%;
			height:35px;

			border: none;
			padding-right: 80px;
			opacity: 0;
			position: relative;
			z-index: 2;
			white-space: nowrap;
		}


		/*検索アイコン*/
		.searchIcon {
			font-size:16px;
		}

		/*矢印アイコン*/
		.sort-down {
			position:absolute;
			top:20%;
			right:3%;
			font-size:16px;
			color:#444444;
		}


		/* IE10以上で矢印を消す */
		.select::-ms-expand {
			display: none;
		}

		/* フォーカス時 */
		.select:focus {
			z-index: -1;
			opacity: 1;
		}

	/*ログイン*/
		#hello {
			position:relative;
			height:100px;
			width:50%;
			float:left;
			margin-top:28px;
			padding-left:1%;
			box-sizing:border-box;
		}

		.helloUser {
			display:block;
			color:#fff;
			opacity:0.9;
			height:auto;
			text-align:center;
			font-size:12px;
			margin-top:0;
			margin-bottom:0;
		}
	/*ログイン*/
		.logButton {
			width:100%;
			margin:0 auto;
			background: linear-gradient(to bottom,#f7dfa5,#f0c14b);
		    border:1px solid #a88734;
			color: #111;
			border-radius:3px;
			padding: 5px 10px 5px 10px;
		}

	/*ログアウト*/
		.logout {
			display:block;
			width:30%;
			margin-top:40px;
			margin-left:20%;
			color:#fff;
			height:30px;
			line-height:30px;
			font-size:18px;
			text-align:center;
			float:left;
			/* border:1px solid rgba(255, 255, 255, 0.5); */
		}

		.acount {
			display:block;
			width:auto;
			color:#fff;
			height:30px;
			line-height:30px;
			font-size:18px;
			text-align:center;
		}

		.home {
			display:block;
			width:30%;
			margin-top:40px;
			margin-right:20%;
			color:#fff;
			height:30px;
			line-height:30px;
			font-size:18px;
			text-align:center;
			float:left;
		}

	/*カート*/
		#cart {
			position:relative;
			height:100px;
			width:50%;
			line-height:80px;
			float:left;
			/* margin-top:20px; */
			/* margin-left:10px; */
		}

		#cartA {
			width:50%;
			height:100%;
		}

	/*カート内商品数*/
		.cartItems {
			position:absolute;
			top:30px;
			left:17px;
			color:#ed7808;
			margin-left:10px;
			font-size:14px;
			font-weight:bold;
			text-align:center;
			line-height:0;
			z-index:1;
		}

		.cart {
			display:block;
			width:80px;
			height:30px;
			color:#fff;
			text-align:left;;
			font-size:18px;
			margin-top:23px;
			margin-left:60px;
		}

		.cart:hover {
			/*オレンジ*/
			color:#F99F48;
		}

		#headerSpan {
			color:#fff;
		}
	/*カートアイコン*/
		.icon {
			color:#fff;
			position:absolute;
			top:23px;
			left:-5px;
			margin-left:10px;
			font-size: 4.5em
		}

		#cart .icon {
			transition: all 0.3s;
		}

		#cart:hover .icon {
			transition: all 0.3s;
			transform:rotate(-10deg);
		}

	/*ふきだし*/
		#list {
			position:absolute;
			top:70px;
			left:0px;
			display:none;
			border-radius:4px;
			z-index:999;
		}

		#list:before {
			content: "";
			position: absolute;
			top: -30px;
			left: 80%;
			margin-left: -15px;
			border: 15px solid transparent;
			border-bottom: 15px solid #fff;

		}

		#hello:hover #list {
			display:inline-block;
			opacity:1;
			background-color:#fff;
			box-shadow: 0 0 8px #909096;

			height:200px;
			width:250px;
		}

		#listContainer {
			width:90%;
			height:auto;
			margin:0 auto;
			padding:10px;
		}

		#listContainerTop {
			width:100%;
			height:auto;
			border-bottom:1px solid #dcdcdc;
		}

		 .newUser {
		 	font-size:11px;
		 	margin-top:5px;
		 	margin-bottom:5px;
		 }

		/* for modern brouser */
		.clearfix:after {
		  content: ".";
		  display: block;
		  clear: both;
		  height: 0;
		  visibility: hidden;
		}
		/* IE7,MacIE5 */
		.clearfix {
		  display: inline-block;
		}
		/* WinIE6 below, Exclude MacIE5 \*/
		* html .clearfix {
		  height: 1%;
		}
		.clearfix {
		  display: block;
		}
		/* for modern brouser */





</style>

<body>
<header>
	<div id="header">
				<div id="left" class="clearfix">

					<s:if test="session.loginFlg == true && session.masterFlg == true">
						<a class="logo" href='<s:url action="GoMasterAction"/>'><img src="./image/nakazonLogo.png"></a>
					</s:if>

					<s:else>
						<a class="logo" href='<s:url action="StartAction"/>'><img src="./image/nakazonLogo.png"></a>
					</s:else>

					<!-- 商品検索 -->
					<div id="search">
						<s:form action="ItemSearchAction" theme="simple">

						<div class="btn-select">
								<p class="label">すべて<i class="fa fa-sort-down sort-down"></i></p>
								<select class='select' name="categoryId" id="category">
										<option value=1>全てのカテゴリー</option>
										<option value=2>文房具</option>
										<option value=3>生活雑貨</option>
										<option value=4>調理用品</option>
										<option value=5>美容健康</option>
								</select>
						</div>
						<s:textfield cssClass="textfield" name="searchWord" value=""/>
						<button type="submit" class="searchButton"><i class='fa fa-search searchIcon'></i></button>

						</s:form>
					</div>

				</div>

				<div id="right">

					<!-- ゲストユーザーのとき -->

					<s:if test="session.loginFlg == false || session.loginFlg == null">

						<!-- ログイン -->
						<div id="hello">
							<p class="helloUser">ゲストユーザーさん</p>

							<span class="acount">アカウントサービス</span>

							<div id="list">
								<div id="listContainer">
									<div id="listContainerTop">
										<s:form action="GoLoginAction">
												<button type="submit" class="logButton">ログイン</button>
										</s:form>
										<div class="newUser">
										初めてご利用ですか？
										<a href='<s:url action="GoUserCreateAction" />' class="newUser">新規登録はこちら</a>
										</div>
									</div>

									<h3>アカウントサービス</h3>
									<a class="mypage" href='<s:url action="MyPageAction"/>'>マイページ</a>
									<br>
									<a href='<s:url action="BuyItemHistoryAction"/>'>注文履歴</a>
								</div>
							</div>
						</div>

						<!-- カート -->
						<s:a id="cartA" action="GoCartAction">
						<div id="cart">
								<div id="cartIcon">
									<!-- カート内商品種類数 -->
									<s:if test="#session.totalCount == null || #session.totalCount == 0">
										<p class="cartItems">0</p>
									</s:if>
									<s:else>
										<p class="cartItems"><s:property value="#session.totalCount"/></p>
									</s:else>
									<!-- カートアイコン -->
									<i class="fa fa-shopping-cart icon "></i>
								</div>

								<div id="cartContainer">
									<span class="cart">カート</span>
								</div>
						</div>
						</s:a>
					</s:if>


					<!-- ログインユーザーのとき -->
					<s:if test="session.loginFlg == true && session.masterFlg != true">

						<!-- ログアウト -->
						<div id="hello">
							<p class="helloUser"><s:property value="session.login_user_id"/>さん</p>

							<span class="acount">アカウントサービス</span>

							<div id="list">
								<div id="listContainer">
									<div id="listContainerTop">
										<s:form action="LogoutAction">
												<button type="submit" class="logButton">ログアウト</button>
										</s:form>
									</div>
								<h3>アカウントサービス</h3>
								<a class="mypage" href='<s:url action="MyPageAction"/>'>マイページ</a>
								<br>
								<a href='<s:url action="BuyItemHistoryAction"/>'>注文履歴</a>

								</div>
							</div>

						</div>

						<!-- カート内商品種類数 -->

						<div id="cart">
							<s:if test="#session.totalCount == null || #session.totalCount == 0">
								<p class="cartItems">0</p>
							</s:if>
							<s:else>
								<p class="cartItems"><s:property value="#session.totalCount"/></p>
							</s:else>

							<div id="cartHover">
							<i class="fa fa-shopping-cart icon fa-4x"></i>

							<!-- カート -->
							<a class="cart" href='<s:url action="GoCartAction"/>'>カート</a>
							</div>
						</div>

					</s:if>


					<!-- 管理者のとき -->
					<s:if test="session.loginFlg == true && session.masterFlg == true">
					<!-- <p class="helloUser">  a</p> -->

					<!-- ログアウト -->
					<a class="logout" href='<s:url action="LogoutAction"/>'>ログアウト</a>
					<a class="home" href='<s:url action="GoMasterAction"/>'>管理者ホーム</a>
					</s:if>



				</div>
		</div>
</header>

<script type="text/javascript">

$('.select').on('change', function(){

  var $this = $(this)
  var $option = $this.find('option:selected');
  $('.label').text($option.text());
  $('.label').append('<i class="fa fa-sort-down sort-down"></i>');

  // onchange後にフォーカスしてるのが嫌な場合
  $this.blur();

});

</script>

</body>