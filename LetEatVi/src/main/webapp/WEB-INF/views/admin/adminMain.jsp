<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
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

<!-- ���̵�� ���� -->
<div class="sidebar">
    <div class="sidebar_inner">
        <!-- ���̵�� Ÿ��Ʋ -->

            <h1>���պ� ��ú���</h1>

    
        <!-- ���̵�� �޴� -->
        <ul class="sidebar_menu">
            <li class="active"><a href="${pageContext.request.contextPath}/admin/adminMain.do" ><i class="fas fa-chart-bar"></i>��Ʈ ����</a></li>
            <li><a href="#" ><i class="fas fa-database"></i>��ǰ ���</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/adminProduct.do" ><i class="fas fa-boxes"></i>��� ����</a></li>
            <li><a href="#" ><i class="fas fa-file-invoice-dollar"></i>���� ����</a></li>
            <li><a href="${pageContext.request.contextPath}/admin/adminMember.do" ><i class="fas fa-user-friends"></i>ȸ�� ����</a></li>
            <li><a href="#" ><i class="fas fa-cogs"></i>����Ʈ ����</a></li>
            <li><a href="#" ><i class="fas fa-wrench"></i>�ӽð���1</a></li>
            <li><a href="#" ><i class="fas fa-wrench"></i>�ӽð���2</a></li>
            <li><a href="#" ><i class="fas fa-wrench"></i>�ӽð���3</a></li>
        </ul>
    </div>
    </div>
    <!-- ���̵�� �� -->

   
<!--------------------------------------------------------------------->

<!-- ��ú��� ���� -->
<section class="dashboard">

    <div class="dashboard-sec">
    
    
   <ul>
	<li onclick="kakaoLogin();">
      <a href="javascript:void(0)">
          <span>īī�� �α���</span>
      </a>
	</li>
	<li onclick="kakaoLogout();">
      <a href="javascript:void(0)">
          <span>īī�� �α׾ƿ�</span>
      </a>
	</li>
</ul>
<!-- īī�� ��ũ��Ʈ -->
<script src="https://developers.kakao.com/sdk/js/kakao.js"></script>
<script>
Kakao.init('64f4b1b5b189312715a86bfd4423345d'); //�߱޹��� Ű �� javascriptŰ�� ������ش�.
console.log(Kakao.isInitialized()); // sdk�ʱ�ȭ�����Ǵ�
//īī���α���
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
//īī���α׾ƿ�  
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


    <!-- ��ú��� Ÿ��Ʋ-->
    <div class="dashboard_title">
        <h1>Let Eat Vi, �� �� ��!</h1>
        <h4>�ȳ��ϼ���, �����ڴ�</h4>
    </div>
    <!-- // ��ú��� Ÿ��Ʋ -->

    <!-- ��ú��� ���� -->
    <div class="dashboard_content">
    <!-- ��ú��� �������� -->
    <div class="notice">
        
        <div class="notice_content">
        <img src="images/admin.png" alt="">
        <div class="notice-text">
        <h1> ���պ� </h1>
        <p> ������ �� �ڸ��Դϴ�. ������ �� �ڸ��Դϴ�. 
            ������ �� �ڸ��Դϴ�. ������ �� �ڸ��Դϴ�. 
            ������ �� �ڸ��Դϴ�. ������ �� �ڸ��Դϴ�. 
        </p>
        </div>
        </div>

    </div>
    <!-- // ��ú��� �������� -->


    <!-- ��ú��� �ֿ� ��Ȳ -->
    <div class="report">

        <!-- �Ǹ� �ݾ� -->
        <div class="report1">
  
            <p> ���ñ��� ���պ� �Ǹ��� �� �ݾ���</p>
            <h4> 100,000,000 ��</h4>

        </div> 

        <!-- �Ǹ� ���� -->
        <div class="report2">

            <p> ���ñ��� ���պ� �Ǹ��� ��ǰ ������</p>
            <h4> 300,000 ��</h4>

        </div> 

        <!-- ȸ�� �� -->
        <div class="report3">

            <p> ���ñ��� ���պ� ������ ȸ�� ����</p>
            <h4> 123,456,789 �� </h4>

        </div>
        
        <!-- ���� ���� -->
        <div class="report4">

            <p> ���ñ��� ���պ� ���� ���� ������</p>
            <h4> 123,456,789 ��</h4>

        </div> 
    </div>
    <!-- // ��ú��� �ֿ� �޴� �ڽ� -->

    

    <!-- ��ú��� ��Ʈ ���� -->


        <!-- ���� ��Ʈ : ���� ���� ���� -->
        
            <div class="order_chart">
                <div class="content">
                <h4> ���� ���� ����</h4>
                <p> ������ �� �ڸ��Դϴ�. ������ �� �ڸ��Դϴ�. </p>
            
                <div class="chart-sec"><img src="/images/graph.PNG" alt=""></div>
            </div>
            </div>
        

        <!-- ������ ��Ʈ : ��ǰ �Ǹ� ���� ��Ʈ-->
        
            <div class="sales_chart">
                <div class="content">
                <h4> ��ǰ �Ǹ� ���� ��Ʈ</h4>
                <p> ������ �� �ڸ��Դϴ�. ������ �� �ڸ��Դϴ�. </p>
            
                <div class="chart-sec"><img src="/images/graph.PNG" alt=""></div>
            </div>
            </div>
       


    <!-- ��ú��� ��Ʈ �� -->
</div>
<!-- // ��ú��� ���� -->

</div>
</section>
<!-- ��ú��� �� -->

</div>





    <!-- Apex Chart-->
    <script src="https://cdn.jsdelivr.net/npm/apexcharts"></script>
    <!-- JQeury CDN -->
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
</body>
</html>