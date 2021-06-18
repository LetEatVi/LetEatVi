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
    <!-- CSS -->
    <link href="${pageContext.request.contextPath}/resources/css/admin/adminMain.css" rel="stylesheet">
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

   
<!--------------------------------------------------------------------->

<!-- 대시보드 시작 -->
<section class="dashboard">

    <div class="dashboard-sec">
    
    
   <ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <span>카카오 로그인</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>카카오 로그아웃</span>
      </a>
	</li>
</ul>
<!-- 카카오 스크립트 -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('64f4b1b5b189312715a86bfd4423345d'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
    Kakao.Auth.login({
      success: function (response) {
        Kakao.API.request({
          url: '/v2/user/me',
          success: function (response) {
        	  console.log(response)
          },
          fail: function (error) {
            console.log(error)
          },
        })
      },
      fail: function (error) {
        console.log(error)
      },
    })
  }
//카카오로그아웃  
function kakaoLogout() {
    if (Kakao.Auth.getAccessToken()) {
      Kakao.API.request({
        url: '/v1/user/unlink',
        success: function (response) {
        	console.log(response)
        },
        fail: function (error) {
          console.log(error)
        },
      })
      Kakao.Auth.setAccessToken(undefined)
    }
  }  
</script>


    <!-- 대시보드 타이틀-->
    <div class="dashboard_title">
        <h1>Let Eat Vi, 렛 잇 비!</h1>
        <h4>안녕하세요, 관리자님</h4>
    </div>
    <!-- // 대시보드 타이틀 -->

    <!-- 대시보드 내용 -->
    <div class="dashboard_content">
    <!-- 대시보드 공지사항 -->
    <div class="notice">
        
        <div class="notice_content">
        <img src="images/admin.png" alt="">
        <div class="notice-text">
        <h1> 렛잇비 </h1>
        <p> 공지가 들어갈 자리입니다. 공지가 들어갈 자리입니다. 
            공지가 들어갈 자리입니다. 공지가 들어갈 자리입니다. 
            공지가 들어갈 자리입니다. 공지가 들어갈 자리입니다. 
        </p>
        </div>
        </div>

    </div>
    <!-- // 대시보드 공지사항 -->


    <!-- 대시보드 주요 현황 -->
    <div class="report">

        <!-- 판매 금액 -->
        <div class="report1">
  
            <p> 오늘까지 렛잇비가 판매한 총 금액은</p>
            <h4> 100,000,000 원</h4>

        </div> 

        <!-- 판매 개수 -->
        <div class="report2">

            <p> 오늘까지 렛잇비가 판매한 상품 개수는</p>
            <h4> 300,000 개</h4>

        </div> 

        <!-- 회원 수 -->
        <div class="report3">

            <p> 오늘까지 렛잇비에 가입한 회원 수는</p>
            <h4> 123,456,789 명 </h4>

        </div>
        
        <!-- 리뷰 개수 -->
        <div class="report4">

            <p> 오늘까지 렛잇비에 쓰인 리뷰 개수는</p>
            <h4> 123,456,789 개</h4>

        </div> 
    </div>
    <!-- // 대시보드 주요 메뉴 박스 -->

    

    <!-- 대시보드 차트 시작 -->


        <!-- 왼쪽 차트 : 월별 매출 추이 -->
        
            <div class="order_chart">
                <div class="content">
                <h4> 월별 매출 추이</h4>
                <p> 설명이 들어갈 자리입니다. 설명이 들어갈 자리입니다. </p>
            
                <div class="chart-sec"><img src="/images/graph.PNG" alt=""></div>
            </div>
            </div>
        

        <!-- 오른쪽 차트 : 상품 판매 동향 차트-->
        
            <div class="sales_chart">
                <div class="content">
                <h4> 상품 판매 동향 차트</h4>
                <p> 설명이 들어갈 자리입니다. 설명이 들어갈 자리입니다. </p>
            
                <div class="chart-sec"><img src="/images/graph.PNG" alt=""></div>
            </div>
            </div>
       


    <!-- 대시보드 차트 끝 -->
</div>
<!-- // 대시보드 내용 -->

</div>
</section>
<!-- 대시보드 끝 -->

</div>





    <!-- Apex Chart-->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <!-- JQeury CDN -->
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
</body>
</html>