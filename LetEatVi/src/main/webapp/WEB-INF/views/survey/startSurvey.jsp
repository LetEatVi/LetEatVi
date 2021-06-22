<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Survey</title>
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/startSurvey.css">

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
</head>
<style>
/* font url */

@font-face {
	font-family: 'S-CoreDream-3Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
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

@font-face {
	font-family: 'IBMPlexSansKR-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
}

@font-face {
	font-family: 'IBMPlexSansKR-Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
<body>

	<section>
		<c:import url="../common/header.jsp" />

		<div id='survey'>
			<div id="survey-wrap">
				<div id="survey-content">
					<div class="survey-inner">
						<div id="survey-start">
							<div id="start-header">
								<a href="#"> <img
									src="${pageContext.request.contextPath}/resources/images/surveyImg/cross.png"
									alt="설문닫기 버튼">
								</a>

								
	                            <div class="row" style="width: 100%;">
	                            <div class="col" style="padding-top: 30px; padding-left: 10px;">
	                                <div class="row" id="brand">LET EAT VI</div>
	                                
	                                <div class="row" id="brand-text">이제 비타민 먹자!</div>
	                            </div>
	                            <div class="col" style="max-width: 30%;">
	                             <img class="logo" src="${pageContext.request.contextPath}/resources/images/surveyImg/leteatvi.png" alt="Let Eat Vi">
	                            </div>
	                        </div>
	                         

								<!-- 
								<p id="brand">LET EAT VI</p>

								<p id="brand-text">이제 비타민 먹자!</p>

								<div class="row">
									<img class="logo"
										src="${pageContext.request.contextPath}/resources/images/surveyImg/fruit.png"
										alt="Let Eat Vi">
								</div>
								 -->
								

								<div id="start-intro">
									<p>
										관심 있는 영양소, 필요한 영양성분을 찾아봐요. <br> 약 1분 정도 소요 됩니다.
									</p>
									<form action="/leteatvi/survey/survey1.do">
										<div id="btn-wrap">
											<button type="submit" id="btn-start">시작하기</button>
											<span id="mention"> ※ 치료 목적 및 질병의 진단은 전문적인 의료 기간을
												이용해주세요.</span>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<c:import url="../common/footer.jsp" />
	</section>

</body>

</html>