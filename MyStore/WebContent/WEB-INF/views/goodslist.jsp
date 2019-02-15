<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />

<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>


<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="">
<!--<![endif]-->
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <title>StoreFriend</title>
    <meta name="description" content="StoreFriend - 소상공인을 위한 장부 관리 사이트">
    <meta name="viewport" content="width=device-width, initial-scale=1">

 <link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->



	<script src="assets/js/lib/data-table/datatables.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
    <script src="assets/js/lib/data-table/jszip.min.js"></script>
    <script src="assets/js/lib/data-table/vfs_fonts.js"></script>
    <script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.print.min.js"></script>
    <script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
    <script src="assets/js/init/datatables-init.js"></script>
    
    
    <!-- data export -->
   <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>






<style>
		/* The Modal (background) */
        .modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
        .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 50%; /* Could be more or less, depending on screen size */                          
        }
        /* The Close Button */
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover,
        .close:focus {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        
        #bgimg{
			margin: auto;
			margin-bottom: 15px;
			width: 1400px;
	 	 	height: 350px;
			background-image: url(./images/storeimg/computer.jpg);
			background-size: 1200px 350px;		
			text-align: center; 	
		}
		
		
		#bgimg{
	/* 	margin: auto;
		margin-bottom: 15px;
		width: 1200px;
 	 	height: 350px;
		background-image: url(./images/storeimg/computer.jpg);
		background-size: 1200px 350px;		
		text-align: center; 	 */
		
		/* position:absolute; */
		
		background-image: url(./images/computer.jpg);
		background-size: 100% 100%;
	}
	
	#cm { position:absolute; }
	
	.hc { width:1800px; left:0; right:0; margin-left:auto; margin-right:auto; } /* 가로 중앙 정렬 */ 
	.vc { height:100px; top: 0; bottom:0; margin-top:auto; margin-bottom:auto; } /* 세로 중앙 정렬 */

		
		

</style>



</head>
<body>
 
	<!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                  
                    <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-bars"></i>매출관리</a>
                        <ul class="sub-menu children dropdown-menu">
                        
                        <!-- 새끼메뉴 -->
                        
                        	<li><i class="fa fa-puzzle-piece"></i><a href="account.do">매출/매입</a></li>
                            <li><i class="menu-icon fa fa-bar-chart"></i><a href="chart.do">상품별 차트</a></li>
                            <li><i class="menu-icon fa fa-bar-chart"></i><a href="montlychart.do">연도별 차트</a></li>
                      
                        </ul>
                    </li>
                    
                   <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-table"></i>매장관리</a>
                        <ul class="sub-menu children dropdown-menu">
                              <li><i class="fa fa-gift"></i><a href="goodslist.do">상품관리</a></li>
                            <li><i class="fa fa-calendar-o"></i><a href="booklist.do">예약관리</a></li>
                            <li><i class="fa fa-id-card-o"></i><a href="emplist.do">직원관리</a></li>
                        </ul>
                    </li>
                    
                    <li class="menu-item-has-children dropdown">
                        <a href="stock.do" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-tasks"></i>재고관리</a>
                    
                    <li class="menu-item-has-children dropdown">
                        <a href="customer.do" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-th"></i>거래처관리</a>
                      </li>
                                
                    
             <li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-users"></i>커뮤니티
					</a>

					<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-sign-in"></i><a
								href="datatable.do?category=자유게시판">자유게시판</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i><a
								href="datatable.do?category=음식업">음식업</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i><a
								href="datatable.do?category=서비스업">서비스업</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i><a
								href="datatable.do?category=제조업">제조업</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i><a
								href="datatable.do?category=도소매업">도소매업</a></li>
						</ul></li>

					<li class="menu-item-has-children dropdown"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"><i
							class="menu-icon fa fa-map-o"></i>지도</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-sign-in"></i><a
								href="formsbasic.do">내주변 가게보기</a></li>
						</ul></li>

                    
                  <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-id-card-o"></i>마이페이지</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-user"></i><a href="mypage.do">내정보</a></li>
                            
                            <li><i class="menu-icon fa fa-paper-plane"></i><a href="qnalist.do">문의하기</a></li>
                           
                        </ul>
                    </li>
                    <c:if test="${login.auth eq 1 }">
                     <li class="menu-item-has-children dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-id-card-o"></i>관리자</a>
                        <ul class="sub-menu children dropdown-menu">
                            <li><i class="menu-icon fa fa-user"></i><a href="getMemberlist.do">회원정보</a></li>
                            <li><i class="menu-icon fa fa-sign-in"></i><a href="qnalist.do">문의</a></li>
                           
                           
                        </ul>
                    </li>
                    
                    </c:if>
                    
                    
                    
                </ul>
            </div><!-- /.navbar-collapse -->
        </nav>
    </aside>
    <!-- /#left-panel -->
    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">
        <!-- Header-->
        <header id="header" class="header">
           <div class="top-left"> 
				<div class="navbar-header">
				
				 <!-- 로고 -->
					<a class="navbar-brand" href="main.do"><img src="images/Slogo.png"
						alt="Logo" height="35px" width="300px"></a> <a class="navbar-brand hidden" href="./"><img
						src="images/Slogo.png" alt="Logo"></a> <a id="menuToggle"
						class="menutoggle"><i class="fa fa-bars"></i></a>
				</div> 
			</div>
				<div class="top-right">  
				<div class="header-menu">
					<div class="header-left">
						<button class="search-trigger">
						</button>

						<div class="dropdown for-message" >
							<button class="btn btn-secondary dropdown-toggle" type="button" id="message" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<i class="fa fa-envelope"></i>
							</button>
							<div class="dropdown-menu" aria-labelledby="message" style="overflow:scroll;width:400px; height:450px;">
								<p class="red">쪽지함</p>
							<span id ="here"></span>
							
							<!-- 쪽지 함수들! -->
							<script type="text/javascript">
							$(document).ready(function () {
								chat();
							});
									$(function chat() {
										var poll_interval = 7000;

							     	$.ajax({
							            type: "get",
							            url : "chat.do",
							            data:"id="+"${login.id}", 
							            success: function(data) {							            	
							            	var parsed = JSON.parse(data);
											var result = parsed.result;
											$("#here").empty();
											for(var i = 0; i< result.length; i++){											
												addList(result[i][0].value, result[i][1].value, result[i][2].value,
														result[i][3].value, result[i][4].value, result[i][5].value
													);												
											}							            	
							               },
							    	 error:function(req,sts,err){							    		  
							    	   } ,
							             complete: function(){
							            setTimeout(chat, poll_interval);
							            }  

							     	});
								});
							   
									// 파싱한 json 뿌림
									function addList(seq,FromID,ToID,ChatTitle,ChatContent,ChatTime) {
									var m = "받은 메세지";
									var i = "";
										if(FromID == "${login.id}"){
											m="보낸 메세지";
											
											$.ajax({
										    	   url:"getimage.do",
										    	   type:"get",
										    	   data:"id="+ToID,
										    	   success:function(data){									    	 
													$("#here").append(
															'<a class="dropdown-item media mb-1" data-toggle="modal" data-target="#mediumModal" onclick="detail('+seq+')">'+
															'<span class="photo media-left">'+
																'<img alt="avatar" src="./upload/'+data+'">'+
															'</span>'+
																'<div class="message media-body">'+
																		'<span class="name float-left">'+ToID+'</span>'+ '<span class="badge badge-success">'+m+'</span>'+
																		'<span class="time float-right">'+ChatTime.substring(0,16)+'</span>'+
																		'<p>'+ChatTitle+'</p>'+
																'</div>'+ 
															'</a>'
													);
										    	   },
										    	   error:function(req,sts,err){			    		  
										    	   }									    	   
										       });		
										
										}else{
											$.ajax({
										    	   url:"getimage.do",
										    	   type:"get",
										    	   data:"id="+FromID,
										    	   success:function(data){									    	 
													$("#here").append(
															'<a class="dropdown-item media mb-1" data-toggle="modal" data-target="#mediumModal" onclick="detail('+seq+')">'+
															'<span class="photo media-left">'+
																'<img alt="avatar" src="./upload/'+data+'">'+
															'</span>'+
																'<div class="message media-body">'+
																		'<span class="name float-left">'+FromID+'</span>'+ '<span class="badge badge-success">'+m+'</span>'+
																		'<span class="time float-right">'+ChatTime.substring(0,16)+'</span>'+
																		'<p>'+ChatTitle+'</p>'+
																'</div>'+ 
															'</a>'
													);
										    	   },
										    	   error:function(req,sts,err){			    		  
										    	   }									    	   
										       });		
										} 										
										 							
										};	
	
								function detail(seq) {
								 $.ajax({
							    	   url:"Mdetail.do",
							    	   type:"get",
							    	   data:"seq="+seq,
							    	   success:function(data){							    		
							    	 	$("#mediumModalLabel").html(data.ChatTitle);
							    	 	$("#_id").html(data.FromID);
							    		$("#hiddenId").val(data.FromID);
							    	 	$("#_content").html(data.ChatContent);
							    	 	$("#_date").html(data.ChatTime.substring(0,16));
										$("#_img").attr("src","upload/"+data.img);
							    	   },
							    	   error:function(request,status,error){
							    		   alert("code = "+ request.status + " message = " + request.responseText + " error = " + error);						
							    	   }							    	   
							       });						     
							}
														
							function answer() {					
							$("#answerId").html(document.getElementById('hiddenId').value);								
							};
														
							$(document).on("click","#answer2",function(){ 
								if($("#content2").val() == ""){
									alert("내용을 입력해 주십시오");
								}else if($("#title2").val() == ""){
									alert("제목을 입력해 주십시오");
								}else{
							 	 $.ajax({
							    	   url:"send.do",
							    	   type:"get",
							    	   contentType: "application/x-www-form-urlencoded; charset=UTF-8",
							    	   data: {
											"fromID" : "${login.id}",
											"toID" : $("#answerId").html(),
											"chatTitle" : $("#title2").val(),
											"chatContent" : $("#content2").val()											
										},											    		   
							    	   success:function(data){
							    	   alert(data);							    			
							    	   },
							    	   error:function(req,sts,err){
										alert("실패");
							    	   }							    	   
							       }); 								
								}
								$("#content2").val("");
								$("#title2").val("");
							});
								</script>
							</div>
						</div>
						
						
						<button class="btn btn-link" type="button" id="message">

							<c:if test="${empty login  }">
								<a href="login.do">Login</a>
							</c:if>
							<c:if test="${!empty login  }">
								<a href="logout.do">Logout</a>
							</c:if>


						</button>
					</div>

					
					
					<!-- 로그인했을경우 이미지 띄우고 안했을때 noimage.png 띄움 -->
					<div class="user-area dropdown float-right">
				
					<c:if test="${empty login  }">
						<a href="#" class="dropdown-toggle active" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> 
							<img class="user-avatar rounded-circle" src="upload/noimage.png" alt="User Avatar">
						</a>
					</c:if>
					
					<c:if test="${!empty login  }">
						<a href="#" class="dropdown-toggle active" data-toggle="dropdown"
							aria-haspopup="true" aria-expanded="false"> <img
							class="user-avatar rounded-circle" src="upload/${login.image }"
							alt="User Avatar">
						</a>
					</c:if> 
					
						<div class="user-menu dropdown-menu">
							<a href="mypage.do" class="nav-link"><i class="menu-icon fa fa-paper-plane"></i>내 정보</a>
							<a href="qnalist.do" class="nav-link"> <i class="menu-icon fa fa-user"></i>문의하기</a>
							
						</div>
					</div>

				</div>
			</div>
        </header>
         
         
         
          <!-------------- 쪽지 Modal1 ---------------------- -->
         
           <div class="modal fade" id="mediumModal" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header"><div>
                       	  <div style="float: left;">   <h3 class="modal-title" id="mediumModalLabel">제목</h3></div> 
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                          	  <div style="float: right; padding-top: 40px" >
	                            <input type="hidden" id="hiddenId" value="">
	                            
	                            <img class="user-avatar rounded-circle" src="upload/${login.image }" alt="User Avatar" width="37px" height="37px" id="_img">
	                            <span id="_id" style="padding-left: 5px">아이디</span>
                          	  </div>
                            </div>
                        </div>
                        <div class="modal-body">
                            <p id="_content">
                           	내용  
                            </p>
                            <div style="float: right;" id="_date">날짜</div>
                        </div>
                        <div class="modal-footer">
                      <button type="button" class="btn btn-secondary mb-1" data-dismiss="modal" aria-hidden="true">취소</button>                           
                      <button type="button" class="btn btn-success mb-1" data-toggle="modal" data-target="#answer"  data-dismiss="modal" aria-hidden="true" onclick="answer()"> 답장 </button>
                       </div>
                    </div>
                </div>
            </div>
       
         <!-------------- 쪽지 Modal1 ---------------------- -->  
            										
              <div class="modal fade" id="answer" tabindex="-1" role="dialog" aria-labelledby="mediumModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <div class="modal-title" id="mediumModalLabel" style="font-size: 30px"><span id="answerId">아이디</span> 님에게</div>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <div class="modal-body">                            
                           <div class="form-group">
                                    <div class="input-group">
                                       <div class="input-group-addon"><i class="fa fa-user"></i></div>
                                        <input type="text" id="title2" name="username2" placeholder="제목" class="form-control">                                   
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="input-group">
                                    <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                                            <textarea rows="10" cols="30" class="form-control"  placeholder="내용" id="content2"></textarea>                                       
                                    </div>
                                </div>               
                       	 </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal" aria-hidden="true">취소</button>
                            <button type="button" class="btn btn-success" data-target="#mediumModal" id="answer2">보내기</button>
                        </div>
                    </div>
                </div>
            </div>
            
            
            
         
     	    <!--------------- 여기까지 모든 페이지가 겹치는 부분 ------------------------>
         
            
            
        <!--------------- 내용 시작 ------------------------>  
        <!-- /#header -->
<div class="clearfix">
		<div class="breadcrumbs">
			<div class="breadcrumbs-inner">
				<div class="row m-0">
					<div class="col-sm-4">
						<div class="page-header float-left">
							<div class="page-title">
								<h1>상품 관리</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">매장관리</a></li>
									<li><a href="#">상품관리</a></li>
									<li class="active">상품 목록</li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<div class="content">
					
			<div class="animated fadeIn">
				<div class="row">
				<!-- 
				<div id="bgimg">
						<p id="cm" class="hc vc" style="font-size: 30px; color: white; font-weight: 700">
							<i class="fa fa-gift" aria-hidden="true"></i>  &nbsp; 상품 관리
						</p>
					</div>
					 -->
					
					<div class="col-lg-12">
                   <div class="card" id="bgimg">
                       <div class="card-body" ><!--  -->
                           <center>
                           <br> 
                           <br><br> 
                           <br>
                           <br><br>
                           <h3 style="color: white;"><!-- class="box-title" -->
                               <i class="fa fa-gift" aria-hidden="true"></i> &nbsp;
                               <strong class="card-title">상품관리</strong>
                             </h3>
                             <br><br> 
                            <br><br> 
                            <br><br> 
                            <br><br> 
                             <br>
                           </center>
                       </div>
                        
                    </div><!-- /# column -->
                </div>
			
			
					<div class="col-md-12">
						<div class="card">
							<div class="card-header">
								<strong class="card-title">Goods List</strong>
							</div>
							<div class="card-body">

								<!-- 여기서부터 몸통시작!!! -->
								
								<!-- 
								<div style="width: 1200px; text-align: right">
									<button type="button" onclick="addGoods()"
										class="btn btn-secondary btn-sm">Add Goods</button>
								</div>
								  -->
								
								
								<!--///// addgoods modal pop up start //////-->


								<div style="width: auto; text-align: right">
									<button type="button" id="addgoodsModal"
										class="btn btn-secondary btn-sm">Add Goods</button>
								</div>
								
								
<!-- The Modal -->
<div id="addgoods" class="modal">

	<!-- Modal content -->
	<div class="modal-content">
		<!-- <span class="close">&times;</span> -->

			<div class="card-header">
				<strong class="card-title">Add Goods</strong>
			</div>

			<div class="card-body">

				<form action="addgoodsAf.do" id="addgoodsform" name="_addgoodsform">

					<div class="form-group">
						<label for="company" class=" form-control-label">Store Name</label>
						<input type="text" name="store" readonly="readonly"
							value="${login.store }" size="60" class="form-control">
					</div>
					<div class="form-group">
						<label for="company" class=" form-control-label">Product Name</label> 
						<input type="text" name="product" id="_product" size="60"
							class="form-control">
					</div>
					<div class="form-group">
						<label for="company" class=" form-control-label">Price</label>
						<input type="text" name="price" id="_price" size="60"
							class="form-control" onKeyPress="return numkeyCheck(event)">
					</div>

					<button type="button" id="btnAdd" class="btn btn-secondary btn-sm">Add Goods</button>
 					&nbsp;
                    <button type="button" id="btncancel" class="btn btn-secondary btn-sm">cancel</button> 
               </form>

		</div>
	</div>
</div>
								
								
								<script>
								
								$("#btnAdd").click(function () {
									if($("#_product").val() == "")
									{
										alert("상품명을 입력해주세요");
										$("#_product").focus();
									}
									else if($("#_price").val() == "")
									{
										alert("해당 상품의 가격을 입력해주세요");
										$("#_price").focus();
									}
									else if($("#_price").val() <= 0)
									{
										alert("0보다 작은 값은 입력할 수 없습니다");
										$("#_price").focus();
									}
									else
									{
										$("#addgoodsform").attr("action", "addgoodsAf.do").submit();
									}
								});
								
								$("#btncancel").click(function () {
									$("#addgoods").hide();
								});
								
								function numkeyCheck(e) { 
									var keyValue = event.keyCode; 
									
									if( (keyValue >= 48) && (keyValue <= 57))
									{
										return true; 
									}
									else 
									{
										return false; 
									}
								}
								</script>
								
								
								
								
								<script>
								
								// Get the modal
						        var modal = document.getElementById('addgoods');
						 
						        // Get the button that opens the modal
						        var btn = document.getElementById("addgoodsModal");
						 
						        // Get the <span> element that closes the modal
						     //   var span = document.getElementsByClassName("close")[0];                                          
						 
						        // When the user clicks on the button, open the modal 
						        btn.onclick = function() {
						            modal.style.display = "block";
						        }
						 
						        // When the user clicks on <span> (x), close the modal
						     /*    span.onclick = function() {
						            modal.style.display = "none";
						        } */
						 
						        // When the user clicks anywhere outside of the modal, close it
						        window.onclick = function(event) {
						            if (event.target == modal) {
						                modal.style.display = "none";
						            }
						        }

								
								</script>
								
								
								<!--///// addgoods modal pop up end //////-->
								
								
								<br>
							
										<table style="text-align: center" 
											class="table table-striped table-bordered" id="_dataTable">
											<thead>
												<tr>
													<th>번호</th>
													<th>상품명</th>
													<th>가격</th>
													<th>수정</th>
													<th>삭제</th>
												</tr>
											</thead>
											<tbody>
												<c:forEach items="${stlist }" var="stock" varStatus="vs">
													<%-- <c:if test="${stock.store eq login.store }"> --%>
													<c:if test="${stlist eq null }">
														<tr>
															<td colspan="5" align="center">상품이 없습니다.</td>
														</tr>
													</c:if>
													<tr>
														<td>${vs.index+1 }</td>
														<td>${stock.product }</td>
														<td>${stock.price }</td>
														<td>
															<a data-toggle="tooltip" title="Edit"
																class="pd-setting-ed"
																onclick="updateGoods(${stock.seq })">
																<i class="fa fa-pencil-square-o" aria-hidden="true"></i>
															</a>
														</td>
														<td>
															<a data-toggle="tooltip" title="Trash"
																class="pd-setting-ed" onclick="delGoods(${stock.seq })">
																	<i class="fa fa-trash-o" aria-hidden="true"></i>
															</a>
														</td>
													</tr>
													<%-- </c:if> --%>
												</c:forEach>
											</tbody>
										</table>


								<script>	
									/* 
									function addGoods() {
										location.href = "addgoods.do";
									}
									 */
									function delGoods( seq ) {
										alert("해당 상품을 삭제하시겠습니까 ? ");
										location.href = "delgoods.do?seq=" + seq;
									}
									
									 // modal pop-up 알아보기
									function updateGoods( seq ) {
										alert("해당 상품을 수정하시겠습니까 ? ");
										location.href = "updategoods.do?seq=" + seq;
									}
								</script>
								
								
								<script type="text/javascript">
								$('#_dataTable').DataTable( {
							          
						             dom: 'Bfrtip',
						             "searching": false,
						             "paging": false,
						             "bInfo": false,
						             "ordering": false,
						             
						          buttons: [
						                {
						                   extend: 'csv',
						                   charset: 'UTF-8',
						                   fieldSeparator:'',
						                   bom: true,
						                   filename: '상품 목록',
						                   title: '${login.store } 상품 목록',
						                   className :"btn btn-secondary btn-sm",
						                   exportOptions: {format: {
						                      tbody: function ( data, row, column, node ) {
						                      
						                         if($(data).is("td") == true){
						                             return $(data).val();
						                          }else{
						                             return null;
						                          }
						                       }
						                      }
						                   }
						                },
						                
						                {
						                    extend: 'excel',
						                    charset: 'UTF-8',
						                    fieldSeparator: '   ',
						                    bom: true,
						                    filename: '상품 목록',
						                    title: '${login.store } 상품 목록',
						                    className :"btn btn-secondary btn-sm",
						                    exportOptions: {format: {
						                         tbody: function ( data, row, column, node ) {
						                           if($(data).is("td") == true){
						                                return $(data).val();
						                             }else{
						                                return null;
						                             }
						                          }
						                         }
						                      }
						                 },
						                
						                {
						                    extend: 'print',
						                    charset: 'UTF-8',
						                    fieldSeparator: '   ',
						                    bom: true,
						                    filename: '상품 목록',
						                    title: '${login.store } 상품 목록',
						                    className :"btn btn-secondary btn-sm",
						                    exportOptions: {format: {
						                         tbody: function ( data, row, column, node ) {
						                         
						                          if($(data).is("td") == true){
						                             return $(data).val();
						                          }else{
						                             return null;
						                          }
						                          
						                          }
						                         }
						                      }
						                      
						                 }
						            ]
						         });
								
								</script>
								
								
								

								<!-- 여기서부터 몸통끝!!! -->

							</div>
						</div>
					</div>
				
				</div>
			</div>
			<!-- .animated -->
		</div>
		<!-- .content -->


		</div>

		
	<footer class="site-footer bg-white">
        <div class="footer-inner bg-white">
            <div class="row">
                <div class="col-sm-6">
                    Copyright &copy; 2018 Ela Admin
                </div>
                <div class="col-sm-6 text-right">
                    Designed by <a href="https://colorlib.com">Colorlib</a>
                </div>
            </div>
        </div>
    </footer>
	</div>
	<!-- /#right-panel -->

	<!-- Right Panel -->

	<!-- Scripts -->
	<script
		src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="assets/js/main.js"></script>


	<script src="assets/js/lib/data-table/datatables.min.js"></script>
	<script src="assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
	<script src="assets/js/lib/data-table/dataTables.buttons.min.js"></script>
	<script src="assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
	<script src="assets/js/lib/data-table/jszip.min.js"></script>
	<script src="assets/js/lib/data-table/vfs_fonts.js"></script>
	<script src="assets/js/lib/data-table/buttons.html5.min.js"></script>
	<script src="assets/js/lib/data-table/buttons.print.min.js"></script>
	<script src="assets/js/lib/data-table/buttons.colVis.min.js"></script>
	<script src="assets/js/init/datatables-init.js"></script>


	<script type="text/javascript">
        $(document).ready(function() {
          $('#bootstrap-data-table-export').DataTable();
          
      } );
  </script>


</body>
</html>
