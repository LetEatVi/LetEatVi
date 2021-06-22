<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<title>Let Eat VI</title>
<head>
</head>

<body>
	<h1>1. 주문상세정보</h1>
	<table class="list_view">
		<tbody align=center>
			<tr style="background: #33ff00">
			     <td>주문번호 </td>
			      <td>주문일자 </td>
				<td colspan=2 class="fixed">주문상품명</td>
				<td>수량</td>
				<td>주문금액</td>
				<td>배송비</td>
				<td>예상적립금</td>
				<td>주문금액합계</td>
			</tr>
			<c:forEach var="item" items="${orderList }">
			<tr>
				    <td> ${item.oId}</td>
				     <td> ${item.pay_order_time}</td>
					<td class="goods_image">
					  <a href="${contextPath}/goods/goodsDetail.do?goods_id=${item.goodsId }">
					    <IMG width="75" alt=""  src="${contextPath}/thumbnails.do?goods_id=${item.goodsId}&fileName=${item.goods_fileName}">
					  </a>
					</td>
					<td>
					  <h2>
					     <a href="${contextPath}/goods/goodsDetail.do?goodsId=${item.goodsId }">${item.goodsTitle }</a>
					  </h2>
					</td>
					<td>
					  <h2>${item.order_goods_qty }개<h2>
					</td>
					<td><h2>${item.order_goods_qty *item.goods_sales_price}원 (10% 할인)</h2></td>
					<td><h2>0원</h2></td>
					<td><h2>${1500 *item.order_goods_qty }원</h2></td>
					<td>
					  <h2>${item.order_goods_qty *item.goods_sales_price}원</h2>
					</td>
			</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="clear"></div>
<form  name="form_order">
	<br>
	<br>
	<h1>2. 배송지 정보</h1>
	<div class="detail_table">
		<table>
			<tbody>
				<tr class="dot_line">
					<td class="fixed_join">배송방법</td>
					<td>
					   ${myOrderList[0].delivery_method }
				    </td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">수령인</td>
					<td>
					${orderList[0].addressee }
					</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">주소</td>
					<td>
					   ${myOrderList[0].delivery_address}
					</td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">전화번호</td>
					<td>
					  ${orderList[0].phone}</td>
				  </tr>
				<tr class="dot_line">
					<td class="fixed_join">배송 메시지</td>
					<td>
					${orderList[0].comment}
					</td>
				</tr>
			</tbody>
		</table>
		
	</div>
	<div >
	  <br><br>

	<H1>3.결제정보</H1>
	<DIV class="detail_table">
		<table>
			<tbody>
				<tr class="dot_line">
					<td class="fixed_join">결제방법</td>
					<td>
					   ${myOrderList[0].pay_method }
				    </td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">결제카드</td>
					<td>
					   ${myOrderList[0].card_com_name}
				    </td>
				</tr>
				<tr class="dot_line">
					<td class="fixed_join">할부기간</td>
					<td>
					   ${myOrderList[0].card_pay_month }
				    </td>
				</tr>
			</tbody>
		</table>
	</div>
</form>
    <div class="clear"></div>
	<br>
	<br>
	<br>
		<br>
		<br> 
		<a href="${contextPath}/"> 
		   <IMG >
		</a>
<div class="clear"></div>		
	
			
			
</body>
</html>			