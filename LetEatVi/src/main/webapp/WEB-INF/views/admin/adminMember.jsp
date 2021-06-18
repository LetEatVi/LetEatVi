<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<head th:fragment="head">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrinkto-fit=no">
    <title>Hello, world!</title>
    <!-- JQeury -->
    <script
	src="${pageContext.request.contextPath}/resources/js/jquery-3.6.0.min.js"></script>
    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/admin/adminMember.css" rel="stylesheet">
    <!-- FONT AWSOME -->
    <script src="https://kit.fontawesome.com/2004329f9f.js"
            crossorigin="anonymous"></script>
    <!-- BOOTSTRAP CDN v4.6.0 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.min.js" integrity="sha384-+YQ4JLhjyBLPDQt//I+STsc9iw4uQqACwlvpslubQzn4u2UU2UFM80nGisd026JF" crossorigin="anonymous"></script>
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
            <h3 id="searchTitle">회원 조회</h3> 

            <!-- 상품 검색 서치바 form -->
            <div id="searchProduct">

            <form class="searchForm">
<!-- 
            <select id="category" name="category" aria-label="category" class="form-control input_value">
                <option value="all" selected>전체</option>
                <option value="1">활동 중</option>
                <option value="2">활동 정지</option>
            </select>
            
             -->

            <!-- <h4> 회원 이름 </h4> -->
            <div class="col-sm-8" >
                <input type="test" class="form-control input_value" placeholder="회원 아이디를 입력하세요." name="userId" id="userId">
            </div>
             
            

            
            <button type="button" class="btn btn-success"
            id="search" onclick="searchMember()">검색</button>
            
			</form>
			
            <!-- <button type="button" class="btn btn-primary"
             id="new">새 상품 등록</button> -->

            </div>

          
        <!-- // 회원 검색 서치바 form -->
            
            <!-- 추가한 상품들을 나열하여 보여주는 테이블 -->
				<div class="scrollable">
					<table class="table table-hover text-center">
	
						<thead>
							<tr data-target="#listmodal" data-toggle="modal" id="sorter">
                                <th>회원아이디</th>
								<th>이름</th>
								<th>성별</th>
								<th>나이</th>
								<th>활동 정지 버튼</th>
							</tr>
						</thead>
<!-- 상품 조회 부분 시작 -->
						<c:forEach items="${mb}" var="m">
						<tbody id="memContent">
												                            <td>${a.cname} </td>
                            <td>${m.userId}</td>
                            <td>${m.userName}</td>
                            <td>${m.gender}</td>
                            <td>${m.age}</td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >삭제</button></td>
						
					
						</tbody>
	</c:forEach> 
	
	<!-- //상품 조회 부분 -->
	
					</table>				
				</div>
            

</div>

</div>
<!-- 사이드바 끝 -->

<!--  상품조회 비동기통신 시작 -->             
		<script>
	        function searchMember(){
	    		var userId = $("#userId").val();
	        	
	        	$.ajax({
		            url  : "${pageContext.request.contextPath}/admin/adminSearchMember.do",
		            data : {userId:userId},
		            type : "get",
		            success : function(result){

		            	$('#memContent').empty();
		                
		                for(var i = 0 ; i < result.length; i++){
		                	var searchMember = '<tr><td>' + result[i].userId + '</td>'
		                	+ '<td>' + result[i].userName + '</td>'
		                	+ '<td>' + result[i].gender + '</td>'
		                	+ '<td>' + result[i].age + '</td>'
		                	+ '<td><button type="button" class="btn btn-secondary" onclick="modalDelBtn()" >삭제</button></td></tr>'

                            
		                	$('#memContent').append(searchMember);    	                
		            }
		            }	            
	        	}); 
	    	}   
        </script>
    <!--  상품조회 비동기통신 끝 -->   







</body>
</html>