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
    <link href="${pageContext.request.contextPath}/resources/css/admin/adminMember.css" rel="stylesheet">
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

    <div class="inner">
		<div class="wrapper">
			<div class="container sub-contents">


            <!-- ��ǰ ��ȸ -->
            <h3 id="searchTitle">ȸ�� ��ȸ</h3> 

            <!-- ��ǰ �˻� ��ġ�� form -->
            <div id="searchProduct">

            <form class="searchForm" action="searchMember.do?userId=">
<!-- 
            <select id="category" name="category" aria-label="category" class="form-control input_value">
                <option value="all" selected>��ü</option>
                <option value="1">Ȱ�� ��</option>
                <option value="2">Ȱ�� ����</option>
            </select>
            
             -->

            <!-- <h4> ȸ�� �̸� </h4> -->
            <div class="col-sm-8" >
                <input type="test" class="form-control input_value" placeholder="ȸ�� ���̵� �Է��ϼ���." name="userId">
            </div>
             
            

            
            <button type="submit" class="btn btn-success"
            id="search">�˻�</button>
            
			</form>
			
            <!-- <button type="button" class="btn btn-primary"
             id="new">�� ��ǰ ���</button> -->

            </div>

          
        <!-- // ȸ�� �˻� ��ġ�� form -->
            
            <!-- �߰��� ��ǰ���� �����Ͽ� �����ִ� ���̺� -->
				<div class="scrollable">
					<table class="table table-hover text-center">
	
						<thead>
							<tr data-target="#listmodal" data-toggle="modal" id="sorter">
                                <th>ȸ�����̵�</th>
								<th>�̸�</th>
								<th>����</th>
								<th>����</th>
								<th>Ȱ�� ���� ��ư</th>
							</tr>
						</thead>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >����</button></td>
                        </tr>

                        <!-- �����ͺ��̽� ���� �� ������ �κ� �Դϴ�. -->
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >����</button></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >����</button></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >����</button></td>
                        </tr>
	
                        <!-- �����ͺ��̽� ���� �� ������ �κ� �Դϴ�. -->

						<tbody id="inputval">
					
						</tbody>
	
					</table>				
				</div>
            

</div>

</div>
<!-- ���̵�� �� -->
    <!-- JQeury CDN -->
    <script src="https://code.jquery.com/jquery-2.2.4.js" integrity="sha256-iT6Q9iMJYuQiMWNd9lDyBUStIq/8PuOW33aOqmvFpqI=" crossorigin="anonymous"></script>
</body>
</html>