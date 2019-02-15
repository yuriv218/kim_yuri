<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>       



<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
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

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

    <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script>

   <!-- <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script> -->

   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">


   <!-- jQuery -->
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    
    <style type="text/css">
    input[type="number"]::-webkit-outer-spin-button,
   input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
   }
   
   #_stockImage{
      background-image: url("./images/stock.jpg");
       background-size: 100% 100%;
   }
   
   .stock_title, #_stock_title{
      color: white;
   }
   
   a{
      cursor: pointer;
   }
   
   tr{
      text-align: center;
   }
   
   .stocks{
      color: white;
   }
   
   .amountWarning{
      color:red;
   }
    </style>
    
    <%
/* String category = (String)request.getAttribute("s_category");
if(category == null) category = ""; */

//System.out.println("category:" + category);

String keyword = (String)request.getAttribute("s_keyword");
if(keyword == null) keyword = "";

String soldout = (String)request.getAttribute("soldout");
if(soldout == null) soldout = "";
   
%>

<script>
var kstr = "<%=keyword %>";
var soldout = "<%=soldout%>";

$(document).ready(function () {
   $("#_s_keyword").val(kstr);
});

function goPage(pageNumber) {
   $("#_pageNumber").val(pageNumber);
   
   if(soldout == "soldout"){
      $("#_frmFormSearch").attr({
            "target" : "_self",
            "action" : "soldoutAll.do"
         }).submit();
   }else{
      $("#_frmFormSearch").attr({
            "target" : "_self",
            "action" : "stock.do"
         }).submit();
   }
   
   
}


</script>
    
    
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

        <div class="breadcrumbs">
            <div class="breadcrumbs-inner">
                <div class="row m-0">
                    <div class="col-sm-4">
                        <div class="page-header float-left">
                            <div class="page-title">
                                <h1>재고관리</h1>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </div>

        <div class="content">
            <div class="animated fadeIn">
                <div class="row">
                
                <div class="col-lg-12">
                   <div class="card" id="_stockImage">
                       <div class="card-body" id="_stock_title"><!--  -->
                           <center>
                           <br><br>
                           <h3><!-- class="box-title" -->
                               <i class="fa fa-dropbox"></i>
                               <strong class="card-title">재고 관리</strong>
                              </h3>
                            <br><br><br>
                            
                             <a href="soldoutAll.do" class="amountWarning">품절 임박 재고</a>
                             /<a href="stock.do" class="stocks">모든 재고</a>
                            <br><br>
                            <br><br>   
                           </center>
                       </div>
                        
                    </div><!-- /# column -->
                </div>
                
                
                
                
                
                
                
                


                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header">
                               
                                <strong class="card-title"><i class="fa fa-dropbox"></i> 재고관리</strong>
                            </div>
                            <div class="card-body">
                                
                                <!-- 여기서부터 몸통시작!!! -->
                                <div class="box_border" style="margin-top: 5px; margin-bottom: 10px">

                        <form action="" name="frmForm1" id="_frmFormSearch" method="post">
                        
                        <table style="margin-left: auto;margin-right: auto;
                                    margin-top: 3px;margin-bottom: 3px; border: 0; padding: 0;">
                        
                        <tr>
                           <td>검색:</td>
                           <td style="padding-left: 5px;">
                              <input type="text" id="_s_keyword" name="s_keyword" value="">
                           </td>
                           <td style="padding-left: 5px;">
                              <span class="button blue">
                                 <button type="button" id="_btnSearch" class="btn btn-secondary">검색</button>
                              </span>
                           </td>
                        </tr>
                        </table>
                        
                        <!-- controller로 넘겨주기 위한 값 -->
                        <input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber }">
                        <input type="hidden" name="recordCountPerPage" id="_recordCountPerPage"
                           value="${(empty recordCountPerPage)?10:recordCountPerPage }">
                        
                        </form>
                        </div>
                                <table id="_dataTable" class="table table-striped table-bordered">
                                   <colgroup>
                                      <col width="20%"><col width="15%"><col width="20%"><col width="15%"><col width="20%"><col width="5%"><col width="5%">
                                      
                                   </colgroup>
                                   <thead>
                                        <tr>
                                            <th data-filed="product">Product</th>
                                            <th data-field="minus">Down</th>
                                            <th data-filed="amount">Amount</th>
                                            <th data-field="plus">Up</th>
                                            <th data-filed="price">Price</th>
                                            <th data-filed="delete">Delete</th>
                                            <th data-filed="update">Update</th>
                                        </tr>
                                    </thead>
                                    
                                    <tbody>
                                    <c:if test="${empty stocklist  }">
                                    <tr>
                                       <td colspan="7">관리할 재고가 없습니다</td>
                                    </tr>
                                    </c:if>
                                    
                                    <!-- 관리할 재고 데이터가 있는 경우 -->
                                  <c:forEach var="stock" items="${stocklist }" varStatus="vs">
                                  
                                  <tr>
                                <td><input type="text" class="product${vs.index+1 }" value="${stock.product }"
                                      style="width:150;">
                                </td>
                                <td>
                                   <a class="sAmountDown" data-seq="${stock.seq }" data-num="${vs.index+1 }">
                                       <i class="fa fa-minus"></i>
                                    </a>
                                </td>
                                <td>
                                       <input type="number" class="amount${vs.index+1 }" value="${stock.amount }" 
                                          onkeypress="onlyNumber()"  style="width:70px;">
                                </td>
                                <td>
                                   <a class="sAmountUp" data-seq="${stock.seq }" data-num="${vs.index+1 }">
                                       <i class="fa fa-plus"></i>
                                    </a>
                                </td>
                                
                                
                                 
                                <td>
                                   <input type="number" class="price${vs.index+1 }" value="${stock.price }" 
                                   onkeypress="onlyNumber()" style="width:100px;">
                                    
                                </td>
                                
                                 <td><!-- 삭제버튼 -->
                                    <a class="stockDel" data-seq="${stock.seq }" data-num="${vs.index+1 }">
                                   <i class="fa fa-trash-o""></i>
                                   </a>
                                    
                                </td>
                                 
                                <td><!-- 수정버튼 -->
                                   <a class="stockUpdate" data-seq="${stock.seq }" data-num="${vs.index+1 }">
                                      <i class="fa fa-save"></i>
                                   </a>
                                </td>
                                 </tr>
                                 </c:forEach>
                                    
                                    
                                    
                                    </tbody>
                                
                                
                                
                                
                                
                                
                                
                                </table>
                                
                                
                                <!-- 페이징 처리 -->
                        <div id="paging_wrap">   
                           <jsp:include page="/WEB-INF/views/paging.jsp" flush="false">
                              <jsp:param value="${pageNumber }" name="pageNumber"/>      
                              <jsp:param value="${pageCountPerScreen }" name="pageCountPerScreen"/>
                              <jsp:param value="${recordCountPerPage }" name="recordCountPerPage"/>
                              <jsp:param value="${totalRecordCount }" name="totalRecordCount"/>   
                           </jsp:include>   
                        </div>
                                
                                
                                
                                
                                
                                
                               
                                   <!-- 여기서부터 몸통끝!!! -->
                             
                                
                                
                            </div>
                        </div>
                    </div>


                </div>
            </div><!-- .animated -->
        </div><!-- .content -->


        <div class="clearfix"></div>

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

    </div><!-- /#right-panel -->

    <!-- Right Panel -->

    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
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
    
    
    <!-- data export -->
   <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>


<form action="stockAmountUp.do" name="amountUp" id="_amountUp">
   <input type="hidden" name="seq" id="_upSeq"/>
</form>

<form action="stockAmountDown.do" name="amountDown" id="_amountDown">
   <input type="hidden" name="seq" id="_downSeq"/>
</form>

<form action="stockDel.do" id="_stockDel">
   <input type="hidden" name="seq" id="_delSeq"/>
</form>


<form action="stockUpdate.do" name="frmForm" id="_frmForm">
   <input type="hidden" id="_seq" name='seq' />
   <input type="hidden" id="_product" name='product' />
   <input type="hidden" id="_amount" name='amount' />
   <input type="hidden" id="_price" name='price' />
</form>

<script type="text/javascript">

//가격, 수량에 숫자만 입력되도록 설정
function onlyNumber() {
   if((event.keyCode < 48) || (event.keyCode > 57)) {
      event.returnValue = false;
   }
}

   $(document).ready(function() {
      
      
      
      $('#_dataTable').DataTable( {
             
           "dom": 'Bfrtip',
           "searching": false,
           "paging": false,
           "bInfo": false,
        buttons: [
              {
                 extend: 'csv',
                 charset: 'UTF-8',
                 fieldSeparator:'',
                 bom: true,
                 filename: '재고 목록',
                 title: '${loginStore } 재고 목록',
                 className :"btn btn-secondary",
                 exportOptions: {format: {
                    body: function ( data, row, column, node ) {
                    
                       if($(data).is("input") == true){
                           return $(data).val();
                        }else{
                           return "";
                        }
                     }
                    }
                 }
              },
              
              {
                  extend: 'excel',
                  charset: 'UTF-8',
                  fieldSeparator: '',
                  bom: true,
                  filename: '재고 목록',
                  title: '${loginStore } 재고 목록',
                  className :"btn btn-secondary",
                  exportOptions: {format: {
                       body: function ( data, row, column, node ) {
                         if($(data).is("input") == true){
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
                  fieldSeparator: '',
                  bom: true,
                  filename: '재고 목록',
                  title: '${loginStore } 재고 목록',
                  className :"btn btn-secondary",
                  exportOptions: {format: {
                       body: function ( data, row, column, node ) {
                       
                        if($(data).is("input") == true){
                           return $(data).val();
                        }else{
                           return data;
                        }
                        
                        }
                       }
                    }
                    
               }
          ]
       });
       
       
       /* 검색을 했을 때 */
       $("#_btnSearch").click(function () {
          //alert("_btnSearch");
          $("#_pageNumber").val(0);
          
          if(soldout == "soldout"){
             $("#_frmFormSearch").attr({"target":"_self", "action":"soldoutAll.do"}).submit();
          }else{
             $("#_frmFormSearch").attr({"target":"_self", "action":"stock.do"}).submit();
          }
          
       });

       
       
      //증가 버튼 클릭
         $(".sAmountUp").click(function () {
            
            //몇 번째 줄의 데이터인지 확인
            var num = $(this).attr("data-num");
            //alert(num);
            
            var amount = $(".amount"+num).val();
            //alert(amount);
            
            var seq = $(this).attr("data-seq");
            //alert("seq = " + seq);
            
            //ajax 실행
             amountUp(seq, num);
         });
         
          function amountUp(seq, num) {
            $.ajax({
                type:"post",
                url:"stockAmountUp.do",
                data:"seq=" + seq,
                async:true,
                
                error:function(){
                   aler("error!!");
                },
                
                success : function(amountAf){
                   //alert("성공");
                   //alert(amountAf);
                   $(".amount"+num).val(amountAf);
                }
                
             });
         }
         
         
         //감소 버튼 클릭
         $(".sAmountDown").click(function () {
            
            //몇 번째 줄의 데이터인지 확인
            var num = $(this).attr("data-num");
            //alert(num);
            
            var amount = $(".amount"+num).val();
            //alert(amount);
            
            if(amount<=0){
               alert("재고 값은 음수일 수 없습니다");
            
            }else{
               var seq = $(this).attr("data-seq");
               //alert("seq = " + seq);
               
               //ajax 실행
                amountDown(seq, num);
            }
            
         });
         
          function amountDown(seq, num) {
             $.ajax({
                 type:"post",
                 url:"stockAmountDown.do",
                 data:"seq=" + seq,
                 async:true,
                 
                 error:function(){
                    alert("error!!");
                 },
                 
                 success : function(amountAf){
                    
                    $(".amount"+num).val(amountAf);
                 }
                 
              });
         }
         
         
         //삭제 버튼 클릭
         $(".stockDel").click(function () {
            $("#_delSeq").val($(this).attr("data-seq"));
            $("#_stockDel").attr({"action":"stockDel.do"} ).submit();
         });
         
         
         
         
         //수정 버튼 클릭시
         $(".stockUpdate").click(function () {
            
            //몇 번째 줄인지 확인
            var num = $(this).attr("data-num");
            //alert(num+"번째 데이터");
            
            //form을 통해 컨트롤러로 날려줄 데이터들
            var product = $(".product"+num).val();
            var amount = $(".amount"+num).val();
            var price = $(".price"+num).val();
            
            
            //폼에 데이터 넣기(조건문으로 null 값이 안 들어오도록 설정)
            if(product == null || product == ""){
               alert("제품명을 적어주십시오.");
            }else{
               $("#_product").val(product);
               
               if(amount == null || amount == ""){
                  alert("재고 수량을 입력해주십시오");
                  
               }else{
                  if(amount<0){
                     alert("재고는 0이상의 숫자여야 합니다.");
                     
                  }else{
                     $("#_amount").val(amount);
                     
                     if(price == null || price == ""){
                        alert("가격을 적어주십시오.");
                     }else{
                        if(price<0){
                           alert("가격은 0원 이상이어야 합니다.");
                        }else{
                           $("#_price").val(price);
                           
                            //수정할 재고의 시퀀스 번호를 frmForm에 넣어주기
                            $("#_seq").val($(this).attr("data-seq"));
                            
                            var update =  $("form[name=frmForm]").serialize();
                            
                           $.ajax({
                                type:"post",
                                url:"stockUpdate.do",
                                data:update,
                                dataType: 'json',
                                
                                error:function(){
                                   aler("error!!");
                                },
                                
                                success : function(json){
                                   alert(json);
                                }
                                
                             });
                        }
                     }
                  }
               }
            }
            
         });
       
       
       
   } );
   
   
   
</script>


</body>
</html>