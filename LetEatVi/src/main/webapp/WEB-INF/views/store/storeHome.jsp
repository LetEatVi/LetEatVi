<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon"
	href="${pageContext.request.contextPath}/resources/favicon.ico">
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
	href="${pageContext.request.contextPath}/resources/css/test.css">

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
	font-family: 'Eulyoo1945-Regular';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2102-01@1.0/Eulyoo1945-Regular.woff')
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

	<div class="top-img">
		<div class="main-title">
			<h1>
				내 몸에 필요한 영양제 <br> 궁금하세요?
			</h1>
		</div>
	</div>

	<section>
		<p class="mainText">Store</p>


		<div class="blankArea"></div>

		<div class="container"
			style="max-width: 1350px; margin-bottom: 120px;">
			<nav class="gnb-menu">

				<div onclick="selectCartegory(0);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/all-inclusive.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">All</div>
				</div>

				<div onclick="selectCartegory(1);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/healthcare.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">활력 & 피로</div>
				</div>

				<div onclick="selectCartegory(2);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/skin-care.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">피부 & 모발</div>
				</div>

				<div onclick="selectCartegory(3);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/cells.png"
							alt="" style="width: 50px; height: 50px; margin-left: 21px;">
					</div>
					<div class="categoryText">면역력 & 노화</div>
				</div>

				<div onclick="selectCartegory(4);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/intestine.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">장 & 간</div>
				</div>

				<div onclick="selectCartegory(5);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/bone.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">관절 & 뼈</div>
				</div>

				<div onclick="selectCartegory(6);">
					<div class="categoryMenu">
						<img
							src="${pageContext.request.contextPath}/resources/images/visible.png"
							alt="" style="width: 50px; height: 50px;">
					</div>
					<div class="categoryText">눈 건강</div>
				</div>
			</nav>
		</div>

		<div class="container row mx-auto" id="productListDiv"
			style="max-width: 1600px;">
			<c:forEach items="${productList}" var="p" varStatus="st">
				<div class="card-deck bestProduct col-4 mx-auto ${ p.cname }">
					<div style="border: rgba(0, 0, 0, 0);"
						class="card border-secondary cardSetCss productDiv${p.pid}">
						<a onclick="selectProduct(${p.pid})"><img
							src="${pageContext.request.contextPath}/resources/images/${p.pname}.jpg"
							class="card-img-top bestProductImg" style="width: 100%;"
							alt="..." id="img${p.pid}"></a>

						<div class="card-body cardText">
							<p class="product-info">
								<b id="name${p.pid}">${p.pname}</b>
							</p>
							<div class="product-info row">
								<div class="col" id="price${p.pid}"
									style="margin-left: 0px; padding-left: 15px;">￦
									${p.pprice}</div>

									<div class="row">
										<div class="col" style="padding: 0px 0px;">
											<button type="button" onclick="addCart(${p.pid})"
												class="popover-dismiss" data-container="body"
												data-toggle="popover" data-placement="bottom"
												data-content="장바구니에 추가하였습니다."
												style="border: rgba(0, 0, 0, 0); background-color: rgba(0, 0, 0, 0);">
												<img
													src="${pageContext.request.contextPath}/resources/images/add-to-basket.png"
													style="width: 40px; margin-top: -40px;">
											</button>
										</div>
										<div class="col" onclick="selectProduct(${p.pid})"
											id="selectProduct${p.pid}" class="test${p.pid}">
											<button type="button" onclick="selectProduct(${p.pid})"
											style="border: rgba(0, 0, 0, 0); background-color: rgba(0, 0, 0, 0);">
											<img
												src="${pageContext.request.contextPath}/resources/images/loupe_store.png"
												style="width: 35px; margin-top: -37px;"></button>
										</div>
									</div>

							</div>
						</div>
					</div>
				</div>
			</c:forEach>
			<br />
		</div>
		<br />
		<c:out value="${pageBar}" escapeXml="false" />

		<script>
        function checkProduct(value){
            $(".choiceProduct" + value +" i").toggleClass("select");
        }
            $('.popover-dismiss').popover({
                trigger: 'focus'
            })
        </script>

		<script>
			function addCart( pid ){
				var cart = [];
				console.log(pid + "번 제품 장바구니 추가");
				
				$.ajax({
		            url  : "${pageContext.request.contextPath}/store/addCart.do",
		            data : { pid, userId : '${member.userId}' }, 
		            type : "get",
		            success : function(data){
		                console.log(data);
		            }
	        	}); 
			}
		</script>

		<script>
			function selectCartegory(cid){
				$.ajax({
			           url  : "${pageContext.request.contextPath}/store/selectCategory.do",
			           data : { cid },
			           type : "get",
			           success : function(result){
			        	   $('#productListDiv').empty();
			                
			                for(var i = 0 ; i < result.length; i++){
			                	var productOne = '<div class="card-deck bestProduct col-4 mx-auto ' + result[i].cname + '">'
			                				+'<div style="border: rgba(0, 0, 0, 0); font-family: Eulyoo1945-Regular;" class="card border-secondary cardSetCss productDiv' + result[i].pid + '">'
			                    		    +'<img src="${pageContext.request.contextPath }/resources/images/' + result[i].pname
			                    		    + '.jpg" class="card-img-top bestProductImg" style="width : 100%;" id="img' + result[i].pid + '">'
			                    		    + '<div class="card-body cardText"><p><b id="name' + result[i].pid + '">' + result[i].pname + '</b></p>'
											+ '<div class="product-info row">'
			                    		    + '<div class="col" id="price' + result[i].pid + '" style="margin-left: 0px; padding-left: 15px;">￦ ' +  result[i].pprice
									    	+ '</div>'
									    	+ '<div class="row">'
											+ '<div class="col" style="padding: 0px 0px;">'
											+ '<button type="button" onclick="addCart(' +result[i].pid +')" class="popover-dismiss" data-container="body'
											+ 'data-toggle="popover" data-placement="bottom" data-content="장바구니에 추가하였습니다." style="border: rgba(0, 0, 0, 0); background-color: rgba(0, 0, 0, 0);">'
											+ '<img src="${pageContext.request.contextPath}/resources/images/add-to-basket.png" style="width: 40px; margin-top: -40px;">'
											+ '</button>'
											+ '</div>'
											+ '<div class="col" id="selectProduct' +result[i].pid + '" class="test' +result[i].pid + '">'
											+ '<button type="button" onclick="selectProduct(' +result[i].pid + ')" style="border: rgba(0, 0, 0, 0); background-color: rgba(0, 0, 0, 0);">'
											+ '<img src="${pageContext.request.contextPath}/resources/images/loupe_store.png" style="width: 35px; margin-top: -37px;">'
											+ '</button>'
											+ '</div>'
											+ '</div>'
											+ '</div>';
											+ '<br>';
			                     $('#productListDiv').append(productOne);
			                }
			            }
		        	}); 
			}
		</script>

		<script>
			function selectProduct(value){
				console.log("onclick pid 값: " + value);
				location.href="${pageContext.request.contextPath}/store/selectProduct.do?pid=" + value
			}
		</script>

	</section>

	<%@include file="../common/footer.jsp"%>
</body>

</html>