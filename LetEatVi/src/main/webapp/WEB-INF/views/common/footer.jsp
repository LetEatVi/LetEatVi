<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<script src="${pageContext.request.contextPath}/resources/js/header.js"
	defer></script>


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
</style>
</head>
<body>
	<!-- footer -->
	<footer class="footer" style="margin-top: 150px;">
		<div class="top">
			<div class="container">
				<div class="row">
					<article class="col-md-12 col-sm-10">
						<!-- ????????? ?????? -->
						<div class="about content">
							<p class="sub">??? ??? ???</p>
							<!-- ?????? ??? ????????????, ???????????????????????? -->
							<p class="name">
								KH???????????????&nbsp;|&nbsp;?????????:
								?????????&nbsp;|&nbsp;?????????:&nbsp;?????????&nbsp;?????????&nbsp;?????????&nbsp;?????????&nbsp;?????????&nbsp;?????????<br />
								<a href="refund.html">????????????</a>&nbsp;|&nbsp;<a
									href="privacy.html">????????????????????????</a>
							</p>
							<!-- ?????? ??? ????????? -->
							<div class="list-icon">
								<div>
									&nbsp;<i class="fa fa-map-marker"></i>&nbsp;&nbsp;&nbsp;???????????????
									????????? ????????????14??? 6 ????????????
								</div>

								<div>
									<i class="fa fa-envelope"></i>&nbsp;&nbsp;&nbsp;let_eat_vi @
									gmail.com
								</div>
								<p class="bottom">
									<span>KH???????????????</span> Made by ????????????</a> <i class="fa fa-copyright"></i>
									2021
								</p>
							</div>
						</div>
					</article>
				</div>
			</div>
		</div>

		<!-- ??? ?????? ????????? ?????? -->
		<a href="#" class="scroll"
			style="position: fixed; bottom: 30px; right: 30px;"><img
			src="${pageContext.request.contextPath}/resources/images/up.png"
			alt="Top" width="30px" height="30px"></a> <a href=""
			style="position: fixed; bottom: 180px; right: 26px;"><img
			src="${pageContext.request.contextPath}/resources/images/kakao.png"
			style="width: 40px;"></a> <a href="${pageContext.request.contextPath}/store/goStore.do"
			style="position: fixed; bottom: 124px; right: 29px;"><img
			src="${pageContext.request.contextPath}/resources/images/store.png"
			style="width: 35px;"></a> <a href="${pageContext.request.contextPath}/store/goCart.do?userId=${member.userId}"
			style="position: fixed; bottom: 72px; right: 31px;"><img
			src="${pageContext.request.contextPath}/resources/images/shopping-cart.png"
			style="width: 35px;"></a>
	</footer>

	<!-- ????????? ?????? -->
	<script>
		var $target = $('.scroll');
		$target.on('click', function() {
			$('html, body').animate({
				'scrollTop' : 0
			}, 200);
			return false;
		});
	</script>
	<!-- footer ??? -->

</body>
</html>