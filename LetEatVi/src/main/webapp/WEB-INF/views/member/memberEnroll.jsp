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
<title>Vitamin Join</title>

<!-- Boot Strap link -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css"
	integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l"
	crossorigin="anonymous">

<!-- Cstumizing Css -->
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath }/resources/css/join.css">

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

	<div class="joinBox">
		<div class="logoBox">
			<img
				src="${pageContext.request.contextPath}/resources/images/logo.jpg"
				id="logo">
		</div>


		<div class="formBox">
			<!-- form -->
			<form name="memberEnrollFrm" action="memberEnrollEnd.do"
				method="post">
				<!-- 아이디 -->
				<div class="form-group">
					<label for="id">아이디</label> <input type="text" name="userId"
						id="userId_" class="form-control" placeholder="아이디를 입력하세요."
						required>

				</div>
				<!-- //아이디 -->

				<!-- 비밀번호 -->
				<div class="form-group">
					<label for="password">비밀번호</label> <input type="password"
						name="password" id="password_" class="form-control"
						placeholder="비밀번호를 입력하세요." required>
				</div>
				<!-- //비밀번호 -->

				<!-- 비밀번호 확인 -->
				<div class="form-group">
					<label for="password">비밀번호 확인 </label> <input type="password"
						name="password2" id="password2" class="form-control"
						placeholder="비밀번호를 입력하세요." required>
				</div>
				<!-- //비밀번호 확인 -->

				<!-- 이름 -->
				<div class="form-group">
					<label for="name">이름</label> <input type="text" name="userName"
						id="userName" class="form-control" placeholder="이름을 입력하세요."
						required>
				</div>
				<!-- //이름 -->


				<!-- 나이 -->
				<div class="form-group">
					<label for="age">나이</label> <input type="number" name="age"
						id="age" class="form-control" placeholder="나이를 입력하세요." required>
				</div>
				<!-- //나이 -->



				<!-- 성별 -->
				<div class="form-group">
					<label for="gender">성별</label> <select id="gender" name="gender"
						class="form-control" aria-label="성별">
						<option value="M">남자</option>
						<option value="F">여자</option>
					</select>
				</div>
				<!-- //성별 -->

				<!-- 전화번호 -->
				<div class="form-group">
					<label for="phone">전화번호</label> <input type="tel" name="phone"
						id="phone" maxlength="11" class="form-control"
						placeholder="전화번호를 입력하세요." required>
				</div>
				<!-- //전화번호 -->

				<!-- 이메일 -->
				<div class="form-group" id="eamilBox">
					<label for="email">이메일</label>
					<input type="email" name="email"
						id="email" class="form-control" placeholder="이메일을 입력하세요."
						style="width: 480px;">
				</div>
				<!-- //이메일 -->

				<!-- 집주소 -->
				<div class="form-group">
					<label for="address">집주소</label> <input type="text" name="address"
						class="form-control" placeholder="집주소를 입력하세요.">
				</div>
				<!-- //집주소 -->


				<!-- 회원가입 버튼 -->
				<input type="submit" class="btn btn-danger" id="loginBtn" value="가입">
				<!-- //회원가입 버튼 -->
			</form>
			<!-- //form -->

		</div>
	</div>


	<div class="bigContainer">
		<div class="joinApiBox">
			<!-- 카카오톡 회원가입 버튼 -->
			<button class="btn btn-warning" type="submit" value="Submit"
				id="loginBtn">카카오톡 회원가입 하기</button>
			<!-- // 카카오톡 회원가입 버튼 -->

			<!-- 페이스북 회원가입 버튼 -->
			<button class="btn btn-primary" type="submit" value="Submit"
				id="loginBtn">페이스북 회원가입 하기</button>
			<!-- // 페이스북 회원가입 버튼 -->

			<!-- 네이버 회원가입 버튼 -->
			<button class="btn btn-success" type="submit" value="Submit"
				id="loginBtn">네이버 회원가입 하기</button>
			<!-- // 네이버 회원가입 버튼 -->
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