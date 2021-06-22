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
        width: 12%;
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
	            <div id="survey-content">
	                <div id="survey-inner">
	                    <div id="survey-start">
	                        <a href="#" id="closeBtn">
	                        	<img src="${pageContext.request.contextPath}/resources/images/surveyImg/cross.png"
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
	                            <div id="survey-progress">
	                                <div id="survey-progress-rate"></div>
	                            </div>
	                            
	                            <form id="frmFirst" action="/leteatvi/survey/survey2.do">
		                            <div id="survey-question">
		                                <section id="question-section">
		                                    <em>질문 1</em>
		                                    <h2>
		                                        <span>렛잇비에게 이름을 알려주세요.</span>
		                                    </h2>
		                                    <br>
		                                    <ul id="survey-answer">
		                                        <li>
		                                            <div id="input-wrap">
		                                                <input id="content-full" type="text" placeholder="이름 또는 닉네임" maxlength="10" value="${gst.userName}" name="userName" required>
		                                            </div>
		                                        </li>
		                                    </ul>
		                                </section>
		                            </div>
		                            <div id="question-btn">
		                                <button type="button" id="prev-btn" onclick="location.href='/leteatvi/survey/survey.do';">이전</button>
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
	
	<!-- The Modal -->
	<div id="myModal" class="modal">
	
	  <!-- Modal content -->
	  <div id="modal-content">
	  	<div id="modal-header">
	      <span class="closeWindow">&times;</span>
	      <span id="double-check">설문조사를 중단하시겠습니까 ? </span>
	    </div>
	    <div id="modal-body">
	      	<span>
		      	내용은 저장 되지 않습니다.메인화면으로 돌아갑니다.
		      	<br />
		      	계속 설문을 진행하시려면 '아니요'를 눌러주세요.
			</span>
			<div id="modal-btn">
			   	<button id="yes" onclick="yesBtn()">네</button>
			    <button id="no" class="noSurvey" onclick="noBtn()">아니요</button>
		    </div>
		</div>
	  </div>
	</div>
   	<!-- The Modal -->
	
	<script>
		$(function(){
			// 설문조사 초기화
			sessionStorage.clear();
			sessionStorage.setItem('q-count', "1");
		});
		$('#frmFirst').on('submit', function(){
			sessionStorage.setItem('userName', $('#content-full').val());
		});
		
		
		
		// Get the modal
		var modal = document.getElementById("myModal");
		
		// Get the button that opens the modal
		var btn = document.getElementById("closeBtn");
		
		// Get the <span> element that closes the modal
		var span = document.getElementsByClassName("closeWindow")[0];
		var no = document.getElementsByClassName("noSurvey")[0];
		
		// When the user clicks the button, open the modal 
		btn.onclick = function() {
		  modal.style.display = "block";
		}
		
		// When the user clicks on <span> (x), close the modal
		span.onclick = function() {
		  modal.style.display = "none";
		}
		
		no.onclick = function() {
       		alert("작성을 유지합니다.");
	        
		  	modal.style.display = "none";
		}
		
		// When the user clicks anywhere outside of the modal, close it
		window.onclick = function(event) {
		  if (event.target == modal) {
		    modal.style.display = "none";
		  }
		}
		
		function yesBtn(){
			
	       		alert("메인페이지로 이동합니다.");
			
	        	location.href="http://localhost:8088/leteatvi/";
		}
	</script>
</body>
</html>