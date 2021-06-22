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
	href="${pageContext.request.contextPath}/resources/css/orderDetail.css">
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

	<div class="container orderContext" style="width: 1000px;">
		<div class="order-inner">
			<div class="buyProductText">
				<p class="detail-title">주문상세</p>
				<p class="order_detail" style="font-size: 20px;">
					<b>2021.06.23 주문</b> &nbsp;&nbsp; 주문번호 300000102683771
				</p>

				<!-- 구매 상품 -->
				<div class="row detail-box">
					<div class="col detail-content" style="max-width: 20%;">
						<div class="row"
							style="padding-left: 65px; padding-top: 20px; font-size: 20px;">
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
						<div class="row" style="margin-top: 80px;">
							<b>루테인 플러스</b>
						</div>
						<div class="row" class="product-detail"
							style="padding-right: 30px; padding-top: 10px;">눈이 침침할 때
							사용하는 영양제에는 루테인이라는 성분이 포함되어있는데요. 루테인은 눈 관련 건강 기능성 식품으로 황반 색소 밀도를
							유지시켜 눈 건강에 도움을 주는 기능 성분</div>
					</div>
					<div class="col detail-btn" style="max-width: 25%;">
						<div class="row">
							<button type="button" class="btn btn-dark btn-lg" id="detail-btn"
								style="width: 90%; border: 1px solid blue; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 30px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: blue;">배송조회</button>
							<button type="button" class="btn btn-dark btn-lg" id="detail-btn"
								style="width: 90%; border: 1px solid #D3D3D3; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 25px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">교환,
								반품 신청</button>
							<button type="button" class="btn btn-dark btn-lg" id="detail-btn"
								style="width: 90%; border: 1px solid #D3D3D3; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 25px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">리뷰
								작성하기</button>
						</div>
					</div>
				</div>

				<div class="row detail-box">
					<div class="col detail-content" style="max-width: 20%;">
						<div class="row"
							style="padding-left: 65px; padding-top: 20px; font-size: 20px;">
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
						<div class="row" style="margin-top: 80px;">
							<b>루테인 플러스</b>
						</div>
						<div class="row" class="product-detail"
							style="padding-right: 30px; padding-top: 10px;">눈이 침침할 때
							사용하는 영양제에는 루테인이라는 성분이 포함되어있는데요. 루테인은 눈 관련 건강 기능성 식품으로 황반 색소 밀도를
							유지시켜 눈 건강에 도움을 주는 기능 성분</div>
					</div>
					<div class="col detail-btn" style="max-width: 25%;">
						<div class="row">
							<button type="button" class="btn btn-dark btn-lg" id="detail-btn"
								style="width: 90%; border: 1px solid blue; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 30px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: blue;">배송조회</button>
							<button type="button" class="btn btn-dark btn-lg" id="detail-btn"
								style="width: 90%; border: 1px solid #D3D3D3; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 25px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">교환,
								반품 신청</button>
							<button type="button" class="btn btn-dark btn-lg" id="detail-btn"
								style="width: 90%; border: 1px solid #D3D3D3; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 25px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">리뷰
								작성하기</button>
						</div>
					</div>
				</div>


				<!-- 받는사람 정보 -->
				<p
					style="margin-top: 70px; padding-left: 10px; font-family: 'IBMPlexSansKR-Regular'; font-size: 25px;">받는사람
					정보</p>
				<hr style="border: 1px solid #B2B2B2">

				<table style="border-collapse: separate; border-spacing: 0 10px;">
					<tr>
						<th>받는사람</th>
						<td>${member.userName}</td>
					</tr>
					<tr>
						<th>연락처</th>
						<td>${member.phone}</td>
					</tr>
					<tr>
						<th>받는주소</th>
						<td>${member.address}</td>
					</tr>
				</table>
				<hr style="border: 1px solid #E5E5E5;">

				<!-- 결제 정보 -->
				<div
					style="margin-top: 70px; padding-left: 10px; font-family: 'IBMPlexSansKR-Regular'; padding-bottom: 10px; font-size: 25px; border-bottom: 2px solid #B2B2B2;">결제
					정보</div>

				<div class="row about-paytext"
					style="border-bottom: 2px solid #E5E5E5; width: 970px; height: 100px; margin-left: 0px;">
					<div class="col">
						<div class="row inner-row"
							style="padding-top: 15px; padding-left: 10px;">결제수단</div>
						<div class="row inner-row"
							style="padding-top: 15px; padding-left: 10px;">국민카드</div>
					</div>
					<div class="col" style="background-color: #F2F2F2; max-width: 45%;">
						<div class="row" style="padding-top: 15px;">
							<div class="col col-th">총 상품 가격</div>
							<div class="col col-td">84,000 원</div>
						</div>
						<div class="row" style="padding-top: 15px;">
							<div class="col col-th">배송비</div>
							<div class="col col-td">0 원</div>
						</div>
					</div>
				</div>
				<div class="row about-paytext"
					style="border-bottom: 2px solid #E5E5E5; width: 970px; height: 100px; margin-left: 0px;">
					<div class="col">
						<div class="row"></div>
						<div class="row"></div>
					</div>
					<div class="col" style="background-color: #F2F2F2; max-width: 45%">
						<div class="row" style="padding-top: 15px;">
							<div class="col col-th">국민카드</div>
							<div class="col col-td">84,000 원</div>
						</div>
						<div class="row" style="padding-top: 15px;">
							<div class="col col-th" style="font-weight: bolder;">총 결제
								금액</div>
							<div class="col col-td" style="font-weight: bolder;">84,000
								원</div>
						</div>
					</div>
				</div>

				<button type="button" class="btn btn-dark btn-lg" id="detail-btn"
					style="border: 1px solid #D3D3D3; border-radius: 10px; margin-top: 20px; font-family: 'IBMPlexSansKR-Regular'; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black; float: right;">&lt;
					주문목록 돌아가기</button>

				<img style="width: 100%; margin-top: 70px;"
					src="${pageContext.request.contextPath}/resources/images/shipping.png">



			</div>
		</div>
	</div>
	<br>


	<%@include file="../common/footer.jsp"%>

</body>
</html>
