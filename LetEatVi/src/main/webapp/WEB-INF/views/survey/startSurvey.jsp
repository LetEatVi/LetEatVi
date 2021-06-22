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
	href="${pageContext.request.contextPath}/resources/css/startSurvey.css">

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
</head>
<body>
	
	<section>
		<c:import url="../common/header.jsp" />

		<div id='survey'>
			<div id="survey-wrap">
				<div id="survey-content">
					<div class="survey-inner">
						<div id="survey-start">
							<div id="start-header">
								<a href="#" id="closeBtn"> <img
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