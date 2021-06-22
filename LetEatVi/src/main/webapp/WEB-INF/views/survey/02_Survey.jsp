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
	href="${pageContext.request.contextPath}/resources/css/surveyProcess.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/footer.css" />

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">

<style>
/* 진행 레이트 */
#survey-progress {
	width: 100%;
	height: 10px;
	background-color: white
}

#survey-progress-rate {
	width: 25%;
	height: 10px;
	background-color: orange
}

#survey-step li:first-child {
	color: orangered;
}

/* 배경 */
#survey-content {
	background-image:
		url(/leteatvi/resources/images/surveyImg/background2.png);
}

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
</head>

<body>

	<section>
		<c:import url="../common/header.jsp" />

		<div id="survey">
			<div id="survey-wrap">
				<div id="survey-content">
					<div id="survey-inner">
						<div id="survey-start">
							<a href="/leteatvi" onclick="closeSurvey(''); return false;">
								<img
								src="${pageContext.request.contextPath}/resources/images/surveyImg/cross.png"
								alt="설문닫기 버튼">
							</a>
							<div id="survey-test">
								<nav id="survey-test-header">
									<ul id="survey-step">
										<li data="기본정보">기본정보</li>
										<li data="관심/증상">관심/필요</li>
										<li data="생활 습관">생활습관</li>
										<li data="기타">기타</li>
									</ul>
								</nav>
								<!-- 진행하는 것 색깔 주는 줄 -->
								<div class="survey-progress">
									<div id="survey-progress-rate"></div>
								</div>

								<form id="frmSecond" action="/leteatvi/survey/survey3.do">
									<div id="survey-question">
										<section id="question-section">
											<em>질문 2</em>
											<h2>
												<span><b id="namePlace"></b>님의 정보를 알려주세요.</span>
											</h2>
											<br>
											<ul id="survey-answer">
												<div id="answer-title">* 나이</div>
												<br>
												<li><select name="answer-age" id="answer-age">
														<option value="-">선택</option>
														<option value="-" disabled></option>
														<option value="10대">10대</option>
														<option value="20대">20대</option>
														<option value="30대">30대</option>
														<option value="40대">40대</option>
														<option value="50대">50대 이상</option>
												</select></li>
											</ul>
											<br>
											<div id="answer-title">* 성별</div>
											<br>
											<div id="gender-wrap">
												<input class="answer-gender" type="checkbox" value="x">
												선택 안함 <input class="answer-gender" type="checkbox" value="F">
												여성 <input class="answer-gender" type="checkbox" value="M">
												남성
											</div>
										</section>
									</div>
									<div id="question-btn">
										<button type="button" id="prev-btn"
											onclick="location.href='/leteatvi/survey/survey1.do';">이전</button>
										<button type="submit" id="next-btn">다음</button>
									</div>
								</form>

							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<c:import url="../common/footer.jsp" />
	</section>
	<script>
		$(function(){
			$('#namePlace').text(sessionStorage.getItem('userName'));
		});
		
		$('.answer-gender').on('change',function(){
			
			var selectedValue = $(this).val();
			$('.answer-gender').not(this).prop('checked', false);
		});
		
		$('#frmSecond').on('submit', function(){
			sessionStorage.setItem('answer-age', $('#answer-age').val());
			sessionStorage.setItem('answer-gender', $('.answer-gender:checked').val());
			sessionStorage.setItem('q-count', "2");
		});
	</script>
</body>

</html>