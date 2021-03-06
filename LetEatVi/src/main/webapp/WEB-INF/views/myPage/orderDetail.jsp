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
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/favicon.ico">
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
	
	
]		<div class="container orderContext" style="width: 1000px;">
			<div class="order-inner">
				<div class="buyProductText">
					<img class="tracking-img"
						src="${pageContext.request.contextPath}/resources/images/box.png">
					<span class="detail-title">&nbsp;&nbsp;????????????</span>

					<c:forEach items="${productDetail}" var="p" varStatus="st">		
					<c:if test="${ st.count == 1 }">			
					<p class="order_detail" style="font-size: 20px;">
						<b>?????? ??????</b> &nbsp;&nbsp; ${p.oenroll}
					</p>
					<p class="order_detail" style="font-size: 20px;">
						<b>?????? ??????</b> &nbsp;&nbsp; ${p.oid}
					</p>
					</c:if>

					<!-- ?????? ?????? -->
					<div class="row detail-box">
						<div class="col detail-content" style="max-width: 20%;">
							<div class="row"
								style="padding-left: 65px; padding-top: 20px; font-size: 20px;">
								<b>?????????</b>
							</div>
							<div class="row">
								<div class="col" style="padding: 0px 0px;">
									<img class="product_img" style="padding: 20px 30px;"
										src="${pageContext.request.contextPath}/resources/images/${p.pname}.jpg">
								</div>
							</div>
						</div>
						<div class="col detail-text">
							<div class="row" style="margin-top: 80px;">
								<b>${p.pname}</b>
							</div>
							<div class="row" class="product-detail"
								style="padding-right: 30px; padding-top: 10px;">${p.pinfo}</div>
						</div>
						<div class="col detail-btn" style="max-width: 25%;">
							<div class="row">
								<button type="button" class="btn btn-dark btn-lg"
									id="detail-btn"
									style="width: 90%; border: 1px solid blue; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 30px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: blue;">????????????</button>
								<button type="button" class="btn btn-dark btn-lg"
									id="detail-btn"
									style="width: 90%; border: 1px solid #D3D3D3; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 25px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">??????
									?? ?????? ??????</button>
								<button type="button" class="btn btn-dark btn-lg"
									id="detail-btn"
									style="width: 90%; border: 1px solid #D3D3D3; border-radius: 10px; margin: auto; font-family: 'IBMPlexSansKR-Regular'; margin-top: 25px; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black; margin-bottom: 29px;">??????
									????????????</button>
							</div>
						</div>
					</div>
					
					</c:forEach>

					<c:forEach items="${productDetail}" var="p" varStatus="st">
					<c:if test="${ st.count == 1 }">
					<!-- ???????????? ?????? -->
					<p
						style="margin-top: 70px; padding-left: 10px; font-family: 'IBMPlexSansKR-Regular'; font-size: 25px;">????????????
						??????</p>
					<hr style="border: 1px solid #B2B2B2">
						
					<table style="border-collapse: separate; border-spacing: 0 10px;">
						<tr>
							<th>????????????</th>
							<td>${p.addressee}</td>
						</tr>
						<tr>
							<th>?????????</th>
							<td>${p.phone}</td>
						</tr>
						<tr>
							<th>????????????</th>
							<td>${p.address}</td>
						</tr>
						<tr>
							<th>????????????</th>
							<td>${p.ocomment}</td>
						</tr>
					</table>
					<hr style="border: 1px solid #E5E5E5;">

					<!-- ?????? ?????? -->
					<div
						style="margin-top: 70px; padding-left: 10px; font-family: 'IBMPlexSansKR-Regular'; padding-bottom: 10px; font-size: 25px; border-bottom: 2px solid #B2B2B2;">??????
						??????</div>

					<div class="row about-paytext"
						style="border-bottom: 2px solid #E5E5E5; width: 970px; height: 100px; margin-left: 0px;">
						<div class="col">
							<div class="row inner-row"
								style="padding-top: 15px; padding-left: 10px;">????????????</div>
							<div class="row inner-row"
								style="padding-top: 15px; padding-left: 10px;">???????????????</div>
						</div>
						<div class="col"
							style="background-color: #F2F2F2; max-width: 45%;">
							<div class="row" style="padding-top: 15px;">
								<div class="col col-th">??? ?????? ??????</div>
								<div class="col col-td">${p.totalPrice}</div>
							</div>
							<div class="row" style="padding-top: 15px;">
								<div class="col col-th">?????????</div>
								<div class="col col-td">0 ???</div>
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
								<div class="col col-th">???????????????</div>
								<div class="col col-td">${p.totalPrice}</div>
							</div>
							<div class="row" style="padding-top: 15px;">
								<div class="col col-th" style="font-weight: bolder;">??? ??????
									??????</div>
								<div class="col col-td" style="font-weight: bolder;">${p.totalPrice}
									???</div>
							</div>
						</div>
					</div>
					
					</c:if>

					<button type="button"
						onclick="location.href='${pageContext.request.contextPath}/myPage/orderList.do'"
						class="btn btn-dark btn-lg" id="detail-btn"
						style="border: 1px solid #D3D3D3; border-radius: 10px; margin-top: 20px; font-family: 'IBMPlexSansKR-Regular'; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black; float: right;">&lt;
						???????????? ????????????</button>
						
					</c:forEach>

					<img style="width: 100%; margin-top: 70px;"
						src="${pageContext.request.contextPath}/resources/images/shipping.png">
						
				</div>
			</div>
		</div>
		
	<br>

	<%@include file="../common/footer.jsp"%>

</body>
</html>
