<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
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
	href="${pageContext.request.contextPath}/resources/css/footer.css"/>

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

    #survey-progress-rate{
        width: 100%;
        height: 10px;
        background-color: orange
    }
</style>
</head>

<body>
	
	<section>
		<c:import url="../common/header.jsp"/>
		<div id="survey">
	        <div id="survey-wrap">
	            <div id="survey-content">
	                <div id="survey-inner">
	                    <div id="survey-start">
	                        <a href="#" onclick="closeSurvey(''); return false;">
	                            <img src="${pageContext.request.contextPath}/resources/images/surveyImg/x_mark.png" alt="설문닫기 버튼">
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
	                            <div id="survey-progress">
	                                <div id="survey-progress-rate"></div>
	                            </div>
	                            
	                            <form id="frm10" action="">
		                            <div id="survey-question">
		                                <section id="question-section">
		                                    <em>질문 <b id="q-count"></b></em>
		                                    <h2>
		                                        <span><b id="namePlace"></b>님의 신장을 입력해주세요.</span>
		                                    </h2>
		                                    <p id="pContent">신장과 체중의 비율을 활용하여 체질량지수(BMI)를 나타냅니다.</p>
		                                    <br>
		                                    <ul id="survey-answer">
		                                        <li>
		                                            <div id="input-wrap">
		                                                <input id="content-full" type="tel" placeholder="키" maxlength="3" required>
		                                            </div>
		                                            <span id="unit">cm</span>
		                                        </li>
		                                    </ul>
		                                </section>
		                            </div>
		                            <div id="answerResultArea">
		                            	<ul id="survey-answer-list">
		                            		
		                            	</ul>
		                            </div>
		                            <div id="question-btn">
		                                <button id="prev-btn">이전</button>
		                                <button type="submit" id="next-btn">다음</button>
		                            </div>
	                            </form>
	                            
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    <c:import url="../common/footer.jsp"/>
	</section>
	<script>
	
	var q_count = Number(sessionStorage.getItem('q-count'));
	
	$(function(){
		answerResult();
		
		$('#namePlace').text(sessionStorage.getItem('userName'));
		
		$('#q-count').text(++q_count);
		sessionStorage.setItem('q-count', q_count );
		
	})
	// 결과에 들어갈 내용
	// 2,0,0,2,2,0
	var interestType = sessionStorage.getItem('interestType').split(',');
	
	function answerResult(){
		for(var i in interestType){

			var type = sessionStorage.getItem('interestTitle').split(',')[i];
			
			if(interestType[i] == 2) {
				var answerText = '';
				// true, false, true, true
				// true (1) : OOO을 고려해보세요.
				// true (2) : OOO을 권장합니다.
				// true (3) : OOO을 추천합니다.
				// true (4) : OOO을 강력 추천합니다.
				var idx = Number(i) + Number(1);
				var answers = sessionStorage.getItem('answer_q' + idx).split(',');
				var answerCount = 0;
				
				for(var j = 0 ; j < answers.length ; j++){
					if(answers[j] == 'true'){
						answerCount++;
					}
				}

				switch(answerCount){
				case 1 :
					answerText = '타입을 고려해보세요.';
					break;
				case 2 :
					answerText = '타입을 권장합니다.';
					break;
				case 3 :
					answerText = '타입을 추천합니다.';
					break;
				case 4 :
					answerText = '타입을 강력 추천합니다.';
					break;
				}

				var interestResult = "["+type +"]" + answerText;
				var $li = $('<li>').text(interestResult);
				
				$('#survey-answer-list').append($li);
			}
		}	
	}
	
	$('#frm10').on('submit', function(){

    	$('[name=heal06]').each(function(){
    		answer_q6.push($(this).prop('checked'));
    	});
    	sessionStorage.setItem('answer_q6', answer_q6);
    	
    	sessionStorage.setItem('interestType', interestType);
    	$(this).attr('action', '/leteatvi/survey/survey11.do');
    });
	
	</script>
</body>

</html>