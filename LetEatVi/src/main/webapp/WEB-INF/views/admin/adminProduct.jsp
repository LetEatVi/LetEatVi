<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrinkto-fit=no">
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
	src="${pageContext.request.contextPath}/resources/js/adminProduct.js"></script>

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
						

	<!--  modal -->
	<!-- 상품 등록 모달창 -->
	<div class="insertProduct">
		<div class="insertInner">

			<h3>상품 등록</h3>

			<!-- 상품등록을 위한 폼 -->
			<div class="product_select">
				<form action="" type="POST" class="modalForm" id="modalForm">
					<div class="select">


						<div class="item">

							<div>
								카테고리
								<div class="col-sm-8">
									<select id="category" name="cid" aria-label="category"
										class="form-control input_value">
										<option value="all" selected>전체</option>
										<option value="1">눈 건강</option>
										<option value="2">장 건강</option>
										<option value="3">간 건강</option>
										<option value="4">임시</option>
										<option value="5">임시</option>
									</select>
								</div>
							</div>



							<div>
								상품명
								<div class="col-sm-8">
									<input type="text" class="form-control input_value" id="pname2">
								</div>
							</div>
						</div>


						<div>
							가격
							<div class="col-sm-8">
								<input type="text" class="form-control input_value" min="0"
									id="pprice">
							</div>
						</div>

						<div>
							상품내용
							<div class="col-sm-8">
								<input type="text" class="form-control input_value" min="0"
									id="pinfo">
							</div>
						</div>


						<div>
							재고량
							<div class="col-sm-8">
								<input type="text" class="form-control input_value" min="0"
									id="pstock">
							</div>
						</div>



					</div>

					<!-- 모달 푸터 -->
					<div class="modal-footer">
						<button type="button" class="btn btn-primary"
							onclick="insertProduct()">등록</button>
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal">취소</button>
					</div>
					<!-- // 모달 푸터 -->
				</form>


			</div>
		</div>
		<!-- // 상품 등록 모달창 -->

   		
	
 <!--  상품조회 비동기통신 시작 -->             
		<script>
	        function searchProduct(){
	    		var pname = $("#pname").val();
	    		
	    		$('#productTbl tbody').empty();
	    		
	        	$.ajax({
		            url  : "${pageContext.request.contextPath}/admin/adminSearchProduct.do",
		            data : {pname:pname},
		            type : "get",
		            success : function(result){

		            	
		                
		                for(var i = 0 ; i < result.length; i++){
		                	var searchProduct = '<tr><td>' + result[i].cname + '</td>'
		                	+ '<td style="display:none;">' + result[i].pid + '</td>'
		                	+ '<td>' + result[i].pname + '</td>'
		                	+ '<td>' + result[i].pprice + '</td>'
		                	+ '<td>' + result[i].pstock + '</td>'
		                	+ '<td id="del"><button type="button" class="btn btn-secondary" id="delBtn" >삭제</button></td></tr>'

                            
		                	$('#prdContent').append(searchProduct);    	                
		            }
		            }	            
	        	}); 
	    	}   
        </script>
		<!--  상품조회 비동기통신 끝 -->


		<!--  상품등록 비동기통신 시작 -->
		<script>
	        function insertProduct(){
	    		var cid = $("#category").val();
	    		var pname2 = $("#pname2").val();
	    		var pinfo = $("#pinfo").val();
	    		var pprice = $("#pprice").val();
	    		var pstock = $("#pstock").val();
	    		
	    		
	        	
	        	$.ajax({
		            url  : "${pageContext.request.contextPath}/admin/adminInsertProduct.do",
		            data : {cid:cid, pname:pname2, pinfo:pinfo, pprice:pprice, pstock:pstock },
		            type : "post",
		            success : function(result){
		            	
		            	alert("상품등록이 완료되었습니다.");  	
		            	
		            	$("#category").val('');
		            	$("#pname2").val('');
		            	$("#pinfo").val('');
		            	$("#pprice").val('');
		            	$("#pstock").val('');

		            	 	                
		            }
		            	            
	        	}); 
	    	}   
        </script>
		<!--  상품등록 비동기통신 끝 -->


		<!--  상품 삭제 비동기통신 시작 -->
		<script>
 
    $("#del button").click(function(){ 
    	
    	var delBtn = $(this);
		var tr = delBtn.parent().parent(); // checkBtn.parent() : checkBtn의 부모는 <td>이다.
		var td = tr.children(); // checkBtn.parent().parent() : <td>의 부모이므로 <tr>이다.
		var pid = td.eq(1).text();
		
		console.log("클릭한 Row의 모든 데이터 : "+tr.text());
		console.log(pid);
    	
    	tr.remove();

        $.ajax({
            url  : "${pageContext.request.contextPath}/admin/adminDeleteProduct.do",
            data : {pid:pid},
            type : "get",
            success : function(result){

            	alert("삭제가 완료되었습니다.");  	 

            }
            	            
        }); 
    });
        </script>
		<!--  상품 삭제 비동기통신 끝 -->
</div>
</div>
</div>
</div>
</div>
</body>
</html>