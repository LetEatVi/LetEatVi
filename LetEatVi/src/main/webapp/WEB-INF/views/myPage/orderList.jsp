<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<title>Let Eat VI</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap"
	rel="stylesheet" />


<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/orderList.css">
<style>
@font-face {
	font-family: 'IBMPlexSansKR-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
}

@font-face {
	font-family: 'IBMPlexSansKR-Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>

	<div class="top-img"></div>

	<div class="container orderContext table" style="width: 1000px;">
		<div class="order-inner">
			<div class="buyProductText">
				<img class="tracking-img" src="${pageContext.request.contextPath}/resources/images/tracking.png">
				<span class="detail-title">&nbsp;&nbsp;주문목록</span>
				
				
				<!-- 주문내역 박스 -->
				<div class="order-entire-box">
					<p id="order-date"><b class="order-date">2021.06.18</b></p>
					<!-- 구매 상품 -->
					<div class="row detail-box"
						style="margin-right: 0px; margin-left: 48.3px;">
						<div class="col detail-content" style="max-width: 20%;">
							<div class="row shipping-status"
								style="padding-left: 36px; padding-top: 20px; font-size: 20px;">
								<b>배송완료</b>
							</div>
							<div class="row">
								<div class="col" style="padding: 0px 0px;">
									<img class="product_img" style="padding: 20px 30px;"
									src="${pageContext.request.contextPath}/resources/images/루테인 플러스.jpg">
								</div>
							</div>
						</div>
						<div class="col detail-text">
							<div class="row detail-text" style="height: 90px;"><b style="padding-top: 23px;">주문번호 300000102683771</b></div>
							<div class="row" class="product-name"
								style="padding-right: 30px; font-size: 17px;">루테인 플러스 외 2개</div>
							<div class="row" class="product-price"
								style="padding-right: 30px; font-size: 17px;"><b style="margin-top:5px;">총 78,000 원</b></div>
						</div>
						<div class="col detail-btn" style="max-width: 25%;">
							<div class="row">
								<button type="button" class="btn btn-dark btn-lg"
									id="detail-btn"
									style="width: 90%; border: 1px solid blue; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 32px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: blue;">배송조회</button>
								<button type="button"
									onclick="location.href='${pageContext.request.contextPath}/myPage/orderDetail.do'"
									class="btn btn-dark btn-lg" id="detail-btn"
									style="width: 90%; border: 1px solid #D3D3D3; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 25px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">상세보기</button>
							</div>
						</div>
					</div>
				</div>
				<div style="height: 40px;"></div>
				<!-- 주문내역 박스 끝 -->
				
				
								<!-- 주문내역 박스 -->
				<div class="order-entire-box">
					<p id="order-date"><b class="order-date">2021.06.18</b></p>
					<!-- 구매 상품 -->
					<div class="row detail-box"
						style="margin-right: 0px; margin-left: 48.3px;">
						<div class="col detail-content" style="max-width: 20%;">
							<div class="row shipping-status"
								style="padding-left: 36px; padding-top: 20px; font-size: 20px;">
								<b>배송완료</b>
							</div>
							<div class="row">
								<div class="col" style="padding: 0px 0px;">
									<img class="product_img" style="padding: 20px 30px;"
									src="${pageContext.request.contextPath}/resources/images/루테인 플러스.jpg">
								</div>
							</div>
						</div>
						<div class="col detail-text">
							<div class="row detail-text" style="height: 90px;"><b style="padding-top: 23px;">주문번호 300000102683771</b></div>
							<div class="row" class="product-name"
								style="padding-right: 30px; font-size: 17px;">루테인 플러스 외 2개</div>
							<div class="row" class="product-price"
								style="padding-right: 30px; font-size: 17px;"><b style="margin-top:5px;">총 78,000 원</b></div>
						</div>
						<div class="col detail-btn" style="max-width: 25%;">
							<div class="row">
								<button type="button" class="btn btn-dark btn-lg"
									id="detail-btn"
									style="width: 90%; border: 1px solid blue; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 32px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: blue;">배송조회</button>
								<button type="button"
									onclick="location.href='${pageContext.request.contextPath}/myPage/orderDetail.do'"
									class="btn btn-dark btn-lg" id="detail-btn"
									style="width: 90%; border: 1px solid #D3D3D3; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 25px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">상세보기</button>
							</div>
						</div>
					</div>
				</div>
				<!-- 주문내역 박스 끝 -->
				
			</div>
		</div>
	</div>

	<br>


	<%@include file="../common/footer.jsp"%>

</body>
</html>
