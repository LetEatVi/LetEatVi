<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<<<<<<< HEAD
<head th:fragment="head">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrinkto-fit=no">
<title>Hello, world!</title>
=======
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrinkto-fit=no">
    <title>Hello, world!</title>
>>>>>>> refs/remotes/origin/Minji

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

					<!-- -------------------- Dashboard Inner Start------------------------ -->
					<div class="DashContent">



						<!-- ------------------------Left Section Start--------------------------- 
						(Overview, Chart, Best Seller, Trend Report)-------------------------------------->
						
						<div class="leftDiv">

							<h1 id="items_title">MEMBER VIEW</h1>


							<!-- -------------------- Member View Div Start------------------------ -->
							<div class="member">


								<div class="member_inner">


									<!-- -----------------------Member Search Bar Start ------------------------ -->
									<div id="searchProduct">

										<form class="searchForm">

											<div class="col-sm-8">
												<input type="text" class="form-control form-control-sm"
													placeholder="상품 이름을 입력하세요." name="pname" id="pname" />
											</div>
											
											<button type="button" class="searchBtn" id="searchBtn"
												onclick="searchProduct()">
												<i class="fas fa-search"></i>
											</button>

										</form>
										
										<button type="button" class="insertBtn" id="new">
											<i class="fas fa-plus"></i>
										</button>
										
									</div>
									<!-- -----------------------Member Search Bar End ------------------------ -->

									<!-- --------------------- 회원 정보 조회 테이블 Start -------------------------- -->
									<div class="scrollable">
										<table class="table table-hover text-center" id="productTbl">

											<thead>
												<tr data-target="#listmodal" data-toggle="modal" id="sorter">
													<th>카테고리</th>
													<th style="display: none;">상품식별자</th>
													<th>상품명</th>
													<th>가격</th>
													<th>재고량</th>
													<th>삭제버튼</th>
												</tr>
											</thead>
											
											
											
											<c:forEach items="${ap}" var="a">
												<tbody id="prdContent">
												<tr>
													<td>${a.cname}</td>
													<td style="display: none;">${a.pid}</td>
													<td>${a.pname}</td>
													<td>${a.pprice}</td>
													<td>${a.pstock}</td>
													<td id="del"><button type="button"
															class="btn btn-secondary" id="delBtn">삭제</button></td>
												</tr>
												</tbody>
											</c:forEach>

											<!-- ----------------------- 회원 정보 조회 테이블 End ------------------------ -->
										</table>
									</div>
								</div>
							</div>
							<!-- -------------------- Member View Div  End------------------------ -->
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