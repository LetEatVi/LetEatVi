<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
    <title>Let Eat VI</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
        integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
        integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
        crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
        integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
        crossorigin="anonymous"></script>

    <script src="https://kit.fontawesome.com/2d323a629b.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap" rel="stylesheet" />

    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/header.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/footer.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/eventPage1.css">

    <script src="${pageContext.request.contextPath}/resources/js/header.js" defer></script>
    <script src="${pageContext.request.contextPath}/resources/js/mainPage.js" defer></script>

	<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1.11.3.min.js"></script> 
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jQueryRotateCompressed.js"></script>

    <style>
        /* font url */
        @import url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');
        @import url('https://fonts.googleapis.com/css2?family=Song+Myung&display=swap');

        @font-face {
            font-family: 'S-CoreDream-3Light';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'GongGothicMedium';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'MapoGoldenPier';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }

        @font-face {
            font-family: 'Inkfree';
            src: url('${pageContext.request.contextPath}/resources/font/Inkfree.ttf') format('truetype');
        }
		#letteboard{
          margin:50px 50px;z-index:10;
        }
        #n_id{position:absolute;left: 910px;z-index:20;}
    </style>

</head>

<body>
<header>
		<!-- Nav container -->
		<nav class="navbar">
			<!-- 로고, 아이콘 -->
			<div class="navbar__logo">
				<a href="http://localhost:8088/leteatvi/" class="menu-content"><img
					src="${pageContext.request.contextPath}/resources/images/LetEatVi_logo.jpg"
					style="width: 160px;"></a>
			</div>
			
			<!-- 검색창 -->
			<c:if test="${!empty member }">
				<div class="search-wrapper loginchk">
					<div class="input-holder">
						<input type="text" class="search-input">
						<button class="search-icon" onclick="searchToggle(this, event);">
							<span id="conan"></span>
						</button>
					</div>
					<span class="close" id="close" style="visibility: hidden;"
						onclick="searchToggle(this, event);"></span>
				</div>
			</c:if>
			<c:if test="${empty member }">
				<div class="search-wrapper loginNone">
					<div class="input-holder">
						<input type="text" class="search-input">
						<button class="search-icon" onclick="searchToggle(this, event);">
							<span id="conan"></span>
						</button>
					</div>
					<span class="close" id="close" style="visibility: hidden;"
						onclick="searchToggle(this, event);"></span>
				</div>
			</c:if>

			<!-- 메뉴 -->
			<ul class="navbar__menu">
				<li><a
					href="${pageContext.request.contextPath}/store/goStore.do"
					class="menu-content">STORE</a></li>
				<li><a href="" class="menu-content">SURVEY</a></li>
				<li><a
					href="${pageContext.request.contextPath}/story/goStory.do"
					class="menu-content">STORY</a></li>
				<li><a href="${pageContext.request.contextPath}/store/goCart.do?userId=${member.userId}" class="menu-content">CART</a></li>
				<c:if test="${empty member}">
					<li><a
						href="${pageContext.request.contextPath}/member/memberLogin.do"
						class="menu-content">LOGIN</a></li>
					<li><a
						href="${pageContext.request.contextPath}/member/memberEnroll.do"
						class="menu-content">JOIN</a></li>
				</c:if>
				<c:if test="${!empty member}">
					<li><a
						href="${pageContext.request.contextPath}/myPage/orderList.do"
						class="menu-content">ORDER</a></li>
					<li><a
						href="${pageContext.request.contextPath}/myPage/myPageHome.do"
						class="menu-content">MYPAGE</a></li>
					<li><a
						href="${pageContext.request.contextPath}/member/memberLogout.do"
						class="menu-content">LOGOUT</a></li>
				</c:if>
			</ul>
		</nav>
	</header>
	<!-- header 끝 -->
    <div class="whole">
        <div class="top-img">
            <p class="topwords" style="font-size: 63px;"><b style="font-size: 68px;">Let eat VI</b> story</p>
            <p class="topwords2" style="font-size: 13px;" id="text">읽다보면 나도 모르게 건강해질 것 같은 그런 기분</p>
            <div class="story-nav">
                <span class="navspan">
                    <a href="${pageContext.request.contextPath}/story/goStory.do">All</a>
                </span>
                <span class="navspan">
                    <a href="${pageContext.request.contextPath}/story/goLife.do">Life</a>
                </span>
                <span class="navspan">
                    <a href="${pageContext.request.contextPath}/story/goNutrition.do">Nutrition</a>
                </span>
                <span class="navspan">
                    <a href="${pageContext.request.contextPath}/story/goEvent.do">Event</a>
                </span>
            </div>
        </div>

 
		<div id="roulettediv">
   
			<img src="${pageContext.request.contextPath}/resources/images/roulettepan1.png" id="letteboard">
			<img src="${pageContext.request.contextPath}/resources/images/niddle.png" id="n_id">
			<br />
			<c:if test="${ couponStatus.equals('Y') }">
				<input type='button' value='당신의 행운을 시험해볼까요?' id='start_btn' class="btn btn-outline-danger"></input>
			</c:if><c:if test="${ couponStatus.equals('N')}">
				<input type='button' value='당신의 행운을 시험해볼까요?' id='start_btn' class="btn btn-outline-danger" disabled></input>
			</c:if>
			
			<!-- 
			<div id="result_id"></div>
			<div id="result_id2"></div>
			<div id="result_id3"></div>
			 -->
			 
			<script>
			window.onload = function(){
				
				var pArr = ["0:15% 할인쿠폰","1:5% 할인쿠폰","2:10% 할인쿠폰","3:7% 할인쿠폰","4:5% 할인쿠폰","5:5% 할인쿠폰","6:7% 할인쿠폰","7:5% 할인쿠폰"];
			
				$('#start_btn').click(function(){
					$('#start_btn').prop('disabled', true);
					rotation();
				});
			
				function rotation(){
					$("#letteboard").rotate({
					  angle:0, 
					  animateTo:360 * 5 + randomize(0, 360),
					  center: ["50%", "50%"],
					  easing: $.easing.easeInOutElastic,
					  callback: function(){ 
									var scope = $(this).getRotateAngle();
									endAnimate(scope);
								},
					  duration:5000
				   });
				} 
				
				
				// 룰렛이 끝나고 나서 아래 상품범위를 통하여 결과 뽑아내기
				function endAnimate($scope){
					var scope = $scope;
					
					$('#result_id').html("<p>움직인각도:" + scope + "</p>");
					var real_angle = scope%360+21;
					var part = Math.floor(real_angle/45);
					
					$('#result_id2').html("<p>상품범위:" + part + "</p>");
					
					sendRouletteData(pArr[part].split(':')[1], '${member.userId}');
					
					if(part < 1){
						$('#result_id3').html("<p>당첨내역:" + pArr[0] + "</p>");
						return;
					}
			
					if(part >= 8){
						$('#result_id3').html("<p>당첨내역:" +  pArr[0] + "</p>");
						return;
					}
			
					$('#result_id3').html("<p>당첨내역:" + pArr[part] + "</p>");
					
					
				}
				function sendRouletteData(couponType, userId){
					console.log(couponType + ", " + userId);
					$.ajax({
						type : "POST",
						url : "/leteatvi/story/getCoupon.do",
						data : {
							couponType : couponType,
							userId : userId
						},
						success : function(data){
							console.log(data);
							alert(couponType + " 을 획득하였습니다! ")
						}, error : function(){
							alert("다시 시도해주세요");
						}
					});
				}
				function randomize($min, $max){
					return Math.floor(Math.random() * ($max - $min + 1)) + $min;
				}
				
				
				
			};
			</script>
			
			</div>
</div>

    <br><br><br><br><br>
   	<!-- footer -->
	<footer class="footer" style="margin-top: 150px;">
		<div class="top">
			<div class="container">
				<div class="row">
					<article class="col-md-12 col-sm-10">
						<!-- 페이지 주제 -->
						<div class="about content">
							<p class="sub">렛 잇 비</p>
							<!-- 이름 및 환불규정, 개인정보취급방침 -->
							<p class="name">
								KH정보교육원&nbsp;|&nbsp;대표자:
								유정훈&nbsp;|&nbsp;책임자:&nbsp;박지환&nbsp;이철원&nbsp;전소연&nbsp;구도욱&nbsp;노다비&nbsp;곽민지<br />
								<a href="refund.html">환불규정</a>&nbsp;|&nbsp;<a
									href="privacy.html">개인정보취급방침</a>
							</p>
							<!-- 주소 및 이메일 -->
							<div class="list-icon">
								<div>
									&nbsp;<i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;서울특별시
									강남구 테헤란로14길 6 남도빌딩
								</div>

								<div>
									<i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;let_eat_vi @
									gmail.com
								</div>
								<p class="bottom">
									<span>KH정보교육원</span> Made by 영양실조</a> <i class="fa fa-copyright"></i>
									2021
								</p>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>

		<!-- 맨 위로 스크롤 버튼 -->
		<a href="#" class="scroll"
			style="position: fixed; bottom: 30px; right: 30px;"><img
			src="${pageContext.request.contextPath}/resources/images/up.png"
			alt="Top" width="30px" height="30px"></a> <a href=""
			style="position: fixed; bottom: 180px; right: 26px;"><img
			src="${pageContext.request.contextPath}/resources/images/kakao.png"
			style="width: 40px;"></a> <a href=""
			style="position: fixed; bottom: 124px; right: 29px;"><img
			src="${pageContext.request.contextPath}/resources/images/store.png"
			style="width: 35px;"></a> <a href=""
			style="position: fixed; bottom: 72px; right: 31px;"><img
			src="${pageContext.request.contextPath}/resources/images/shopping-cart.png"
			style="width: 35px;"></a>
	</footer>

	<!-- 스크롤 효과 -->
	<script>
		var $target = $('.scroll');
		$target.on('click', function() {
			$('html, body').animate({
				'scrollTop' : 0
			}, 200);
			return false;
		});
	</script>
	<!-- footer 끝 -->

</body>

</html>