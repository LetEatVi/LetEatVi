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
    
    #survey-step li:nth-child(3) {
    	color: orangered;
    }
    
    /* 배경 */
  	#survey-content {
    	background-image: url(/leteatvi/resources/images/surveyImg/background4.jpg);
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
	                            <div class="survey-progress">
	                                <div id="survey-progress-rate"></div>
	                            </div>
	                            
	                            <form id="frm4" action="">
		                            <div id="survey-question">
		                                <section id="question-section">
		                                    <em>질문 <b id="q-count"></b> | &nbsp;&nbsp; 피로 / 기운</em>
		                                    <h2>
		                                        <span><b id="namePlace"></b>님에게 해당되는 것을 모두 선택해주세요.</span>
		                                        <img id="get-img" src="${pageContext.request.contextPath}/resources/images/surveyImg/heart.png" alt="피로/기운 사진">
		                                    </h2>
		                                    <br>
		                                    <ul id="survey-answer">
		                                        <li>
		                                            <label for="heal01_a">
		                                                <input type="checkbox" name="heal01" id="heal01_a">
		                                                아침에 일어나기가 순탄지 않아요.
		                                            </label>
		                                            <label for="heal01_b">
		                                                <input type="checkbox" name="heal01" id="heal01_b">
		                                                식욕도 없고 무기력해요.
		                                            </label>
		                                            <label for="heal01_c">
		                                                <input type="checkbox" name="heal01" id="heal01_c">
		                                                잠을 잘 못드는 것 같아요.
		                                            </label>
		                                            <label for="heal01_d">
		                                                <input type="checkbox" name="heal01" id="heal01_d">
		                                                일상 속에서 활력이 필요해요!
		                                            </label>
		                                        </li>
		                                    </ul>
		                                </section>
		                            </div>
		                            <div id="question-btn">
		                                <button type="button" id="prev-btn" onclick="history.back(-1)">이전</button>
		                                <button type="submit" id="next-btn">다음</button>
		                            </div>
	                            </form>
	                            
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	    </div>
	    
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
	

		
	    
	    <c:import url="../common/footer.jsp"/>
	</section>
	<script>
		var interestType = sessionStorage.getItem('interestType').split(',');
		var q_count = Number(sessionStorage.getItem('q-count'));
		var answer_q1= [];
		$(function(){
			$('#namePlace').text(sessionStorage.getItem('userName'));
			
			interestType[0] = 2;
			$('#q-count').text(++q_count);
			sessionStorage.setItem('q-count', q_count );
		})
		
		/* 	
		$('#frm4').on('button', function(){
			var src = '';
			
			for(var i interestType){
				if(interestType[i] == 1) {
					var num = Number(i) + Number(4);
					src ='/leteatvi/survey/survey' + num + '.do';
					break;
				}
			}
		}
		 */			
		
        $('#frm4').on('submit', function(){
        	var url = '';
        	
        	for(var i in interestType){
        		if(interestType[i] == 1) {
        			var idx = Number(i) + Number(4);
        			url = '/leteatvi/survey/survey' + idx + '.do';
        			break;
        		}
        	}
        	
        	$('[name=heal01]').each(function(){
        		answer_q1.push($(this).prop('checked'));
        	});
        	
        	if(url == '') {
        		url = '/leteatvi/survey/survey10.do';
        	}
        	sessionStorage.setItem('interestType', interestType);
        	sessionStorage.setItem('answer_q1', answer_q1);
        	$(this).attr('action', url);
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