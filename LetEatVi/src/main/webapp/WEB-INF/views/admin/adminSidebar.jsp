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

			<!-- background image -->
			<img
				src="${pageContext.request.contextPath}/resources/images/admin/bg-1.png"
				alt="" class="bgImg">

			<!-- 사이드바 시작 -->
			<div class="sidebar">
				<div class="sidebar_inner">
			

					<!-- 사이드바 메뉴 -->
					<ul class="sidebar_menu">
						<li class="active"><a
							href="${pageContext.request.contextPath}/admin/adminMain.do"><i
								class="fas fa-chart-bar"></i></a></li>
						<li><a href="#"><i class="fas fa-database"></i></a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/adminProduct.do"><i
								class="fas fa-boxes"></i></a></li>
						<li><a href="#"><i class="fas fa-file-invoice-dollar"></i></a></li>
						<li><a
							href="${pageContext.request.contextPath}/admin/adminMember.do"><i
								class="fas fa-user-friends"></i></a></li>
						<li><a href="#"><i class="fas fa-cogs"></i></a></li>
						<li><a href="#"><i class="fas fa-wrench"></i></a></li>
						<li><a href="#"><i class="fas fa-wrench"></i></a></li>
						<li><a href="#"><i class="fas fa-wrench"></i></a></li>
					</ul>
				</div>
			</div>
			<!-- 사이드바 끝 -->


			<!--------------------------------------------------------------------->



</body>
</html>