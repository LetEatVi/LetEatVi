<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<title>Let Eat VI</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />

<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/storyPage.css">

<script src="${pageContext.request.contextPath}/resources/js/header.js"
	defer></script>
<script
	src="${pageContext.request.contextPath}/resources/js/mainPage.js" defer></script>

<style>
/* font url */
@import
	url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Song+Myung&display=swap')
	;

@font-face {
	font-family: 'S-CoreDream-3Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GongGothicMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'MapoGoldenPier';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'Inkfree';
	src:
		url('${pageContext.request.contextPath}/resources/font/Inkfree.ttf')
		format('truetype');
}
</style>

</head>

<body>
	<%@include file="../common/header.jsp"%>

	<div class="whole">
		<div class="top-img">
			<p class="topwords" style="font-size: 63px;">
				<b style="font-size: 68px;">Let eat VI</b> story
			</p>
			<p class="topwords2" style="font-size: 13px;" id="text">???????????? ??????
				????????? ???????????? ??? ?????? ?????? ??????</p>
			<div class="story-nav">
				<span class="navspan"> <a
					href="${pageContext.request.contextPath}/story/goStory.do">All</a>
				</span> <span class="navspan"> <a
					href="${pageContext.request.contextPath}/story/goLife.do">Life</a>
				</span> <span class="navspan"> <a
					href="${pageContext.request.contextPath}/story/goNutrition.do">Nutrition</a>
				</span> <span class="navspan"> <a
					href="${pageContext.request.contextPath}/story/goEvent.do">Event</a>
				</span>
			</div>
		</div>


		<div class="main">
			<div class="wrapper">
				<div class="contentsbox">
					<div class="row story-img">
						<div class="col ctimg"
							onclick="location.href='https://m.health.chosun.com/svc/news_view.html?contid=2016070501299';">
							<img id="img1"
								src="${pageContext.request.contextPath}/resources/images/healthyfood.JPG"
								alt="">
						</div>
						<div class="col ctimg"
							onclick="location.href='http://www.koreaherald.com/view.php?ud=20140309000209'">
							<img id="img1"
								src="${pageContext.request.contextPath}/resources/images/healthy10.JPG"
								alt="">
						</div>
					</div>
					<div class="row story-content">
						<div class="col cttext">
							<p class="cate" style="color: #ff1493">Nutrition</p>
							<h3>????????? ?????? ???????????? ????</h3>
							<p id="text">
								?????? ??????????????? ????????? ?????????!<br> ????????? ????????? 3?????? ????????? ????????????!
							</p>
							<span class="moresee">??? ??????...</span>
						</div>
						<div class="col cttext">
							<p class="cate" style="color: #ff1493">Nutrition</p>
							<h3>????????? ?????? ????????? ?????? ?????? ??????!</h3>
							<p id="text">
								?????? ????????? ????????? ???????????????<br> ???????????? ????????? ?????? ?????? ?????? 10??????!
							</p>
							<span class="moresee">??? ??????...</span>
						</div>
					</div>
				</div>
				<div class="contentsbox">
					<div class="row story-img">
						<div class="col ctimg"
							onclick="location.href='https://post.naver.com/viewer/postView.nhn?volumeNo=15759796&memberNo=24108940&searchKeyword=%EB%B9%84%ED%83%80%EB%AF%BC&searchRank=1';">
							<img id="img1"
								src="${pageContext.request.contextPath}/resources/images/nono.png"
								alt="">
						</div>
						<div class="col ctimg"
							onclick="location.href='https://steptohealth.co.kr/10-benefits-of-bananas-for-health/';">
							<img id="img2"
								src="${pageContext.request.contextPath}/resources/images/banana.JPG"
								alt="">
						</div>
					</div>
					<div class="row story-content">
						<div class="col cttext">
							<p class="cate" style="color: #ff1493">Nutrition</p>
							<h3>???????????? ?????? ????????? ??????</h3>
							<p id="text">
								????????? ???????????? ???????????? ??????<br> ????????? ?????? 4????????? ????????????!
							</p>
							<span class="moresee">??? ??????...</span>
						</div>
						<div class="col cttext">
							<p class="cate" style="color: #ff1493">Nutrition</p>
							<h3>???????????? ????????? ???????????????????</h3>
							<p id="text">
								????????? ????????????<br> ?????? ??????????????? ?????????????
							</p>
							<span class="moresee">??? ??????...</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@include file="../common/footer.jsp"%>
</body>

</html>