<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<head th:fragment="head">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrinkto-fit=no">
<title>Hello, world!</title>

<!-- Apex Chart-->
<script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
<!-- JQeury CDN -->
<script src="https://code.jquery.com/jquery-2.2.4.js"
	integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
	crossorigin="anonymous"></script>
<!-- JS -->
<script defer
	src="${pageContext.request.contextPath}/resources/js/calendar.js"></script>
<script defer
	src="${pageContext.request.contextPath}/resources/js/adminMain.js"></script>

<script defer
	src="${pageContext.request.contextPath}/resources/js/jspdf.min.js"></script>
<script defer
	src="${pageContext.request.contextPath}/resources/js/html2canvas.js"></script>

<!-- CSS -->
<link
	href="${pageContext.request.contextPath}/resources/css/admin/adminMain.css"
	rel="stylesheet">

<link
	href="${pageContext.request.contextPath}/resources/css/admin/adminMember.css"
	rel="stylesheet">
<!-- FONT AWSOME -->
<script src="https://kit.fontawesome.com/2004329f9f.js"
	crossorigin="anonymous"></script>
<!-- BOOTSTRAP CDN v4.6.0 -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>


<!-- font url -->
<style>
@font-face {
	font-family: 'IBMPlexSansKR-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

* {
	font-family: 'IBMPlexSansKR-Regular';
}
</style>
<body>

<!--  Admin Page Footer : Right Div ( Notification, Calendar, Script ) -->




 
						<!-- ------------------------Right Section Start--------------------------- 
						(Notification, Calendar)-------------------------------------->
						<div class="rightDiv">



							<h1 id="items_title" style="margin-left: 15px;">NOTIFICATION</h1>
							<!-- -------------------------Notification Div Box Start ---------------------------- -->
							<div class="notice">
								<div class="notice_content">


									<!-- -------------------------Notification Title Start---------------------------- -->
									<div class="notifi_wrapper">
										<div class="notification">
										
											<img
												src="${pageContext.request.contextPath}/resources/images/admin/profile.png"
												alt="" class="adminProfile">
												
											<h4 class="adminName">노다비</h4>

											<ul class="adminIcons">
												<li><a href="#"><i class="far fa-envelope"
														id="message"></i></a></li>
												<li><a href="#"><i class="fas fa-bell"
														></i></a></li>
												<li><a href="#"><i class="fas fa-cog"
														id="selectMessage"></i></a></li>
											</ul>
										</div>
									</div>
									<!-- -------------------------Notification Title End---------------------------- -->

									<!-- -------------------------Message Div Box Start---------------------------- -->
									<h4 id="recentMsg">RECENT MESSAGE</h4>
									<div class="messageBox">

										<!-- Message From User Div Box Start -->
										<c:forEach items="${message}" var="ms">
											<div class="message">
												<h5>${ms.userId}</h5>
												<p>${ms.message}</p>
											</div>
										</c:forEach>
										<!-- Message From User Div Box End -->

									</div>
									<!-- -------------------------Message Div Box End---------------------------- -->

								</div>

							</div>
							<!-- -------------------------Notification Div Box End ---------------------------- -->


							<!-- -------------------------Calendar Div Box Start ---------------------------- -->

							<div id="calendarForm"></div>
						

						<!-- -------------------------Calendar Div Box End ---------------------------- -->
						
						<!-- -------------------------Button Div Box Start  (Download PDF, Daily Report)---------------------------- -->

							<div id="buttonBox">
							<button class="savePdfBtn" id="savePdfBtn">DOWNLOAD TO PDF</button>
							<button class="dailyReport" id="dailyReport">GO TO REPORT</button>
							</div>
						

						<!-- -------------------------Button Div Box End ---------------------------- -->
						
						
						
						
						</div>
					<!-- -------------------------Right Section End---------------------------- -->



	<!-- -------------------------------- Message Modal Start ---------------------------- -->
	<div class="insertMessage">
		<div class="insert_ms_Inner">

			<h4 id="messageTitle">보낼 메세지</h4>

			<!-- --------------- message_select Start ------------ -->
			<div class="message_select">
				<form action="" method="POST" class="messageForm" id="messageForm">
					<div class="select">
						<div class="item">
							<div>
								<p type="text" class="userId" name="userId" id="userId">TEST01</p>
								<div>
									<input type="text" class="messageContent" name="message"
										id="messageContent">
								</div>
							</div>

						</div>
					</div>

						<!-- 모달 푸터 -->
						<div class="modal-footer">
							<button type="button" class="btn btn-primary"
								onclick="insertMessage()">전송</button>
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">취소</button>
						</div>
						<!-- // 모달 푸터 -->
				</form>
			</div>
			<!-- --------------- message_select End ------------ -->
		</div>
	</div>
	<!-- -------------------------------- Message Modal End ---------------------------- -->






<!-- -------------------------------- Send Message and Reload -------------------------------- -->
	<!--  메세지 전송 비동기통신 시작 -->
	<script>
	        function insertMessage(){
	        	var userId = $("#userId").text();
	    		var message = $("#messageContent").val();
	    		
	    		
	    		
	        	
	        	$.ajax({
		            url  : "${pageContext.request.contextPath}/admin/InsertMessage.do",
		            data : { userId:userId, message:message },
		            type : "post",
		            success : function(result){
		            	
		            	alert("메세지 전송이 완료되었습니다.");
		            	$("#userId").val('');
		            	$("#messageContent").val('');

		            	 	                
		            }
		            	            
	        	}); 
	    	}   
        </script>
	<!--  메세지 전송 비동기통신 끝 -->

	<!--  메세지 조회 비동기통신 시작 -->
	<script>
	$('#selectMessage').click(function() { 
		
		$('#messageBox').empty();
    		
	        	
	        	$.ajax({
		            url  : "${pageContext.request.contextPath}/admin/selectMessage.do",
		            data : {  },
		            type : "get",
		            success : function(result){
		            	
						
		                
		                for(var i = 0 ; i < result.length; i++){
		                	var selectMessage = '<h5>' + result[i].userId + '</h5>'
		                	+ '<p>' + result[i].message + '</p>'

		                	$('.message').append(selectMessage);    
		                }

		            } 	                
		            }); 
	            }); 
        </script>
	<!--  메세지 조회 비동기통신 끝 -->


	<!-- -------------------------------- Download to PDF -------------------------------- -->
	<script> 
$('#savePdfBtn').click(function() { 
  html2canvas($('#pdfDiv')[0]).then(function(canvas) { 
    // 캔버스를 이미지로 변환 
    let imgData = canvas.toDataURL('image/png');

    var margin = 10; // 출력 페이지 여백설정 
    var imgWidth = 210 - ( 10 * 2 ); // 이미지 가로 길이(mm) A4 기준
    var pageHeight = imgWidth * 1.414;  // 출력 페이지 세로 길이 계산 A4 기준
    var imgHeight = canvas.height * imgWidth / canvas.width;
    var heightLeft = imgHeight;

    var doc = new jsPDF('p', 'mm');
    var position = margin;

    // 첫 페이지 출력
    doc.addImage(imgData, 'PNG', margin, position, imgWidth, imgHeight);
    heightLeft -= pageHeight;

    // 한 페이지 이상일 경우 루프 돌면서 출력
    while (heightLeft >= 20) {
        position = heightLeft - imgHeight;
        doc.addPage();
        doc.addImage(imgData, 'PNG', 0, position, imgWidth, imgHeight);
        heightLeft -= pageHeight;
    }

    // 파일 저장 
    doc.save('sample.pdf'); 
    }); 
    }); 
    </script>
    
    <!-- -------------------------------------------- Daily Report --------------------------------------------- -->
    
    <script>
    $('#dailyReport').click(function() { 
    	var year = $('#year').text();
   		var month = $('#month').text();
 		var day = $('.select_day').text();
 		
 		var date = year + "/" + month + "/" + day;
 		
 		location.href ="${pageContext.request.contextPath}/admin/adminReport.do?date=" + date;
    	
    	
    });
    </script>
    
    





</body>
</html>