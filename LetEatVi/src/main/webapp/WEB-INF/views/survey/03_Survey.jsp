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
        width: 50%;
        height: 10px;
        background-color: orange
    }
    
    #survey-step li:first-child {
    	color: orangered;
    }
</style>
</head>

<body>
	
	<section>
		<c:import url="../common/header.jsp"/>
	
		<div id="survey">
	        <div id="survey-wrap">
	            <div id="survey-content" style="height: 1000px;">
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
	                            
	                            <form id="frmThird" action="">
		                            <div id="survey-question">
		                                <section id="question-section">
		                                    <em>질문 3</em>
		                                    <h2>
		                                        <span><b id="namePlace"></b>님의 건강 관심 분야를 알려주세요.</span>
		                                    </h2>
		                                    <br>
		                                    <ul id="survey-answer-interest">
		                                        <li>
		                                            <label for="interest_heal01">
		                                                <input type="checkbox" name="interest" id="interest_heal01">
		                                                <img src="${pageContext.request.contextPath}/resources/images/surveyImg/heart.png" alt="피로/기운" id="interest1" onclick="changeColor(this)";>
		                                                <div>피로 / 기운</div>
		                                            </label>
		                                        </li>
		                                        <li>
		                                            <label for="interest_heal02">
		                                                <input type="checkbox" name="interest" id="interest_heal02" value="heal02">
		                                                <img src="${pageContext.request.contextPath}/resources/images/surveyImg/bowel.png" alt="장/간" id="interest2" onclick="changeColor(this)">
		                                                <div>장 / 간</div>
		                                            </label>
		                                        </li>
		                                        <li>
		                                            <label for="interest_heal03">
		                                                <input type="checkbox" name="interest" id="interest_heal03" value="heal03">
		                                                <img src="${pageContext.request.contextPath}/resources/images/surveyImg/bone.png" alt="관절/뼈" id="interest3" onclick="changeColor(this)">
		                                                <div>관절 / 뼈</div>
		                                            </label>
		                                        </li>
		                                        <li>
		                                            <label for="interest_heal04">
		                                                <input type="checkbox" name="interest" id="interest_heal04" value="heal04">
		                                                <img src="${pageContext.request.contextPath}/resources/images/surveyImg/eye.png" alt="눈 건강" id="interest4" onclick="changeColor(this)">
		                                                <div>눈 건강</div>
		                                            </label>
		                                        </li>
		                                        <li>
		                                            <label for="interest_heal05">
		                                                <input type="checkbox" name="interest" id="interest_heal05" value="heal05">
		                                                <img src="${pageContext.request.contextPath}/resources/images/surveyImg/skin.png" alt="피부/모발" id="interest5" onclick="changeColor(this)">
		                                                <div>피부 / 모발</div>
		                                            </label>
		                                        </li>
		                                        <li>
		                                            <label for="interest_heal06">
		                                                <input type="checkbox" name="interest" id="interest_heal06" value="heal06">
		                                                <img src="${pageContext.request.contextPath}/resources/images/surveyImg/metabolism.png" alt="면연력/노화" id="interest6" onclick="changeColor(this)">
		                                                <div>면역력 / 노화</div>
		                                            </label>
		                                        </li>
		                                    </ul>
		                                </section>
		                            </div>
		                            <div id="question-btn">
		                                <button type="reset" id="prev-btn" onclick="location.href='/leteatvi/survey/survey2.do';">이전</button>
		                                <button type="submit" id="next-btn">다음</button>
		                            </div>
	                            </form>
	                            
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	
	    <script>
	    	var interestTitle = ['피로 / 기운', '장 / 간', '관절 / 뼈', '눈 건강', '피부 / 모발', '면역력 / 노화'];
	    	var interestType = [];
	        function changeColor(interest) {
	            $(interest).toggleClass('selected-yellow');
	            interestType = [];
	            $('img[id*=interest]').each(function(item, index){
	            	if($(this).hasClass('selected-yellow')){
		            	interestType.push(1);
	            	} else {
	            		interestType.push(0);
	            	}
	            });
	            console.log(interestType);
	       }
	        $('#frmThird').on('submit', function(){
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
	        	sessionStorage.setItem('q-count', "3");
	        	sessionStorage.setItem('interestTitle', interestTitle);
	        	sessionStorage.setItem('interestType', interestType);
	        	
	        	$(this).attr('action', url);
	        });
	        $(function(){
				$('#namePlace').text(sessionStorage.getItem('userName'));
			});
	    </script>
	    
	    <c:import url="../common/footer.jsp"/>
	</section>
</body>

</html>