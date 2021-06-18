<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, 
    initial-scale=1, shrink-to-fit=no">
<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
<title>Vitamin Login</title>

<!-- Boot Strap link -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Cstumizing Css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/login.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/header.css" />
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/assets/css/footer.css" />

<style type="text/css">
@font-face {
	font-family: 'NEXON Lv1 Gothic OTF';
	src:
		url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-04@2.1/NEXON Lv1 Gothic OTF.woff')
		format('woff');
	font-weight: normal;
	font-style: normal;
}
</style>
</head>
<body>

	<%@include file="../common/header.jsp"%>


	<div class="login-img"></div>

	<div class="loginBox">


		<div class="logoBox">
			<img
				src="${pageContext.request.contextPath}/resources/images/logo.jpg"
				id="logo">
		</div>


		<div class="formBox">
			<!-- form -->
			<form action="memberLoginEnd.do" method="post">
				<!-- 아이디 -->
				<div class="form-group">
					<label for="id">아이디</label> <input type="text" name="userId"
						class="form-control" placeholder="아이디를 입력하세요.">
				</div>
				<!-- //아이디 -->

				<!-- 비밀번호 -->
				<div class="form-group">
					<label for="password">비밀번호</label> <input type="password"
						name="password" class="form-control" placeholder="비밀번호를 입력하세요.">
				</div>
				<!-- //비밀번호 -->

				<!-- 로그인 버튼 -->
				<button class="btn btn-danger" type="submit" value="Submit"
					id="loginBtn">로그인 하기</button>
				<!-- //로그인 버튼 -->
			</form>
			<!-- //form -->

		</div>
	</div>

	<div class="findBox">
		<!-- 비밀번호 찾기, 회원가입 -->
		<nav>
			<a href="#">비밀번호 찾기</a> <span>|</span> <a href="#" class="btn-signup">회원가입</a>
		</nav>
		<!-- //비밀번호 찾기, 회원가입 -->
	</div>

	<div class="bigContainer">
		<div class="loginApiBox">
			<!-- 카카오톡 로그인 버튼 -->
			<button class="btn btn-warning" type="submit" value="Submit"
				id="loginBtn">카카오톡 로그인 하기</button>
			<!-- // 카카오톡 로그인 버튼 -->

			<!-- 페이스북 로그인 버튼 -->
			<button class="btn btn-primary" type="submit" value="Submit"
				id="loginBtn">페이스북 로그인 하기</button>
			<!-- // 페이스북 로그인 버튼 -->

			<!-- 네이버 로그인 버튼 -->
			<button class="btn btn-success" type="submit" value="Submit"
				id="loginBtn">네이버 로그인 하기</button>
			<!-- // 네이버 로그인 버튼 -->
		</div>
	</div>

	<%@include file="../common/footer.jsp"%>

	<!-- JQuery CDN-->
	<script src="https://code.jquery.com/jquery-2.2.4.js"
		integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI="
		crossorigin="anonymous">
		
	</script>
</body>
</html>