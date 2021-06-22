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
	href="${pageContext.request.contextPath}/resources/css/mainPage.css">
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
/**/
#hideme {
    animation: fadein 2s;
    -webkit-animation: fadein 5s; /* Safari and Chrome */

}

@-webkit-keyframes fadein { /* Safari and Chrome */
    from {
        opacity:0;
    }
    to {
        opacity:1;
    }
}
</style>
</head>
<body>
	<%@include file="./views/common/header.jsp"%>

	<div class="main-img">
		<div class="main-title">
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br>
			<h1 id="hideme">
				내 몸에 필요한 영양제 <br> 궁금하세요?
			</h1>
		</div>
		<div style="margin-top: 60px;" id="hideme">
			<a href="#" class="vitamin-btn" style="color: white;">CHECK</a>
		</div>
	</div>
	
	
	<div class="slide-box">
		<p class="content-slide-fix">어떻게 선택하셨었나요?</p>
		<ul class="slider-container simple-list" id="slider">
			<li class="slide">
				<blockquote>
					<div class="content-slide-img">
						<img
							src="${pageContext.request.contextPath}/resources/images/parcel.png">
						<p class="slide-text">
							영양제가 너무 다양해서 <br> 뭘 골라야 할지 모르겠어요.
						</p>
				</blockquote> <cite>" 다양한 영양제들 때문에 선택장애 오셨던 분들 "</cite>
			</li>
			<li class="slide">
				<blockquote>
					<div class="content-slide-img">
						<img
							src="${pageContext.request.contextPath}/resources/images/chemistry.png">
						<p class="slide-text">
							성분표를 봐도 모르겠고 <br> 어떤 성분이 좋은거죠?
						</p>
				</blockquote> <cite>" 성분표를 봐도 뭐가 뭔지 모르겠는 분들 "</cite>
			</li>
			<li class="slide">
				<blockquote>
					<div class="content-slide-img">
						<img
							src="${pageContext.request.contextPath}/resources/images/power.png">
						<p class="slide-text">
							제 몸상태에 딱 맞게 <br> 맞춤형으로 먹고싶어요!
						</p>
				</blockquote> <cite>" 현재 몸상태에 맞춰서 영양제를 추천받고 싶으신 분들 "</cite>
			</li>
		</ul>

		<button id="prev"></button>
		<button id="next"></button>

	</div>



	<p class="vi-content">이젠 렛잇비가 선택해줄게요.</p>

	<div class="row rowrow" style="margin-top: 120px; margin-left: 300px; margin-right: 300px;">
		<div class="col col-icon" style="padding-left: 0px; padding-right: 0px;">
			<img
				src="${pageContext.request.contextPath}/resources/images/investigation.png">
		</div>
		<div class="col col-icon" style="padding-left: 0px; padding-right: 0px;">
			<img
				src="${pageContext.request.contextPath}/resources/images/shopping-bag.png">
		</div>
		<div class="col col-icon" style="padding-left: 0px; padding-right: 0px;">
			<img
				src="${pageContext.request.contextPath}/resources/images/infinity.png">
		</div>
	</div>
	<div class="row rowrow" style="margin-top: 30px; 	margin-left: 300px; margin-right: 300px;">
		<div class="col col-content" style="padding-left: 0px; padding-right: 0px;">
			<p class="content-first">01</p>
			<p class="content-second">건강설문</p>
			<p class="content-third">
				몸을 위해 3분만 투자하세요! <br> 지금 몸상태에 딱 맞게 영양제를 추천해드려요.
			</p>
		</div>
		<div class="col col-content" style="padding-left: 0px; padding-right: 0px;">
			<p class="content-first">02</p>
			<p class="content-second">성분쇼핑</p>
			<p class="content-third">
				어려운 성분 분석도 한 번에! <br> 내 몸에 적합한 성분을 보면서 쇼핑할 수 있어요.
			</p>
		</div>
		<div class="col col-content" style="padding-left: 0px; padding-right: 0px;">
			<p class="content-first">03</p>
			<p class="content-second">건강관리</p>
			<p class="content-third">
				평생 건강 지킴이, 렛잇비 <br> 건강 관리를 쉽고 빠르게 경험해보세요.
			</p>
		</div>
	</div>

	<div class="container fourth-area">
		<img class="hideme"
			src="${pageContext.request.contextPath}/resources/images/medic-563425.jpg"
			style="width: 85%;">
		<p>
			렛잇비만의 성분 분석을 통해서 약국에 가지 않아도 내 몸에 필요한 영양제를 추천 받을 수 있어요. <br> 우리
			몸에 꼭 필요한 영양소를 챙기세요.
		</p>
	</div>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<br>
	<div class="container fourth-area">
		<img class="hideme"
			src="${pageContext.request.contextPath}/resources/images/vegetables-2977888.jpg"
			style="width: 85%; height: 500px;">
		<p>
			영양소가 부족하면 우리 몸에 나타나요! 매일 필요 영양소를 섭취하기 어렵다면 영양제로 채워보세요. <br> 지금
			바로 <b style="font-weight: bolder; color: #E87A54;">렛잇비</b>에서 구매해보세요.
		</p>
	</div>


	<div class="fifth-area">
		<div style="text-align: center; padding-top: 110px; font-size: 55px;">
			<p>
				건강설문으로 <br> 필요한 영양 성분을 찾으세요.
			</p>
			<div style="line-height: 50%;">
				<br>
			</div>
			<a href="#" class="investigation-btn" style="color: white;">지금 시작하기</a>
		</div>
	</div>

	<div class="container sixth-area">
		<div class="row pill-search">
			<div class="col">
				<p class="lev-content">
					<b style="font-size: 60px; font-weight: bolder;"> Let's Eat
						Vitamin </b><br> 똑똑한 생활 습관 <b> 렛 잇 비 </b>
				</p>
			</div>
		</div>
		<div class="row pill-search">
			<div class="col pill-search-box">
				<div style="margin-left: 364px;">
					<input type="text" id="search-basic" maxlength="14">
					<button type="submit"
						style="background: rgba(0, 0, 0, 0); border: 2px solid rgba(0, 0, 0, 0);">
						<img
							src="${pageContext.request.contextPath}/resources/images/zoom.png"
							class="loupe-btn">
					</button>
				</div>
			</div>
		</div>
		<div class="row pill-search">
			<div class="col pill-search-btn">
				<button
					style="margin-right: -4.5px; border-right-color: rgba(0, 0, 0, 0); border-top-left-radius: 10px; border-bottom-left-radius: 10px;">
					<img
						src="${pageContext.request.contextPath}/resources/images/healthcare.png"
						style="width: 50px; margin-bottom: 15px;"><br> 활력 / 피로
				</button>
				<button
					style="margin-right: -4px; border-right-color: rgba(0, 0, 0, 0);">
					<img
						src="${pageContext.request.contextPath}/resources/images/intestine.png"
						style="width: 50px; margin-bottom: 15px;"><br> 장 / 간
				</button>
				<button
					style="margin-right: -2.5px; border-right-color: rgba(0, 0, 0, 0);">
					<img
						src="${pageContext.request.contextPath}/resources/images/bone.png"
						style="width: 50px; margin-bottom: 15px;"><br> 관절 / 뼈
				</button>
				<button
					style="margin-left: -2px; border-right-color: rgba(0, 0, 0, 0);">
					<img
						src="${pageContext.request.contextPath}/resources/images/visible.png"
						style="width: 50px; margin-bottom: 15px;"><br> 눈 건강
				</button>
				<button
					style="margin-left: -4.3px; border-right-color: rgba(0, 0, 0, 0);">
					<img
						src="${pageContext.request.contextPath}/resources/images/skin-care.png"
						style="width: 50px; margin-bottom: 15px;"><br> 피부 / 모발
				</button>
				<button
					style="margin-left: -3.7px; border-top-right-radius: 10px; border-bottom-right-radius: 10px;">
					<img
						src="${pageContext.request.contextPath}/resources/images/cells.png"
						style="width: 50px; margin-bottom: 15px; margin-right: 10px;"><br>
					면역력 / 노화
				</button>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row rowarea">
			<div class="col selfi-area">
				<img class="selfi"
					src="${pageContext.request.contextPath}/resources/images/Blair.jpeg">
			</div>
			<div class="col selfi-area">
				<img class="selfi"
					src="${pageContext.request.contextPath}/resources/images/Minji.jpeg">
			</div>
		</div>
		<div class="row rowarea">
			<div class="col text-area">
				<p>구도욱</p>
			</div>
			<div class="col text-area">
				<p>곽민지</p>
			</div>
		</div>
		<div class="row rowarea">
			<div class="col selfi-area">
				<img class="selfi"
					src="${pageContext.request.contextPath}/resources/images/Gwhan.jpeg">
			</div>
			<div class="col selfi-area">
				<img class="selfi"
					src="${pageContext.request.contextPath}/resources/images/Davi.jpeg">
			</div>
		</div>
		<div class="row rowarea">
			<div class="col text-area">
				<p>박지환</p>
			</div>
			<div class="col text-area">
				<p>노다비</p>
			</div>
		</div>
		<div class="row rowarea">
			<div class="col selfi-area">
				<img class="selfi"
					src="${pageContext.request.contextPath}/resources/images/lcwon.jpeg">
			</div>
			<div class="col selfi-area">
				<img class="selfi"
					src="${pageContext.request.contextPath}/resources/images/soyeon.jpeg">
			</div>
		</div>
		<div class="row rowarea">
			<div class="col text-area">
				<p>이철원</p>
			</div>
			<div class="col text-area">
				<p>전소연</p>
			</div>
		</div>
	</div>

	<%@include file="./views/common/footer.jsp"%>
	<!-- test -->
	<script>
	$(document).ready(function() {
	    /* 1 */
	    $(window).scroll( function(){
	        /* 2 */
	        $('.hideme').each( function(i){
	            var bottom_of_object = $(this).offset().top + $(this).outerHeight();
	            var bottom_of_window = $(window).scrollTop() + $(window).height();
	            /* 3 */
	            if( bottom_of_window > bottom_of_object/2 ){
	                $(this).animate({'opacity':'1'},1000);
	            }
	        }); 
	    });
	});
	</script>

</body>
>>>>>>> refs/remotes/origin/Minji
</html>