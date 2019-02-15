<%@page import="kh.com.c.util.myCal"%>
<%@page import="java.util.Calendar"%>

<%@page import="java.sql.Date"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@page import="java.sql.Timestamp"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />


<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>

<%
myCal jcal=(myCal)request.getAttribute("jcal");

String year=""+jcal.getYear();
String month=""+jcal.getMonth();
String day=""+jcal.getDay();


Calendar cal=Calendar.getInstance();
int tyear=cal.get(Calendar.YEAR); //년
int tmonth=cal.get(Calendar.MONTH )+1;//월
int tday=cal.get(Calendar.DATE);//일
int thour=cal.get(Calendar.HOUR_OF_DAY);//24시
int tmin=cal.get(Calendar.MINUTE);//분
%>


<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
 <title>Store Friend</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
  <link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet"
	href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
<link rel="stylesheet" href="assets/css/style.css">


<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
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
    /*      .close {
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
    */
        
        #bgimg{
		/* margin: auto;
		margin-bottom: 15px;
		width: 1200px;
 	 	height: 350px;
		background-image: url(./images/storeimg/reservation.jpg);
		background-size: 1200px 350px;		
		text-align: center;  */
			
			background-image: url(./images/reservation.jpg);
		background-size: 100% 100%;
	}
	
	#cm { position:absolute; }
	
	.hc { width:1800px; left:0; right:0; margin-left:auto; margin-right:auto; } /* 가로 중앙 정렬 */ 
	.vc { height:100px; top: 0; bottom:0; margin-top:auto; margin-bottom:auto; } /* 세로 중앙 정렬 */

		



</style>



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
							aria-haspopup="true" aria-expanded="false"> <img
							class="user-avatar rounded-circle" src="upload/noimage.png"
							alt="User Avatar">
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
		<!-- Header-->

	<div class="breadcrumbs">
		<div class="breadcrumbs-inner">
			<div class="row m-0">
				<div class="col-sm-4">
					<div class="page-header float-left">
						<div class="page-title">
							<h1>예약 관리</h1>
						</div>
					</div>
				</div>
				<div class="col-sm-8">
					<div class="page-header float-right">
						<div class="page-title">
							<ol class="breadcrumb text-right">
								<li><a href="#">매장관리</a></li>
								<li><a href="#">예약관리</a></li>
								<li class="active">예약 목록</li>
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
							<i class="fa fa-calendar" aria-hidden="true"></i> &nbsp; 예약 관리
						</p>
					</div>
		 -->	
				<div class="col-lg-12">
                   <div class="card" id="bgimg">
                       <div class="card-body"><!--  -->
                           <center>
                           <br> 
                           <br><br> 
                           <br><br> 
                           <br><br>
                           <h3 style="color: white;"><!-- class="box-title" -->
                               <i class="fa fa-calendar" aria-hidden="true"></i> &nbsp; 
                               <strong class="card-title">예약관리</strong>
                             </h3>
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
							<strong class="card-title">Reservation List</strong>
						</div>
						<div class="card-body">

							<!-- 여기서부터 몸통시작!!! -->

							<!-- 
							<div style="width: 1200px; text-align: right">	
								<button type="button" onclick="addBook()"
											class="btn btn-secondary btn-sm">Add Reservation</button>				
							</div>
							
							 -->
							
							
							
							<!--///// addbook modal pop up start //////-->


								<div style="width: auto; text-align: right">
									<button type="button" id="addbookModal"
										class="btn btn-secondary btn-sm">Add Reservation</button>
								</div>
								
								
<!-- The Modal -->
<div id="addbook" class="modal">

	<!-- Modal content -->
	<div class="modal-content">
		<!-- <span class="close">&times;</span> -->
		

			<div class="card-header">
				<strong class="card-title">Add Reservation</strong>
			</div>

			<div class="card-body">

				 <form action="addbookAf.do" method="post" name="_addBookform" id="addBookform"> 
                                
                                    
                                        <div class="form-group">
                                        	<label for="company" class=" form-control-label">Store Name</label>
                                        	<input type="text" name="store" readonly="readonly" value="${login.store }" size="60" class="form-control">
                                        </div>
                                <div class="form-group">
                                	<label for="company" class=" form-control-label">Reservation Date</label>
                                	<!-- <input type="text" name="product" id="_product" size="60" class="form-control"> -->
                                	<input type="hidden" id="today" value="${today }">
                                	<br>
				<select name='year' id="_year" >
				<%
				for(int i=tyear-5; i<tyear+6; i++){ // 5년전부터 5년후까지 보여주기
					%>
					<option    <%= year.equals(i+"") ? "selected='selected'":"" %>
					    value="<%=i%>"><%=i%></option>
					<% 
				}
				%>
				</select>&nbsp;년 &nbsp;&nbsp;
				
				<select name='month' id="_month" >
				<%
				for(int i=1; i<=12; i++){
					%>
					<option    <%= month.equals(i+"") ? "selected='selected'":"" %>
					    value="<%=i%>"><%=i%></option>
					<% 
				}
				%>
				</select>&nbsp;월 &nbsp;&nbsp;
				<select name='day' id="_day" >
				<%
				for(int i=1; 
				i<=cal.getActualMaximum(Calendar.DAY_OF_MONTH); i++){
					%>
					<option    <%= day.equals(i+"") ? "selected='selected'" : "" %>
					    value="<%=i%>"><%=i%></option>
					<% 
				}
				%>
				</select>&nbsp;일 &nbsp;&nbsp;
				<select name='hour' id="_hour" >
				<%
				for(int i=0; i<24; i++){
					%>
					<option   <%= (thour+"").equals(i+"")?"selected='selected'":"" %>
					 value="<%=i%>"><%=i%></option>
					<% 
				}
				%>
				</select>&nbsp;시 &nbsp;&nbsp;
				<select name='min' id="_min" >
				<%
				for(int i=0; i<60; i++){
					%>
					<option    <%= (tmin+"").equals(i+"")?"selected='selected'":"" %>
					value="<%=i%>"><%=i%></option>
					<% 
				}
				%>
				</select>&nbsp;분
                                </div>
                                <div class="form-group">
                                	<label for="company" class=" form-control-label">Reservation Name </label>
                                	<!-- <input type="text" name="price" id="_price" size="60" class="form-control"> -->
                                	<input type="text" name="b_name" size="60" class="_b_name form-control">
                                </div>
                                
                                <div class="form-group">
                                	<label for="company" class=" form-control-label">Reservation Detail</label>
                                	<!-- <input type="text" name="price" id="_price" size="60" class="form-control"> -->
                                	<textarea rows="10" cols="50" name="content" class="_content form-control"></textarea>
                                </div>
                                
                                       <button type="button" id="btnAdd" class="btn btn-secondary btn-sm">Add Reservation</button> 
                                       &nbsp;
                                       <button type="button" id="btncancel" class="btn btn-secondary btn-sm">cancel</button> 
                                      </form>
                                        

		</div>
	</div>
</div>
								
								
								  <script>
	$("#btnAdd").click(function () {
		var year = $("#_year").val();
		var month = $("#_month").val();
		var day = $("#_day").val();
		var hour = $("#_hour").val();
		var min = $("#_min").val();
		
		var date = new Date();
		date.setFullYear(year, month - 1, day);
		
		var today = new Date();
		
		
		if(date <= today)
		{
			// 현재 날짜보다 이전이면 추가 못하게 막기
			alert("현재 날짜보다 이전 날짜는 입력할 수 없습니다");
		}
		else if($("._b_name").val() == "")
		{
			alert("예약자명을 입력해주세요");
			$("._b_name").focus();
		}
		else if($("._content").val() == "")
		{
			alert("예약 내용을 입력해주세요");
			$("._content").focus();
		}
		else
		{
			$("#addBookform").attr("action", "addbookAf.do").submit();
		}
	});
	
	$("#btncancel").click(function () {
		$("#addbook").hide();
	});
</script>
								
								
								
								
								<script>
								
								// Get the modal
						        var modal = document.getElementById('addbook');
						 
						        // Get the button that opens the modal
						        var btn = document.getElementById("addbookModal");
						 
						        // Get the <span> element that closes the modal
						      //  var span = document.getElementsByClassName("close")[0];                                          
						 
						        // When the user clicks on the button, open the modal 
						        btn.onclick = function() {
						            modal.style.display = "block";
						        }
						 
						        // When the user clicks on <span> (x), close the modal
						    /*     span.onclick = function() {
						        	modal.style.display = "none";
						        } */
						 
						        // When the user clicks anywhere outside of the modal, close it
						        window.onclick = function(event) {
						            if (event.target == modal) {
						                modal.style.display = "none";
						            }
						        }

								
								</script>
								
								
								<!--///// addbook modal pop up end //////-->
								
							
							
							
							
							<br>
							
							
							
							
							<form>
								
										<table style="text-align: center" 
											class="table table-striped table-bordered" id="_dataTable">
											<colgroup>
												<col width="70px">
												<col width="300px">
												<col width="150px">
												<col width="550px">
												<col width="70px">
												<col width="70px">
											</colgroup>
											<thead>
											<tr class="table100-head">
												<th></th>
												<th>날짜</th>
												<th>예약자명</th>
												<th>예약내용</th>
												<th>수정</th>
												<th>삭제</th>
											</tr>
											</thead>
											<c:forEach items="${booklist }" var="book" varStatus="vs">
												<%-- <c:if test="${book.store eq login.store }"> --%>
													<c:if test="${book.b_date > today }">
														<tr>
															<td>
																<c:if test="${fn:substring(book.b_date,0,8) eq fn:substring(today,0,8) }">
																	<i class="fa fa-star" aria-hidden="true"></i>
																</c:if>
															</td>
															<td>
																<c:out value="${fn:substring(book.b_date,0,4)}" />년&nbsp;
																<c:out value="${fn:substring(book.b_date,4,6)}" />월&nbsp; 
																<c:out value="${fn:substring(book.b_date,6,8)}" />일&nbsp;
																<c:out value="${fn:substring(book.b_date,8,10)}" />시&nbsp; 
																<c:out value="${fn:substring(book.b_date,10,12)}" />분 <%-- ${book.b_date } --%>
															</td>															
															<td>
																${book.b_name }
																<%-- <a href="bookdetail.do?seq=${book.seq }">${book.b_name }</a> --%>
															</td>
															<td>
																${book.content }
															</td>
															<td>
																<a data-toggle="tooltip" title="Edit"
															class="pd-setting-ed"
															onclick="updatebook(${book.seq })"> <i
																class="fa fa-pencil-square-o" aria-hidden="true"></i>
																</a>
															</td>
															<td>
																<a data-toggle="tooltip" title="Trash"
																	class="pd-setting-ed" onclick="deletebook(${book.seq})">
																		<i class="fa fa-trash-o" aria-hidden="true"></i>
																</a> 
																<%-- 	<button type="button" onclick="deletebook(${book.seq})">삭제</button> --%>
															</td>
														</tr>
													</c:if>
												<%-- </c:if> --%>
											</c:forEach>
										</table>

							</form>

							<script>
								/* 						
								function addBook() {
									location.href = "addbook.do";
								}
								 */
								
								function updatebook( seq ) {
									alert("해당 예약을 수정하시겠습니까 ? ");
									location.href = "updatebook.do?seq=" + seq;
								}
								
								function deletebook( seq ) {
									alert("해당 예약을 취소하시겠습니까 ? ");
									location.href = "deletebook.do?seq=" + seq;
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
						                   filename: '예약 목록',
						                   title: '${login.store } 예약 목록',
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
						                    filename: '예약 목록',
						                    title: '${login.store } 예약 목록',
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
						                    filename: '예약 목록',
						                    title: '${login.store } 예약 목록',
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


	<div class="clearfix"></div>

	<footer class="site-footer">
		<div class="footer-inner bg-white">
			<div class="row">
				<div class="col-sm-6">Copyright &copy; 2018 Ela Admin</div>
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

															