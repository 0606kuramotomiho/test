<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Content-Style-Type" content="text/css"/>
	<meta http-equiv="Content-Script-Type" content="text/javascript"/>
	<meta http-equiv="imagetoolbar" content="no"/>
	<meta name="description" content=""/>
	<meta name="keywords" content="" />
	<link rel="stylesheet" href="./css/style.css">
	<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script type="text/javascript">

				jQuery(document).ready(function($){
			      $('.abc').bxSlider({
			          auto: true,
			          mode: 'fade',
			          speed: 1000,
			          slideWidth: 2000
			      });
			    });
		  </script>

		<title>Multitasking</title>




</head>
<body>
	<jsp:include page="header.jsp"/>

	<div id="topContainer">
		<div class="abc">
            <div><img src="./image/bisuness.jpg" width="1000" height="300"></div>
            <div><img src="./image/cafe.jpg" width="1000" height="300"></div>
            <div><img src="./image/food.jpg" width="1000" height="300"></div>
        </div>
      </div>
		<div id="main-container">
			<div id="left">
				<h3>ビジネスシーンから探す<i class="fa fa-search-plus" aria-hidden="true"></i></h3>
					<ul>
						<li class="categoryBtn">
							<a href="#" class="btn business">真剣BusinessLunch</a>
						</li>

						<li class="categoryBtn">
							<a href="homeAction" class="btn friend">楽しくFriendlyLunch</a>
						</li>

						<li class="categoryBtn">
							<a href="homeAction" class="btn special">喜ばせたいSpecialLunch</a>
						</li>

						<li class="categoryBtn">
							<a href="homeAction" class="btn smile">ほのぼのSmileLunch</a>
						</li>

						<li class="categoryBtn">
						<a href="homeAction" class="btn cafe">Cafe Ranking"</a>
						</li>
					</ul>
			</div>


			<div id="center">
				<h1>ランチおすすめランキング</h1>
 			</div>

 			<div id="#right">
 			<h2>aaa</h2>
 			</div>
		</div>
		<div class

<s:include value="footer.jsp"/>
</body>
</html>