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
        width: 75%;
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
	                            <div class="survey-progress">
	                                <div id="survey-progress-rate"></div>
	                            </div>
	                            
	                            <form id="frm8" action="">
		                            <div id="survey-question">
		                                <section id="question-section">
		                                    <em>질문 <b id="q-count"></b> | &nbsp;&nbsp; 피부 / 모발</em>
		                                    <h2>
		                                        <span><b id="namePlace"></b>님에게 해당되는 것을 모두 선택해주세요.</span>
		                                        <img id="get-img" src="${pageContext.request.contextPath}/resources/images/surveyImg/skin.png" alt="피부/모발 사진">
		                                    </h2>
		                                    <br>
		                                    <ul id="survey-answer">
		                                        <li>
		                                            <label for="heal05_a">
		                                                <input type="checkbox" name="heal05" id="heal05_a">
		                                                피부가 건조하거나 예민한 편 같아요.
		                                            </label>
		                                            <label for="heal05_b">
		                                                <input type="checkbox" name="heal05" id="heal05_b">
		                                                여드름과 뾰루지 같은 염증이 자주 생겨요.
		                                            </label>
		                                            <label for="heal05_c">
		                                                <input type="checkbox" name="heal05" id="heal05_c">
		                                                탈모, 새치, 머리카락 등 모발 상태가 신경쓰여요.
		                                            </label>
		                                            <label for="heal05_d">
		                                                <input type="checkbox" name="heal05" id="heal05_d">
		                                                피부에 관심이 많고 건강한 피부 개선이 필요해요!
		                                            </label>
		                                        </li>
		                                    </ul>
		                                </section>
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
		var interestType = sessionStorage.getItem('interestType').split(',');
		var q_count = Number(sessionStorage.getItem('q-count'));
		var answer_q5= [];
		$(function(){
			$('#namePlace').text(sessionStorage.getItem('userName'));
			
			interestType[4] = 2;
			$('#q-count').text(++q_count);
			sessionStorage.setItem('q-count', q_count );
		})
		
		$('#frm8').on('submit', function(){
			
        	var url = '';
        	
        	for(var i in interestType){
        		if(interestType[i] == 1) {
        			var idx = Number(i) + Number(4);
        			url = '/leteatvi/survey/survey' + idx + '.do';
        			break;
        		}
        	}
        	
        	if(url == '') {
        		url = '/leteatvi/survey/survey10.do';
        	}

        	
        	$('[name=heal05]').each(function(){
        		answer_q5.push($(this).prop('checked'));
        	});
        	sessionStorage.setItem('answer_q5', answer_q5);
        	sessionStorage.setItem('interestType', interestType);
        	$(this).attr('action', url);
        });
	</script>
</body>

</html>