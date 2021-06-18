<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/favicon.ico">
<title>Let Eat VI</title>
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>마이페이지</title>
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
	href="${pageContext.request.contextPath}/resources/css/myPage.css">


<style>
/* font url */
@import
	url('https://fonts.googleapis.com/css2?family=Permanent+Marker&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Nanum+Brush+Script&display=swap')
	;

@import
	url('https://fonts.googleapis.com/css2?family=Do+Hyeon&display=swap');

@import
	url('https://fonts.googleapis.com/css2?family=Song+Myung&display=swap')
	;

@font-face {
	font-family: 'S-CoreDream-3Light';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-3Light.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'GongGothicMedium';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10@1.0/GongGothicMedium.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'MapoGoldenPier';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2001@1.1/MapoGoldenPierA.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'Inkfree';
	src:
		url('${pageContext.request.contextPath}/resources/font/Inkfree.ttf')
		format('truetype');
}
</style>
</head>

<body>
	<%@include file="../common/header.jsp"%>

	<div class="top-img"></div>

	<div class="container orderContext" style="width: 1000px;">
		<div class="order-inner">
			<p
				style="margin-top: 70px; padding-left: 10px; font-family: 'IBMPlexSansKR-Regular'; font-size: 25px;">회원정보
				관리</p>
			<hr style="border: 1px solid #B2B2B2">

			<table style="border-collapse: separate; border-spacing: 0 10px;">
				<tr>
					<th>이름</th>
					<td>${member.userName}</td>
				</tr>
				<tr>
					<th>나이</th>
					<td>${member.age}세</td>
				</tr>
				<tr>
					<th>연락처</th>
					<td>${member.phone}</td>
				</tr>
				<tr>
					<th>이메일</th>
					<td>${member.email}</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${member.address}</td>

					<td style="width: 600px;"><button class="fix-btn"
							style="background-color: white; width: 20%;"
							onclick="location.href='${pageContext.request.contextPath}/myPage/memberView.do?userId=${member.userId}'">수정하기</button></td>
				</tr>
			</table>
			<hr style="border: 1px solid #E5E5E5;">

			<!-- 주문내역 -->
			<div
				style="margin-top: 70px; padding-left: 10px; font-family: 'IBMPlexSansKR-Regular'; padding-bottom: 10px; font-size: 25px; border-bottom: 2px solid #B2B2B2;">최근
				주문내역</div>
			<!-- 주문내역 박스 -->
			<div class="row about-paytext"
				style="border-bottom: 2px solid #E5E5E5; width: 970px; height: 100px; margin-left: 0px;">
				<div class="col">
					<div class="row inner-row"
						style="padding-top: 15px; padding-left: 10px;">
						<div class="col">주문번호</div>
						<div class="col">300000102683771</div>
					</div>
					<div class="row inner-row"
						style="padding-top: 15px; padding-left: 10px;">
						<div class="col">주문일자</div>
						<div class="col">2021-06-18</div>
					</div>
				</div>
				<div class="col" style="background-color: #F2F2F2; max-width: 45%;">
					<div class="row" style="padding-top: 15px;">
						<div class="col col-th" style="font-weight: bolder;">총 결제 금액</div>
						<div class="col col-td" style="font-weight: bolder;">84,000
							원</div>
					</div>
					<div class="row" style="padding-top: 15px;">
						<div class="col col-th"></div>
						<div class="col col-td"><button class="fix-btn"
							style="background-color: rgba(0,0,0,0); width: 50%;"
							onclick="location.href='${pageContext.request.contextPath}/myPage/orderList.do'">수정하기</button></div>
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
						<div class="col col-th" style="font-weight: bolder;">총 결제 금액</div>
						<div class="col col-td" style="font-weight: bolder;">84,000
							원</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--  -->


	<div id="mypagev-home">
		<div class="home-top-content">
			<h2>
				<b> ${member.userName} </b> 님의 <em class="light"> Let Eat Vi </em>
			</h2>
		</div>
		<br> <br>


		<h3>최근주문내역</h3>
		<table class="list_view">
			<tbody align=center>
				<tr style="background: #33ff00">
					<td>주문번호</td>
					<td>주문일자</td>
					<td>주문금액</td>
					<td>수령인</td>
					<td>배송현황</td>
				</tr>
				<tr style="">
					<td>${orderList.oId}</td>
					<td>${orderList.oEnroll}</td>
					<td>${orderList.totalPrice}</td>
					<td>${orderList.addressee}</td>
					<td>배송완료</td>
				</tr>

				<c:choose>
					<c:when test="${ empty orderList  }">
						<tr>
							<td colspan=5 class="fixed"><strong>주문한 상품이 없습니다.</strong></td>
						</tr>
					</c:when>
					<c:otherwise>
						<c:forEach var="item" items="${orderList }" varStatus="i">
							<c:choose>
								<c:when test="${ pre_order_id != item.order_id}">
									<c:choose>
										<c:when test="${item.delivery_state=='delivery_prepared' }">
											<tr bgcolor="lightgreen">
										</c:when>
										<c:when test="${item.delivery_state=='finished_delivering' }">
											<tr bgcolor="lightgray">
										</c:when>
										<c:otherwise>
											<tr bgcolor="orange">
										</c:otherwise>
									</c:choose>
									<tr>
										<td><a
											href="${contextPath}/mypage/orderDetail.do?order_id=${item.oId }"><span>${item.order_id }</span>
										</a></td>
										<td><span>${item.pay_order_time }</span></td>
										<td align="left"><strong> <c:forEach var="item2"
													items="${myOrderList}" varStatus="j">
													<c:if test="${item.order_id ==item2.order_id}">
														<a
															href="${contextPath}/goods/goodsDetail.do?goods_id=${item2.goods_id }">${item2.goods_title }/${item.order_goods_qty }개</a>
														<br>
													</c:if>
												</c:forEach>
										</strong></td>
										<td><c:choose>
												<c:when test="${item.delivery_state=='delivery_prepared' }">
				       배송준비중
				    </c:when>
												<c:when test="${item.delivery_state=='delivering' }">
				       배송중
				    </c:when>
												<c:when
													test="${item.delivery_state=='finished_delivering' }">
				       배송완료
				    </c:when>
												<c:when test="${item.delivery_state=='cancel_order' }">
				       주문취소
				    </c:when>
												<c:when test="${item.delivery_state=='returning_goods' }">
				       반품완료
				    </c:when>
											</c:choose></td>
										<td><c:choose>
												<c:when test="${item.delivery_state=='delivery_prepared'}">
													<input type="button"
														onClick="fn_cancel_order('${item.order_id}')" value="주문취소" />
												</c:when>
												<c:otherwise>
													<input type="button"
														onClick="fn_cancel_order('${item.order_id}')" value="주문취소"
														disabled />
												</c:otherwise>
											</c:choose></td>
									</tr>
									<c:set var="pre_order_id" value="${item.order_id}" />
								</c:when>
							</c:choose>
						</c:forEach>
					</c:otherwise>
				</c:choose>
			</tbody>

			<tr>
				<td colspan="5" style="align: center";><input type="submit"
					class="btn btn-outline-success"
					onclick="location.href='${pageContext.request.contextPath}/myPage/orderDetail.do?oId=${orderList.oId}'"
					value="수정"></td>
			</tr>
		</table>

		<br> <br>

		<h3>건강설문관리</h3>
		<div>
			<input type="submit" class="btn btn-outline-success"
				onclick="location.href='${pageContext.request.contextPath}/'"
				value="바로가기">
		</div>


		<%@include file="../common/footer.jsp"%>
</body>
</html>