<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.kh.leteatvi.member.model.vo.Member, java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="shortcut icon" href="${pageContext.request.contextPath}/resources/favicon.ico">
	<title>회원 정보 관리</title>
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
	href="${pageContext.request.contextPath}/resources/css/myPage.css">
	
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
		font-family: 'Inkfree';
		src:
			url('${pageContext.request.contextPath}/resources/font/Inkfree.ttf')
			format('truetype');
	}

	div#update-container{width:400px; margin:0 auto; text-align:center;}
	div#update-container input, div#update-container select {margin-bottom:10px;}
	
</style>
</head>

<body>

	<%@include file="../common/header.jsp"%>

	<div class="top-img"></div>
	
	<div id="mypagev-home">
	    <div class="home-top-content">
	      <h2><b> ${member.userId} </b> 님의 <em class="light"> 회원정보 </em></h2>
	    </div>
	    <br><br>
	
	<div id="update-container">
		<form name="memberUpdateFrm" action="${pageContext.request.contextPath}/member/updateMember.do" method="post">
			<input type="text" class="form-control" placeholder="아이디" name="userId" id="userId_" value="${member.userId}" readonly required>
			<input type="text" class="form-control" placeholder="이름" name="userName" id="userName" value="${member.userName}" required>
			<input type="number" class="form-control" placeholder="나이" name="age" id="age" value="${member.age}">
			<select class="form-control" name="gender" required>
			  <option value="" disabled selected>성별</option>
			  <option value="M" ${member.gender=='M'?'selected':'' }>남</option>
			  <option value="F" ${member.gender=='F'?'selected':'' }>여</option>
			</select>
            <input type="tel" class="form-control" placeholder="전화번호 (예:01012345678)" name="phone" id="phone" maxlength="11" value="${member.phone}" required>
			<input type="email" class="form-control" placeholder="이메일" name="email" id="email" value="${member.email}" required>
			<input type="text" class="form-control" placeholder="주소" name="address" value="${member.address}" id="address">
			<br />
			<input type="submit" class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/member/updateMember.do'" value="수정" >&nbsp;
			<input type="reset" class="btn btn-outline-success" value="취소">&nbsp;
			<input type="button" class="btn btn-outline-success" onclick="location.href='${pageContext.request.contextPath}/member/memberDelete.do'" value="탈퇴">
		</form>
	</div>
	
	<%@include file="../common/footer.jsp"%>
	
</body>
</html>