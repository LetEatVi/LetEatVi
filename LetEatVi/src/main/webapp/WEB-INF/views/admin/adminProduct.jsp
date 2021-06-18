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
            <h3 id="searchTitle">��ǰ ��ȸ</h3> 

            <!-- ��ǰ �˻� ��ġ�� form action="adminSearch.do?pname=" + pname -->
            <div id="searchProduct">

            <form class="searchForm" >
 
<!--            <select id="category" name="category" aria-label="category" class="form-control input_value">
                <option value="all" selected>��ü</option>
                <option value="1">�� �ǰ�</option>
                <option value="2">�� �ǰ�</option>
                <option value="3">�� �ǰ�</option>
                <option value="4">�ӽ�</option>
                <option value="5">�ӽ�</option>
            </select>
            
            
 -->
 
            <!-- <h4> ��ǰ �̸� </h4> -->
            <div class="col-sm-8" >
                <input type="text" class="form-control input_value" placeholder="��ǰ �̸��� �Է��ϼ���." name="pname" id="pname">
            </div>
            
            <button type="button" class="btn btn-success"
             id="search" onclick="searchProduct();">�˻�</button>
             </form>

            

            

            <button type="button" class="btn btn-primary"
             id="new">�� ��ǰ ���</button>

            </div>

          
        <!-- // ��ǰ �˻� ��ġ�� form -->
            
            
            
            <!-- �߰��� ��ǰ���� �����Ͽ� �����ִ� ���̺� -->
				<div class="scrollable">
					<table class="table table-hover text-center">
	
						<thead>
							<tr data-target="#listmodal" data-toggle="modal" id="sorter">
                                <th>ī�װ�</th>
								<th>��ǰ��</th>
								<th>����</th>
								<th>���</th>
								<th>������ư</th>
							</tr>
						</thead>

						
						<!-- ��ǰ ��ȸ �κ� ���� <c:forEach items="${ap}" var="a">  </c:forEach> 
						
						                            <td>${a.cname} </td>
                            <td>${a.pname}</td>
                            <td>${a.pprice}</td>
                            <td>${a.pstock}</td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >����</button></td>
                                -->
						
						 
						
						
						<!-- //��ǰ ��ȸ �κ� -->

<!-- ��ǰ ��ȸ �κ� ���� -->
						<c:forEach items="${ap}" var="a">
						<tbody id="prdContent">
												                            <td>${a.cname} </td>
                            <td>${a.pname}</td>
                            <td>${a.pprice}</td>
                            <td>${a.pstock}</td>
                            <td><button type="button" class="btn btn-secondary"
                                onclick="modalDelBtn()" >����</button></td>
						
					
						</tbody>
	</c:forEach> 
	
	<!-- //��ǰ ��ȸ �κ� -->
	
					</table>				
				</div>
                
<!-- ��ǰ ��� ���â -->
<div class="insertProduct">
    <div class="insertInner">
            
				<h3>��ǰ ���</h3>
	
				<!-- ��ǰ����� ���� �� -->
				<div class="product_select">
					<form action="" type="POST" class="modalForm" id="modalForm">	
						<div class="select">


							<div class="item">

                                <div>
                                    ī�װ�
                                <div class="col-sm-8">
                                <select id="category" name="cid" aria-label="category" class="form-control input_value">
                                    <option value="all" selected>��ü</option>
                                    <option value="1">�� �ǰ�</option>
                                    <option value="2">�� �ǰ�</option>
                                    <option value="3">�� �ǰ�</option>
                                    <option value="4">�ӽ�</option>
                                    <option value="5">�ӽ�</option>
                                </select>
                                </div>
                            </div>



								<div>
									��ǰ��
									<div class="col-sm-8">
										<input type="text" class="form-control input_value" id="pname2">
									</div>
								</div>
							</div>
							

								<div>
									����
									<div class="col-sm-8">
										<input type="text" class="form-control input_value" min="0" id="pprice">
									</div>
								</div>
								
								<div>
									��ǰ����
									<div class="col-sm-8">
										<input type="text" class="form-control input_value" min="0" id="pinfo">
									</div>
								</div>


								<div>
									���
									<div class="col-sm-8">
										<input type="text" class="form-control input_value" min="0" id="pstock">
									</div>
								</div>


                            
						</div>
						
						                    <!-- ��� Ǫ�� -->
                    <div class="modal-footer">
                        <button type="button" class="btn btn-primary"
                        onclick="insertProduct()" >���</button>
                        <button type="button" class="btn btn-secondary"
                        data-dismiss="modal">���</button>
                    </div>
                     <!-- // ��� Ǫ�� -->
					</form>


                    </div>
                    </div>
<!-- // ��ǰ ��� ���â -->

</div>

</div>
<!-- ���̵�� �� -->












<!-- ��ǰ �˻� ajax 

		            	$('#prdContent').empty();
		                
		                for(var i = 0 ; i < result.length; i++){
		                	var searchProduct = '<td>' + result[i].cname + '</td>'
		                	+ '<td>' + result[i].pname + '</td>'
		                	+ '<td>' + result[i].pprice + '</td>'
		                	+ '<td>' + result[i].pstock + '</td>'
		                	+ '<td>' + result[i].cname + '</td>'
		                	+ '<td><button type="button" class="btn btn-secondary" onclick="modalDelBtn()" >����</button></td>'

                            
		                	$('#prdContent').append(searchProduct);
		                }
		                 -->
		                 
		                 
		                 
   <!--  ��ǰ��ȸ �񵿱���� ���� -->             
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
		                	+ '<td><button type="button" class="btn btn-secondary" onclick="modalDelBtn()" >����</button></td></tr>'

                            
		                	$('#prdContent').append(searchProduct);    	                
		            }
		            }	            
	        	}); 
	    	}   
        </script>
    <!--  ��ǰ��ȸ �񵿱���� �� -->   
    
    
    <!--  ��ǰ��� �񵿱���� ���� -->
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
		            	
		            	alert("��ǰ����� �Ϸ�Ǿ����ϴ�.");
		            	$("#category").val('');
		            	$("#pname2").val('');
		            	$("#pinfo").val('');
		            	$("#pprice").val('');
		            	$("#pstock").val('');

		            	 	                
		            }
		            	            
	        	}); 
	    	}   
        </script>
    <!--  ��ǰ��� �񵿱���� �� -->









</body>
</html>