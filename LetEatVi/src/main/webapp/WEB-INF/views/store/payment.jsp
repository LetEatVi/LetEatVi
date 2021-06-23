<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Store</title>
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
	href="${pageContext.request.contextPath}/resources/css/payment.css" />

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

.buyProductText {
	font-weight: bold;
	font-size: 20px;
}

@font-face {
	font-family: 'Eulyoo1945-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2102-01@1.0/Eulyoo1945-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

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
</style>
</head>
<body>
	<%@include file="../common/header.jsp"%>

	<div class="top-img">
		<div class="main-title">
			<h1>
				내 몸에 필요한 영양제 <br> 궁금하세요?
			</h1>
		</div>
	</div>

	<div class="container-fluid" style="margin-top: 50px;">
		<div class="card-header payment_title"
			style="background-color: rgba(0, 0, 0, 0); padding-bottom: 50px;">주문
			/ 결제</div>

		<div class="container orderContext" style="margin-top: 10px;">
			<div class="order-inner">
				<div class="buyProductText buyTitle">
					<div class="buyImg" style="width: 400px;"></div>
					<div class="buyContent" style="margin-top: 5px;">상품정보</div>
					<div class="buyContent" style="margin-top: 5px;">수량</div>
					<div class="buyContent" style="margin-top: 5px;">판매가</div>
					<div class="buyContent" style="margin-top: 5px;">최종금액</div>
				</div>
			</div>
		</div>



		<div class="container orderContext">
			<div class="order-inner">
				<div class="buyProductText">
					<div class="buyImg" style="display: inline-block;">
						<img class="pay_product_img"
							src="${pageContext.request.contextPath}/resources/images/${selectProduct.pname}.jpg">
					</div>
					<div class="buyContent buyText"
						style="margin-top: 85px; padding-right: 17px;">${selectProduct.pinfo}</div>
					<div class="buyContent buyText"
						style="margin-top: 85px; padding-left: 5px;">
						<img
							src="${pageContext.request.contextPath}/resources/images/remove.png"
							style="width: 15px;" id="minusQuantity">
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span id="quantity"> ${qno} </span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<img
							src="${pageContext.request.contextPath}/resources/images/plus.png"
							style="width: 15px;" id="addQuantity">
					</div>
					<div class="buyContent buyText" style="margin-top: 85px;">${selectProduct.pprice}</div>
					<div class="buyContent buyText" id="finalPrice"
						style="margin-top: 85px; padding-left: 12px;">${selectProduct.pprice}</div>
				</div>
			</div>
		</div>
		<br>
		<div class="card-header payment_title"
			style="background-color: rgba(0, 0, 0, 0); margin-top: 100px; padding-bottom: 30px;">Information</div>



		<form method="post" action="insertPaymentInfo.do" id="insertFrm">

			<div class="row">
				<div class="col-2"></div>

				<div class="col-8">
					<br>

					<div class="row" style=" margin-top: 30px;">
						<div class="col"
						style="font-size: 22px;
						font-weight: bold;
						padding-left: 270px;
						margin-bottom: 40px;">주문자 정보</div>
					</div>
					<br>


					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">이름</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="orderPerson" id="orderPerson" placeholder="주문인" aria-label="Username" aria-describedby="basic-addon1" value="">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">이메일</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="orderEmail" id="orderEmail" placeholder="이메일" aria-label="Username" aria-describedby="basic-addon1" value="">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">연락처</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="orderPhone" id="orderPhone" placeholder="연락처" aria-label="Username" aria-describedby="basic-addon1" value="">
						</div>
					</div>
					<br>

				</div>

			</div>
			<br>

			<div class="row">
				<div class="col-2"></div>

				<div class="col-8">
					<br>

					<div class="row" style="text-align: center; margin-top: 30px;">
						<div class="col" style="font-size: 22px; font-weight: bold;">배송지
							정보</div>
						<div class="col">
							<button type="button" class="btn btn-dark btn-lg"
								onclick="equalMemberinfo();"
								style="width: 40%; border: 2px solid #3F4B3B; border-radius: 100px; font-family: 'IBMPlexSansKR-Regular'; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">주문자
								정보와 동일</button>
						</div>

					</div>
					<br> <br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">수령인</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="addressee" id="addressee" placeholder="수령인" aria-label="Username" aria-describedby="basic-addon1">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">연락처</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="phone" id="phone" placeholder="연락처" aria-label="Username" aria-describedby="basic-addon1">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;">배송지</div>
						<div class="col-7 card-text">
							<input type="text" class="form-control" name="address" id="address" placeholder="배송지" aria-label="Username" aria-describedby="basic-addon1">
						</div>
					</div>
					<br>

					<div class="row">
						<div class="col-1"></div>
						<div class="col-3 card-text" style="margin-top: 8px;"
							id="pleaseRequest">요청사항</div>
						<div class="col-7 card-text">
							<div class="input-group">
								<textarea class="form-control" name="ocomment" aria-label="With textarea" style="resize: none;"></textarea>
							</div>
						</div>
					</div>
					<br> <br>
				</div>

				<div class="col-2"></div>

			</div>
			<br>

			<div class="row" style="text-align: center;">
				<div class="col-2"></div>

				<div class="col-8" style="border: 1px solid lightgray;">
					<br>

					<div class="row">
						<div class="col-2 card-text"
							style="font-size: 22px; font-weight: bold;">주문 상품</div>
					</div>
					<br> <br>

					<div class="row">
						<div class="col-2 buyProductText">상품 금액</div>

						<div class="col-1"></div>

						<div class="col-2 buyProductText">배송비</div>

						<div class="col-1"></div>

						<div class="col-2 buyProductText">할인 금액</div>

						<div class="col-1"></div>

						<div class="col-2 buyProductText">결제 금액</div>
					</div>
					<br> <br>

					<div class="row">
						<div class="col-2 buySumProductPrice">42000</div>

						<div class="col-1">

							<img
								src="${pageContext.request.contextPath}/resources/images/plus.png"
								style="width: 15px;">

						</div>

						<div class="col-2 buyProductText">무료</div>

						<div class="col-1">
							<img
								src="${pageContext.request.contextPath}/resources/images/remove.png"
								style="width: 15px;">
						</div>

						<div class="col-2 buyProductText">0</div>

						<div class="col-1">
							<img
								src="${pageContext.request.contextPath}/resources/images/equal.png"
								style="width: 15px;">
						</div>

						<div class="col-2 buyTotalProductPrice">42000</div>
					</div>
					<br> <br>


					<div class="row">
						<div class="col-2 card-text" style="margin-top: 8px;">쿠폰</div>
						<div class="col-9">
							<select class="custom-select" name="cupon" id="cupon">
								<option selected>쿠폰을 선택해주세요</option>
								<option value="1">데이터 베이스에</option>
								<option value="2">등록된 쿠폰 항목</option>
								<option value="2">가져와서 등록</option>
							</select>
						</div>
					</div>
					<br> <br>
					
					<div class="row">
						<div class="col-1"></div>
						<div class="col-5 card-text">
							<button type="button" class="btn btn-dark btn-lg"
								id="payBtnCancle"
								style="width: 100%; border: 2px solid #44633F; border-radius: 100px; font-family: 'IBMPlexSansKR-Regular'; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">주문취소</button>
						</div>
						<div class="col-5 card-text">
							<button type="button" class="btn btn-dark btn-lg" id="payBtn"
								style="width: 100%; border: 2px solid #3F4B3B; border-radius: 100px; font-family: 'IBMPlexSansKR-Regular'; letter-spacing: 3px; background-color: rgba(0, 0, 0, 0); color: black;">주문하기</button>
						</div>
						<div class="col-1"></div>
					</div>
					<br> <br>
				</div>
			</div>
			<br>
		</form>
	</div>
	
	<button type="button" id="jihwanBtn" class="btn btn-primary paySuccess" data-toggle="modal" data-target="#exampleModal">
	  Launch demo modal
	</button>
	
	<!-- Modal -->
	<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
	  <div class="modal-dialog" style="margin-top: 150px;">
	    <div class="modal-content">
	      <div class="modal-header">
	        <h5 class="modal-title" id="exampleModalLabel">결제 확인</h5>
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
	          <!-- 닫기버튼 눌렀을 때 스토어홈으로 돌아간다 -->
	          <span aria-hidden="true" onclick="goStore();">&times;</span>
	        </button>
	      </div>
	      <div class="modal-body" style="text-align: center;">
	       	결제가 성공적으로 완료되었습니다. <br />
	       	기타 문의사항은 채팅 또는 전화문의로 연락주시면 <br />
	       	답변 드리겠습니다 <br /><br />
	       	
	       	-주문 정보- <br />
	       	<div id="orderer">주문자 명 : 000. </div><br />
	       	<div id="orderNo">주문 번호 : 000. </div><br />
	       	<div id="orderPrice">결제 금액 : 000. </div><br />
	       	
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-secondary" style="width: 228px;" onclick="goStore();">Store Home으로 가기</button>
	        <button type="button" class="btn btn-secondary" style="width: 228px;" onclick="goMypage();">주문 내역 확인</button>
	      </div>
	    </div>
	  </div>
	</div>

	<br>
	<br>
	<br>
	<br>
	<br>

	<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>

	<script>
			var IMP = window.IMP;
			
			$(function() {
			    IMP.init('imp77211071');
			}); 
			function QueryStringToJSON(str) {
			    var pairs = str.split('&');
			    var result = {};
			    pairs.forEach(function (pair) {
			        pair = pair.split('=');
			        var name = pair[0]
			        var value = pair[1]
			        if (name.length)
			            if (result[name] !== undefined) {
			                if (!result[name].push) {
			                    result[name] = [result[name]];
			                }
			                result[name].push(value || '');
			            } else {
			                result[name] = value || '';
			            }
			    });
			    return (result);
			}

			$('#payBtn').on('click', function(){ 
				
				console.log("결제 진행");
			        IMP.request_pay({
			        	// 필수 항목
			            merchant_uid : 'merchant_' + new Date().getTime(),
			            amount : parseInt($('.buyTotalProductPrice').text()),
			            buyer_tel : '${member.phone}',
			            
			            // 추가 항목
			            name : '${selectProduct.pname}'
			        }, function(rsp) {
			          if (rsp.success) {
			        	    var form = $("#insertFrm");        
			                console.log(QueryStringToJSON(decodeURIComponent(form.serialize())));
			                var payment = QueryStringToJSON(decodeURIComponent(form.serialize()));
			                
			            	var msg = '결제가 완료되었습니다.';
			                msg += '고유ID : ' + rsp.imp_uid;
			                msg += '결제 금액 : ' + rsp.paid_amount;
			                
			                // 결제 성공 시
			                // 주문번호와 결제금액 받아와서 hidden 처리된 상태로 입력
 			                var oid = rsp.imp_uid; 
			                var totalPrice = rsp.paid_amount;
			                var userId = "${member.userId}";
			                
 			                console.log(oid);
			                console.log(totalPrice);
			                console.log(userId);
			                
			                payment['oid'] = oid;
			                payment['totalPrice'] = totalPrice;
			                payment['userId'] = userId;
			                
 
			                $.ajax({
			                	url : "${pageContext.request.contextPath}/store/insertPaymentInfo.do",
			                    type : 'POST', 
			                    data : payment,
			                    success : function(data){
			                    	console.log("ajax 성공");
			                    	console.log(data);
			                    	$("#orderer").text("주문자 명 : " + $("#orderPerson").val());
			                    	$("#orderNo").text("주문 번호 : " + data.oid);
			                    	$("#orderPrice").text("결제 금액 : " + data.totalPrice + "￦");
					                $(".paySuccess").click();
			                	}, error : function(jqxhr, textStatus, errorThrown){
					                console.log(jqxhr);
					                console.log(textStatus);
					                console.log(errorThrown);
			                		console.log("ajax 처리 실패");
			                	}
		              	 	});
			                    
			            }
			            else {
			                var msg = '결제에 실패하였습니다.\n';
			                msg += '에러내용 : ' + rsp.error_msg;
			                $("#errorText").html(rsp.error_msg);
			                $("#errorModal").trigger("click");
			            }
			            
			            alert(msg);
			        });
			        
			});
		</script>

	<script>
			$("#minusQuantity").on("click", function () {
				
  				if($("#quantity").text() > 1){
					$("#quantity").text($("#quantity").text() - 1);
					$("#finalPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
					$(".buyTotalProductPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
					$(".buySumProductPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
				}  
			});
			
			$("#addQuantity").on("click", function () {
				
				$("#quantity").text(parseInt($("#quantity").text()) + 1);
				$("#finalPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
				$(".buyTotalProductPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
				$(".buySumProductPrice").text($("#quantity").text() * ${selectProduct.pprice} + "￦");
			});
		</script>

	<script>
			 $(document).ready(function () {
				 $("#finalPrice").text((${qno} * ${selectProduct.pprice}) + "￦");
				 $(".buyTotalProductPrice").text((${qno} * ${selectProduct.pprice}) + "￦");
				 $(".buySumProductPrice").text((${qno} * ${selectProduct.pprice}) + "￦");
					
				$("#orderPerson").attr("value", "${member.userName}");
				$("#orderEmail").attr("value", "${member.email}");
				$("#orderPhone").attr("value", "${member.phone}");
	         });
		</script>

	<script>
			function equalMemberinfo(){
				$("#addressee").attr("value", "${member.userName}");
				$("#phone").attr("value", "${member.phone}");
				$("#address").attr("value", "${member.address}");
			}
	</script>
	
	<script>
		function goStore(){
			location.href = "${pageContext.request.contextPath}/store/goStore.do";
		}
		
		function goMypage(){
			location.href = "${pageContext.request.contextPath}/myPage/myPageHome.do";
		}
	</script>
	<%@include file="../common/footer.jsp"%>
</body>
</html>