<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!DOCTYPE html>
<html>
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<head th:fragment="head">
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrinkto-fit=no">
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


			<!-- ???????????? ?????? -->
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

											<!-- <h4> ?????? ?????? </h4> -->
											<div class="col-sm-8">
												<input type="text" class="form-control form-control-sm"
													placeholder="?????? ???????????? ???????????????." name="userId" id="userId"
													style="" />
											</div>
											<button type="button" class="searchBtn" id="searchBtn"
												onclick="searchMember()">
												<i class="fas fa-search"></i>
											</button>

										</form>
									</div>
									<!-- -----------------------Member Search Bar End ------------------------ -->

									<!-- --------------------- ?????? ?????? ?????? ????????? Start -------------------------- -->
									<div class="scrollable">
										<table class="table table-hover text-center" id="memberTbl">

											<thead>
												<tr data-target="#listmodal" data-toggle="modal" id="sorter">
													<th>???????????????</th>
													<th>??????</th>
													<th>??????</th>
													<th>??????</th>
													<th>?????? ?????? ??????</th>
												</tr>
											</thead>
											
											
											
											<c:forEach items="${mb}" var="m">
												<tbody id="memContent">
													<tr>
														<td id="s1">${m.userId}</td>
														<td>${m.userName}</td>
														<td>${m.gender}</td>
														<td>${m.age}</td>
														<td id="del"><button type="button"
																class="btn btn-secondary" id="delBtn">??????</button></td>
													</tr>
												</tbody>
											</c:forEach>

											<!-- ----------------------- ?????? ?????? ?????? ????????? End ------------------------ -->
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
						
	<!--  ?????? ?????? ??????????????? ?????? -->             
		<script>
	        function searchMember(){
	    		var userId = $("#userId").val();
	    		
	    		$('#memberTbl tbody').empty();
	        	
	        	$.ajax({
		            url  : "${pageContext.request.contextPath}/admin/adminSearchMember.do",
		            data : {userId:userId},
		            type : "get",
		            success : function(result){

		            	
		                
		                for(var i = 0 ; i < result.length; i++){
		                	var searchMember = '<tr><td>' + result[i].userId + '</td>'
		                	+ '<td>' + result[i].userName + '</td>'
		                	+ '<td>' + result[i].gender + '</td>'
		                	+ '<td>' + result[i].age + '</td>'
		                	+ '<td id="del"><button type="button" class="btn btn-secondary" id="delBtn">??????</button></td></tr>'

                            
		                	$('#memContent').append(searchMember);    	                
		            }
		            }	            
	        	}); 
	    	}   
        </script>
    <!--  ?????? ?????? ??????????????? ??? -->   
    
    
    
        <!--  ?????? ?????? ??????????????? ?????? -->
    <script>
 
    $("#del button").click(function(){ 
    	
    	var delBtn = $(this);
		var tr = delBtn.parent().parent(); // checkBtn.parent() : checkBtn??? ????????? <td>??????.
		var td = tr.children(); // checkBtn.parent().parent() : <td>??? ??????????????? <tr>??????.
		var userId = td.eq(0).text();
		
		console.log("????????? Row??? ?????? ????????? : "+tr.text());
		console.log(userId);
    	
    	tr.remove();

        $.ajax({
            url  : "${pageContext.request.contextPath}/admin/adminDeleteMember.do",
            data : {userId:userId},
            type : "get",
            success : function(result){

            	alert("????????? ?????????????????????.");  	 

            }
            	            
        }); 
    });
        </script>
    <!--  ?????? ?????? ??????????????? ??? -->						

</div>
</div>
</div>
</div>
</div>
</body>
</html>