<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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

    <!-- JQeury -->
    <script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/admin/adminProduct.css" rel="stylesheet">
	<!-- JS -->
    <script defer src="${pageContext.request.contextPath}/resources/js/adminProduct.js"></script>
    <!-- FONT AWSOME -->
    <script src="https://kit.fontawesome.com/2004329f9f.js"
            crossorigin="anonymous"></script>
    <!-- BOOTSTRAP CDN v4.6.0 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>


</head>
<body>

    <div class="main">

        <!-- 사이드바 시작 -->
        <div class="sidebar">
            <div class="sidebar_inner">
                <!-- 사이드바 타이틀 -->
        
                    <h1>렛잇비 대시보드</h1>
        
            
                <!-- 사이드바 메뉴 -->
                <ul class="sidebar_menu">
                    <li class="active"><a href="${pageContext.request.contextPath}/admin/adminMain.do" ><i class="fas fa-chart-bar"></i>차트 보기</a></li>
                    <li><a href="#" ><i class="fas fa-database"></i>상품 등록</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/adminProduct.do" ><i class="fas fa-boxes"></i>재고 관리</a></li>
                    <li><a href="#" ><i class="fas fa-file-invoice-dollar"></i>매출 관리</a></li>
                    <li><a href="${pageContext.request.contextPath}/admin/adminMember.do" ><i class="fas fa-user-friends"></i>회원 관리</a></li>
                    <li><a href="#" ><i class="fas fa-cogs"></i>사이트 관리</a></li>
                    <li><a href="#" ><i class="fas fa-wrench"></i>임시공간1</a></li>
                    <li><a href="#" ><i class="fas fa-wrench"></i>임시공간2</a></li>
                    <li><a href="#" ><i class="fas fa-wrench"></i>임시공간3</a></li>
                </ul>
            </div>
            </div>
            <!-- 사이드바 끝 -->

    <div class="inner">
		<div class="wrapper">
			<div class="container sub-contents">


            <!-- 상품 조회 -->
            <h3 id="searchTitle">상품 조회</h3> 

            <!-- 상품 검색 서치바 form action="adminSearch.do?pname=" + pname -->
            <div id="searchProduct">

            <form class="searchForm" >
 
<!--            <select id="category" name="category" aria-label="category" class="form-control input_value">
                <option value="all" selected>전체</option>
                <option value="1">눈 건강</option>
                <option value="2">장 건강</option>
                <option value="3">간 건강</option>
                <option value="4">임시</option>
                <option value="5">임시</option>
            </select>
            
            
 -->
 
            <!-- <h4> 상품 이름 </h4> -->
            <div class="col-sm-8" >
                <input type="text" class="form-control input_value" placeholder="상품 이름을 입력하세요." name="pname" id="pname">
            </div>
            
            <button type="button" class="btn btn-success"
             id="search" onclick="searchProduct();">검색</button>
             </form>

            

            

            <button type="button" class="btn btn-primary"
             id="new">새 상품 등록</button>

            </div>

          
        <!-- // 상품 검색 서치바 form -->
            
            
            
            <!-- 추가한 상품들을 나열하여 보여주는 테이블 -->
				<div class="scrollable">
					<table class="table table-hover text-center">
	
						<thead>
							<tr data-target="#listmodal" data-toggle="modal" id="sorter">
                                <th>카테고리</th>
								<th>상품명</th>
								<th>가격</th>
								<th>재고량</th>
								<th>삭제버튼</th>
							</tr>
						</thead>

						
						<!-- 상품 조회 부분 시작 <c:forEach items="${ap}" var="a">  </c:forEach> 
						
						                            <td>${a.cname} </td>
                            <td>${a.pname}</td>
                            <td>${a.pprice}</td>
                            <td>${a.pstock}</td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >삭제</button></td>
                                -->
						
						 
						
						
						<!-- //상품 조회 부분 -->

<!-- 상품 조회 부분 시작 -->
						<c:forEach items="${ap}" var="a">
						<tbody id="prdContent">
												                            <td>${a.cname} </td>
                            <td>${a.pname}</td>
                            <td>${a.pprice}</td>
                            <td>${a.pstock}</td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >삭제</button></td>
						
					
						</tbody>
	</c:forEach> 
	
	<!-- //상품 조회 부분 -->
	
					</table>				
				</div>
                
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
                                <select id="category" name="cid" aria-label="category" class="form-control input_value">
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
										<input type="text" class="form-control input_value" min="0" id="pprice">
									</div>
								</div>
								
								<div>
									상품내용
									<div class="col-sm-8">
										<input type="text" class="form-control input_value" min="0" id="pinfo">
									</div>
								</div>


								<div>
									재고량
									<div class="col-sm-8">
										<input type="text" class="form-control input_value" min="0" id="pstock">
									</div>
								</div>


                            
						</div>
						
						                    <!-- 모달 푸터 -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary"
                        onclick="insertProduct()" >등록</button>
                        <button type="button" class="btn btn-secondary"
                        data-dismiss="modal">취소</button>
                    </div>
                     <!-- // 모달 푸터 -->
					</form>


                    </div>
                    </div>
<!-- // 상품 등록 모달창 -->

</div>

</div>
<!-- 사이드바 끝 -->












<!-- 상품 검색 ajax 

		            	$('#prdContent').empty();
		                
		                for(var i = 0 ; i < result.length; i++){
		                	var searchProduct = '<td>' + result[i].cname + '</td>'
		                	+ '<td>' + result[i].pname + '</td>'
		                	+ '<td>' + result[i].pprice + '</td>'
		                	+ '<td>' + result[i].pstock + '</td>'
		                	+ '<td>' + result[i].cname + '</td>'
		                	+ '<td><button type="button" class="btn btn-secondary" onclick="modalDelBtn()" >삭제</button></td>'

                            
		                	$('#prdContent').append(searchProduct);
		                }
		                 -->
		                 
		                 
		                 
   <!--  상품조회 비동기통신 시작 -->             
		<script>
	        function searchProduct(){
	    		var pname = $("#pname").val();
	        	
	        	$.ajax({
		            url  : "${pageContext.request.contextPath}/admin/adminSearchProduct.do",
		            data : {pname:pname},
		            type : "get",
		            success : function(result){

		            	$('#prdContent').empty();
		                
		                for(var i = 0 ; i < result.length; i++){
		                	var searchProduct = '<tr><td>' + result[i].cname + '</td>'
		                	+ '<td>' + result[i].pname + '</td>'
		                	+ '<td>' + result[i].pprice + '</td>'
		                	+ '<td>' + result[i].pstock + '</td>'
		                	+ '<td><button type="button" class="btn btn-secondary" onclick="modalDelBtn()" >삭제</button></td></tr>'

                            
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









</body>
</html>