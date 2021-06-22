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


	<div class="main" id="pdfDiv">

		<div class="wrapper">


			<!---------------------------------- Side Bar Start ----------------------------------->
			<%@include file="adminSidebar.jsp"%>
			<!------------------------------------ Side Bar End --------------------------------->


			<!-- 대시보드 시작 -->
			<div class="dashboard">

				<div class="dashboard-sec">

					<!-- -------------------- Dashboard Inner Start ------------------------ -->
					<div class="DashContent">



						<!-- ------------------------Left Section Start--------------------------- 
						(Overview, Chart, Best Seller, Trend Report)-------------------------------------->
						
						<div class="leftDiv">

							<h1 id="items_title">OVERVIEW</h1>

							<!-- -------------------- Overview Start------------------------ -->
							<div class="report">

								<!-- 판매 금액 -->
								<div class="report1">
									<p>TOTAL INCOME</p>
									<h4>${totalIncome}원</h4>


									<canvas id="report1"></canvas>
									<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
									<script>
										var ctx = document
												.getElementById('report1');
										var report1 = new Chart(
												ctx,
												{
													type : 'doughnut',
													data : {
														datasets : [ {
															label : ['totalincome','goal'],
															data : [${totalIncome}, '9999999'],
															
																backgroundColor : [
															'#1ec0ff',
																'rgba(255, 255, 255, 1)'
																
																],
																borderColor : ['none','none']
														} ]
													},
													options : {
														cutoutPercentage: 85,
														responsive : false,
														scales : {
															yAxes : [ {
																display : false,
															} ]
														},
													}
													     
												});
									</script>




								</div>

								<!-- 판매 개수 -->
								<div class="report2">
									<p>TOTAL SELLING</p>
									<h4>${totalSell}개</h4>
									<canvas id="report2"></canvas>
									<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
									<script>
										var ctx = document
												.getElementById('report2');
										var report2 = new Chart(
												ctx,
												{
													type : 'doughnut',
													data : {
														datasets : [ {
															label : ['totalincome','goal'],
															data : [${totalSell}, '999'],
															backgroundColor : [
																'#fe4365',
																	'rgba(255, 255, 255, 1)'
																	
																	],
																	borderColor : ['none','none']
															} ]
														},
													options : {
														cutoutPercentage: 85,
														responsive : false,
														scales : {
															yAxes : [ {
																display : false,
															} ]
														},
													}
												});
									</script>
								</div>

								<!-- 회원 수 -->
								<div class="report3">
									<p>TOTAL MEMBER</p>
									<h4>${totalMember}명</h4>
									<canvas id="report3"></canvas>
									<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
									<script>
										var ctx = document
												.getElementById('report3');
										var report3 = new Chart(
												ctx,
												{
													type : 'doughnut',
													data : {
														datasets : [ {
															label : ['totalincome','goal'],
															data : [${totalMember}, '99'],
															backgroundColor : [
																'#f9d423',
																	'rgba(255, 255, 255, 1)'
																	
																	],
																	borderColor : ['none','none']
															} ]
														},
													options : {
														cutoutPercentage: 85,
														responsive : false,
														scales : {
															yAxes : [ {
																display : false,
															} ]
															
														},
													}
												});
									</script>
								</div>


							</div>
							<!-- -------------------- Overview End------------------------ -->



							<!-- -------------------- Chart Start------------------------ -->
							<h1 id="items_title">TOTAL SALES</h1>
							<!-- 대시보드 차트 시작 -->
							
							<div class="order_chart">
								<div class="content">
									<canvas id="myChart" width="900" height="270"></canvas>
									<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
									<script>
										var ctx = document
												.getElementById('myChart');
										var myChart = new Chart(
												ctx,
												{
													type : 'line',
													data : {
														labels : [ '1월',
																'2월',
																'3월',
																'4월',
																'5월',
																'6월',
																'7월',
																'8월',
																'9월',
																'10월',
																'11월',
																'12월'],
														datasets : [ {
															label : [${totalSales.get(0).salesdate},${totalSales.get(1).salesdate},${totalSales.get(2).salesdate},
																${totalSales.get(3).salesdate},${totalSales.get(4).salesdate}],
															data : [${totalSales.get(0).quantity},${totalSales.get(1).quantity},${totalSales.get(2).quantity},
																${totalSales.get(3).quantity},${totalSales.get(4).quantity}],
															backgroundColor : [
																	'rgba(255, 99, 132, 0.2)',
																	'rgba(54, 162, 235, 0.2)',
																	'rgba(255, 206, 86, 0.2)',
																	'rgba(75, 192, 192, 0.2)',
																	'rgba(153, 102, 255, 0.2)',
																	'rgba(255, 159, 64, 0.2)' ],
															borderColor : [
																	'rgba(255, 99, 132, 1)',
																	'rgba(54, 162, 235, 1)',
																	'rgba(255, 206, 86, 1)',
																	'rgba(75, 192, 192, 1)',
																	'rgba(153, 102, 255, 1)',
																	'rgba(255, 159, 64, 1)' ],
															borderWidth : 2
														} ]
													},
													options : {
														legend: {
												        	display: false
												        },
														responsive : false,
														scales : {
															yAxes : [ {
																ticks : {
																	beginAtZero : true
																},
															 }]
															
														},
													}
												});
									</script>
								</div>
							</div>
							<!-- -------------------- Chart End------------------------ -->


							<h4 id="items_title" style="margin-top: 15px;">TREND REPORT</h4>
							<!-- -------------------- Bottom Div Box Start------------------------ -->
							<div class="bottomDiv">

								<!-- Best Seller Div Box Start -->
								<div class="bestSeller">


									<!-- imgae slider Start -->
									<div class="img-slider">
										<div class="slide">
											<img
												src="${pageContext.request.contextPath}/resources/images/admin/product_1.PNG"
												alt="" />
										</div>

										<div class="slide">
											<img
												src="${pageContext.request.contextPath}/resources/images/admin/product_2.jpg"
												alt="" />
										</div>

										<div class="slide">
											<img
												src="${pageContext.request.contextPath}/resources/images/admin/product_3.jpg"
												alt="" />
										</div>

										<div class="slide">
											<img
												src="${pageContext.request.contextPath}/resources/images/admin/product_4.jpg"
												alt="" />
										</div>

										<div class="slide">
											<img
												src="${pageContext.request.contextPath}/resources/images/admin/product_5.jpg"
												alt="" />
										</div>

										<div class="slide_navigation">
											<div class="slideBtn active"></div>
											<div class="slideBtn"></div>
											<div class="slideBtn"></div>
											<div class="slideBtn"></div>
											<div class="slideBtn"></div>
										</div>

									</div>
									<!-- imgae slider End -->
									
									<!-- slider Script -->
									<script type="text/javascript">
										    var slides = document.querySelectorAll('.slide');
										    var btns = document.querySelectorAll('.slideBtn');
										    let currentSlide = 1;
										
										    // Javascript for image slider manual navigation
										    var manualNav = function(manual){
										      slides.forEach((slide) => {
										        slide.classList.remove('active');
										
										        btns.forEach((btn) => {
										          btn.classList.remove('active');
										        });
										      });
										
										      slides[manual].classList.add('active');
										      btns[manual].classList.add('active');
										    }
										
										    btns.forEach((btn, i) => {
										      btn.addEventListener("click", () => {
										        manualNav(i);
										        currentSlide = i;
										      });
										    });
										
										    // Javascript for image slider autoplay navigation
										    var repeat = function(activeClass){
										      let active = document.getElementsByClassName('active');
										      let i = 1;
										
										      var repeater = () => {
										        setTimeout(function(){
										          [...active].forEach((activeSlide) => {
										            activeSlide.classList.remove('active');
										          });
										
										        slides[i].classList.add('active');
										        btns[i].classList.add('active');
										        i++;
										
										        if(slides.length == i){
										          i = 0;
										        }
										        if(i >= slides.length){
										          return;
										        }
										        repeater();
										      }, 3000);
										      }
										      repeater();
										    }
										    repeat();
										    </script>
									<!-- slider Script End -->
								</div>
								<!-- Best Seller Div Box End -->


								<!-- Trend Report Chart Start  -->
								<div class="trendReport">
									<canvas id="trendChart" width="560" height="170"></canvas>
									<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
									<script>
										var ctx = document
												.getElementById('trendChart');
										var trendChart = new Chart(
												ctx,
												{
													type: 'bar',
													data : {
														labels : [ '상품1', '상품2', '상품3' ],
														datasets : [ {
															label : [${totalSales.get(0).salesdate},${totalSales.get(1).salesdate},${totalSales.get(2).salesdate}],
															data : [${totalSales.get(0).quantity},${totalSales.get(1).quantity},${totalSales.get(2).quantity}],
															backgroundColor : [
																	'rgba(255, 99, 132, 0.8)',
																	'rgba(54, 162, 235, 0.8)',
																	'rgba(255, 206, 86, 0.8)', ],
														} ]
													},
													options : {
														legend: {
												        	display: false
												        },
														responsive : false,
														scales : {
															yAxes : [ {
																ticks : {
																	beginAtZero : true
																}
															} ]
														},
													}
												});
									</script>
								</div>
								<!-- Trend Report Chart End  -->
							</div>
							<!-- -------------------- Bottom Div Box End------------------------ -->

						</div>
						<!-- -------------------------Left Section End---------------------------- -->




 						<!-- ------------------------Right Section Start--------------------------- 
						(Notification, Calendar, Script)-------------------------------------->
						<%@include file="adminRightDiv.jsp"%>
						<!-- -------------------------Right Section End---------------------------- -->
						
						

</div>
</div>
</div>
</div>
</div>
</body>
</html>