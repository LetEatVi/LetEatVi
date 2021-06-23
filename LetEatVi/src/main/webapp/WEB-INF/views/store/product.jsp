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
<script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
	integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js"
	integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/css/productChoice.css">


<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-x.y.z.js"></script>

<script src="https://kit.fontawesome.com/2d323a629b.js"
	crossorigin="anonymous"></script>

<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Jua&display=swap"
	rel="stylesheet">
<style>
@font-face {
	font-family: 'Eulyoo1945-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2102-01@1.0/Eulyoo1945-Regular.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}

@font-face {
	font-family: 'IBMPlexSansKR-Regular'; src :
	url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
	format( 'woff');
	font-weight: normal;
	font-style: normal;
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-07@1.0/IBMPlexSansKR-Regular.woff')
		format('woff');
}
@font-face {
            font-family: 'PrestigeEliteStd';
            src: url('${pageContext.request.contextPath}/resources/font/PrestigeEliteStd.ttf') format('truetype');
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

	<section>
		<div class="container" style="min-width: 1500px;">
			<div class="row firstRow">
				<div class="col">
					<img
						src="${pageContext.request.contextPath}/resources/images/${selectProduct.pname}.jpg"
						class="img-fluid selectProduct"
						style="width: 800px; height: 700px;">
				</div>
				<div class="col">
					<div class="border-secondary mb-3" style="max-width: 100%;">
						<div class="card-header cardHaederText" id="pname"
							style="background-color: rgba(0, 0, 0, 0); padding-bottom: 20px;">${selectProduct.pname}</div>
						<div class="card-body text-dark" style="margin-top: 20px;">
							<div class="row">
								<div class="col-2 card-text">가격</div>
								<div class="col-10 card-text" id="price">￦
									${selectProduct.pprice}</div>
							</div>
							
							<br>
							<div class="row">
								<div class="col-2 card-text" style="margin-top: 6px;">수량</div>
								<div class="col-10" style="padding-left: 10px;">
									<select class="custom-select" name="quantity" id="quan" style="width: 200px;">
										<option selected>수량을 정해주세요</option>
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
									</select>
								</div>
							</div>
							
							<br>
							<div class="row">
								<div class="col-2 card-text">배송비</div>
								<div class="col-10 card-text">5만원 이상 구매시 무료</div>
							</div>
							
							<br>			
							<div class="row">
								<div class="col-2 card-text">구매혜택</div>
								<div class="col-10 card-text">
								마일리지 적립 &nbsp <span class="badge badge-pill badge-primary">M</span> 
								</div>
							</div>
							
							<br>
							<div class="row">
								<div class="col-2 card-text">적립금</div>
								<div class="col-10 card-text" id="ReservesArea"></div>
							</div>
							
							<br>
							<div class="row">
								<div class="col-2 card-text">Total</div>
								<div class="col-10 card-text" id="priceArea"
									style="color: blue;"></div>
							</div>

							<br /> <br />


							<div class="row">
								<div class="col-6 card-text">
									<button type="button" class="btn btn-lg"
										id=addChart onclick="addCartWithQuantity();"
										style="width: 100%;
										border:2px solid #44633F;
										border-radius: 100px;">장바구니</button>
								</div>
								<div class="col-6 card-text">
									<button type="button" class="btn btn-lg"
										id="imm_buy" onclick="goPayment();"
										style="width: 100%;
										border:2px solid #3F4B3B;
										border-radius: 100px;">바로구매</button>
								</div>
							</div>
							<br>
						</div>
					</div>
				</div>
			</div>
			<!-- Button trigger modal -->
			<button type="button" class="btn btn-primary" data-toggle="modal"
				data-target="#exampleModal" style="visibility: hidden;"
				id="errorModal">Launch demo modal</button>

			<!-- Modal -->
			<div class="modal fade" id="exampleModal" tabindex="-1"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">오류 발생</h5>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
						<div class="modal-body" id="errorText">...</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary"
								data-dismiss="modal">Close</button>
						</div>
					</div>
				</div>
			</div>

			<div class="row secondRow">
				<div class="col">
					<div class="border-dark mb-3">
						<div class="card-header"
						style="
						background-color: rgba(0, 0, 0, 0);
						font-family: 'PrestigeEliteStd';;
						letter-spacing: 5px;
						padding-bottom: 23px;">
						Detail</div>
						<img src="${pageContext.request.contextPath}/resources/images/결제.jpg" />
						<div class="card-body text-dark" style="margin-top: 30px;">
							<p class="card-text">
								<img
									src="${pageContext.request.contextPath}/resources/images/상세비타민2.jpg"style="width: 80%">
							</p>
						</div>
					</div>
				</div>
			</div>

		</div>

		<br> <br> <br> <br> <br> <br> <br>
		<br> <br> <br>

		<script>
            $(document).ready(function () {
                var check_sel = $("select[name=quantity]>option");
            });

            $("[name=quantity]").on("click", function () {
                var check_sel = $("select[name=quantity]>option");
                for (var i = 1; i < check_sel.length; i++) {
                    if (check_sel[i].selected == true) {
                        $("#priceArea").text((check_sel[i].value * ${selectProduct.pprice}) + "￦");
                        $("#ReservesArea").text((check_sel[i].value * ${selectProduct.pprice} * 0.01) + "원 (1%)");
                    }
                }
            });
            
            function goPayment(){
            	var qno = $("select[name=quantity]").val();
            	console.log(qno);
            	location.href="${pageContext.request.contextPath}/store/goPayment.do?pid=${pid}&qno="+qno+"&userId=${member.userId}" 
            }
        </script>

		<script>
	        function addCartWithQuantity(){
	    		var qno = $("select[name=quantity]").val();
	        	
	        	$.ajax({
		            url  : "${pageContext.request.contextPath}/store/addCartWithQuantity.do",
		            data : { pid : ${pid}, userId : '${member.userId}', qno : qno}, 
		            type : "get",
		            success : function(data){
		                alert("장바구니에 추가했습니다.");
		            }
	        	}); 
	    	}
        </script>

	</section>
	<%@include file="../common/footer.jsp"%>
</body>

</html>