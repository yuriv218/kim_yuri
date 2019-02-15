<!-- 문자열 자르기 substring 함수 -->
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />



<!doctype html>
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
<link rel="stylesheet" href="assets/css/style.css">
<link
   href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
   rel='stylesheet' type='text/css'>


<!-- <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script> -->








<!-- jQuery -->
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>




<style type="text/css">
#_clientImage {
   background-image: url("./images/client.jpg");
   background-size: 100% 100%;
}

.client_title, #_client_title {
   color: white;
}

a, far fa-save {
   cursor: pointer;
}

th, td {
   text-align: center;
}

 .fa.fa-star, .fa.ti-star {
   color: #ffcc00;
}

img.star{
   height:20px;
   width: 20px;
}

.yellow_star, .white_star{
   height:20px;
   width: 20px;
}

</style>


<%
   String category = (String) request.getAttribute("s_category");
   if (category == null)
      category = "";


   String keyword = (String) request.getAttribute("s_keyword");
   if (keyword == null)
      keyword = "";
   
   String starOnly = (String) request.getAttribute("starOnly");
   if(starOnly == null)
   starOnly = "";
%>

<script>
var str = "<%=category%>";
var kstr = "<%=keyword%>";
var starOnly = "<%=starOnly %>";

$(document).ready(function() {
   document.frmForm1.s_category.value = str;

   $("#_s_keyword").val(kstr);
});
   

function goPage(pageNumber) {
   $("#_pageNumber").val(pageNumber);
   
   if(starOnly == "starOnly"){
      $("#_frmFormSearch").attr({
            "target" : "_self",
            "action" : "customerStarOnly.do"
      }).submit();
   }else{
      $("#_frmFormSearch").attr({
            "target" : "_self",
            "action" : "customer.do"
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
      <!-- Header-->

      <div class="breadcrumbs">
         <div class="breadcrumbs-inner">
            <div class="row m-0">
               <div class="col-sm-4">
                  <div class="page-header float-left">
                     <div class="page-title">
                        <h1>거래처 관리</h1>
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
                  <div class="card" id="_clientImage">
                     <div class="card-body" id="_client_title">
                        <!--  -->
                        <center>
                           <br> <br>
                           <h3>
                              <!-- class="box-title" -->
                              <i class="fa fa-user"></i> <strong
                                 class="card-title">거래처 관리</strong>
                           </h3>
                           <br>
                              <a>
                              <img src="images/yellow_star.png" height="20px;" width="20px;"
                              data-msg="중요 표시된 거래처만 보기" class="onlyStar">
                           </a>&nbsp;
                           /&nbsp;
                           <a href="customer.do" style="color: white">All Client</a>
                           <br> <br>
                           <button type="button" id="_insert" class="btn btn-secondary">추가</button>
                           <br> <br> <br>

                        </center>
                     </div>

                  </div>
                  <!-- /# column -->
               </div>




               <div class="col-md-12">
                  <div class="card">
                     <div class="card-header">
                        <i class="fa fa-user"></i> <strong class="card-title">거래처
                           목록</strong>
                     </div>

                     <div class="card-body">

                        <!-- 여기서부터 몸통시작!!! -->

                        <div class="box_border"
                           style="margin-top: 5px; margin-bottom: 10px">
                              

                           <form action="" name="frmForm1" id="_frmFormSearch"
                              method="post">
                              <table
                                 style="margin-left: auto; margin-right: auto; margin-top: 3px; margin-bottom: 3px; border: 0; padding: 0;">

                                 <tr>
                                    <td>검색:</td>
                                    <td style="padding-left: 5px;"><select id="_s_category"
                                       name="s_category">
                                          <option value="" selected="selected">선택</option>
                                          <option value="c_name">거래처</option>
                                          <option value="detail">내용</option>
                                    </select></td>
                                    <td style="padding-left: 5px;"><input type="text"
                                       id="_s_keyword" name="s_keyword" value=""></td>
                                    <td style="padding-left: 5px;"><span
                                       class="button blue">
                                          <button type="button" id="_btnSearch" class="btn btn-secondary">검색</button>
                                    </span></td>
                                    
                                    
                                 </tr>
                              </table>

                              <!-- controller로 넘겨주기 위한 값 -->
                              <input type="hidden" name="pageNumber" id="_pageNumber"
                                 value="${(empty pageNumber)?0:pageNumber }">
                              <input type="hidden" name="recordCountPerPage" id="_recordCountPerPage"
                                 value="${(empty recordCountPerPage)?10:recordCountPerPage }">
                           </form>
                        </div>



                        <!-- bootstrap-data-table -->
                        <table id="_dataTable"
                           class="table table-striped" data-toggle="table"
                           data-pagination="true" data-search="true"
                           data-show-columns="true" data-show-pagination-switch="true"
                           data-show-refresh="true" data-key-events="true"
                           data-show-toggle="true" data-resizable="true"
                           data-cookie="true" data-cookie-id-table="saveId"
                           data-show-export="true" data-click-to-select="true"
                           data-toolbar="#toolbar">
                           <colgroup>
                              <col width="30%">
                              <col width="40%">
                              <col width="10%">
                              <col width="10%">
                              <col width="10%">
                           </colgroup>

                           <thead>
                              <tr>
                                 <!-- <th>ID</th> -->
                                 <th data-filed="client">Client</th>
                                 <th data-filed="detail">Content</th>
                                 <th data-filed="delete">Delete</th>
                                 <th data-filed="update">Update</th>
                                 <th data-filed="update">중요</th>
                              </tr>
                           </thead>

                           <tbody>
                              <c:if test="${empty customerList  }">
                                 <tr>
                                    <td colspan="5">관리할 거래처 없습니다</td>
                                 </tr>
                              </c:if>

                              <!-- 관리할 거래처 데이터가 있는 경우 -->
                              <c:forEach var="customer" items="${customerList }"
                                 varStatus="vs">

                                 <tr>
                                    <td><a
                                       href="javascript:void(window.open('customerDetail.do?seq=${customer.seq }',
                                                    '${customer.c_name }','width=300, height=545'))">${customer. c_name }</a>
                                    </td>
                                    <td><a
                                       href="javascript:void(window.open('customerDetail.do?seq=${customer.seq }',
                                                 '${customer.c_name }','width=300, height=545'))">
                                          <c:choose>
                                             <c:when test="${fn:length(customer.detail) > 30}">
                                                <c:out value="${fn:substring(customer.detail,0,29)}" />....
                                                        </c:when>
                                             <c:otherwise>
                                                <c:out value="${customer.detail}" />
                                             </c:otherwise>
                                          </c:choose>
                                    </a></td>

                                    <td>
                                       <!-- 삭제버튼 --> <a class="btnDel" data-seq="${customer.seq }" data-num="${vs.index }">
                                          <i class="fa fa-trash-o"></i>
                                    </a>
                                    </td>

                                    <td>
                                       <!-- 수정버튼  --> <a class="btnUpdate"
                                       data-seq="${customer.seq }"> <i class="fa fa-pencil"></i>
                                    </a>
                                    </td>
                                    
                                    <td>
                                       <a>
                                       <c:if test="${customer.star eq 1 }">
                                          <img src="images/yellow_star.png" class="star" data-value="${vs.count }" data-seq="${customer.seq }" data-star=1>
                                          
                                       </c:if>
                                       <c:if test="${customer.star eq 0 }">
                                          <img src="images/white_star.png" class="star" data-value="${vs.count }" data-seq="${customer.seq }" data-star=0>
                                          
                                       </c:if>
                                          
                                       </a>
                                    </td>
                                 </tr> 
                              </c:forEach>



                           </tbody>


                        </table>
                        <div id="paging_wrap">
                           <jsp:include page="/WEB-INF/views/paging.jsp" flush="false">
                              <jsp:param value="${pageNumber }" name="pageNumber" />
                              <jsp:param value="${pageCountPerScreen }"
                                 name="pageCountPerScreen" />
                              <jsp:param value="${recordCountPerPage }"
                                 name="recordCountPerPage" />
                              <jsp:param value="${totalRecordCount }"
                                 name="totalRecordCount" />
                           </jsp:include>
                        </div>


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

      <footer class="site-footer bg-white">
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
   <form action="customerDel.do" id="_custDel">
      <input type="hidden" id="_delSeq" name='seq' />
   </form>

   <form action="customerUpdate.do" id="_custUpdate">
      <input type="hidden" id="_updateSeq" name='seq' />
   </form>

   <form action="customerInsertAf.do" id="_custInsert" name="custInsert">
      <input type="hidden" id="_insertStore" name="store"
         value="${loginStore }"> <input type="hidden"
         id="_insertCname" name="c_name"> <input type="hidden"
         id="_insertDetail" name="detail">
   </form>
   
   

   <!-- Right Panel -->

   <!-- Scripts -->
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



   <!-- data export -->
   <script
      src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   <script
      src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
   <script
      src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
   <script
      src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
   <script
      src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
   <script
      src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>






   <script type="text/javascript">
   var starOnly = "<%=starOnly %>";
   
      $(document).ready(function () {
         
       
         
       $(".onlyStar").click(function () {
          location.href = "customerStarOnly.do";
      });
         
         //검색 버튼 클릭
         $("#_btnSearch").click(function() {
           // alert("_btnSearch");
            $("#_pageNumber").val(0);
            
            if(starOnly == "starOnly"){
               $("#_frmFormSearch").attr({
                    "target" : "_self",
                    "action" : "customerStarOnly.do"
                 }).submit();
            }else{
               $("#_frmFormSearch").attr({
                    "target" : "_self",
                    "action" : "customer.do"
                 }).submit();
            }
            
         });
         
         var addRow = 0;

         $("#_insert").click(function() {
            //alert("클릭");

            //thead를 제외한 행들의 갯수
            var rowNum = $("#_dataTable tr").length - 1;

            //alert("현재 총 행의 갯수 : " + rowNum);
            
            if(addRow>0){
            	alert("먼저 데이터를 저장해주십시오");
            }else{
            	addData(rowNum);
            }

            
         });

         //            값이 입력되는 행의 번호
         function addData(rowNum) {

            var add = "";
            add += "<tr data-row="+rowNum+">\n";
            add += "<td><input type='text' class='client"+rowNum+"' data-row="+rowNum+"></td>\n";
            add += "<td><input type='text' class='detail"+rowNum+"' data-row="+rowNum+"></td>\n";
            add += "<td><a class='cancle' data-row="+rowNum+"><i class='fa fa-trash-o'></i><a></td>\n";
            add += "<td><a class='save' data-row="+rowNum+"><i class='fa fa-save'></i></a></td>\n";
            add += "</tr>";

            $('#_dataTable > tbody:last').append(add);
            
            addRow = 1;

         }

         //취소 버튼을 눌렀을 때 해당 열을 삭제
         $(document).on("click", ".cancle", function() {
            //alert("취소");
            var rowNum = $(this).attr("data-row");
            alert(rowNum);
            $(this).parent().parent().remove();
            
            addRow = 0;

         });
         

         //저장 버튼 클릭
         $(document).on("click", ".save", function() {

            //alert("저장");
            var rowNum = $(this).attr("data-row");
            alert(rowNum);

            var client = $(".client" + rowNum).val();
            var detail = $(".detail" + rowNum).val();

            if (client == null || client == "") {
               alert("거래처명을 적어주십시오");

            } else {
               $("#_insertCname").val(client);
               $("#_insertDetail").val(detail);

               var insert = $("form[name=custInsert]").serialize();

               $.ajax({

                  type : "post",
                  url : "customerInsertAf.do",
                  data : insert,
                  dataType : 'json',

                  error : function() {
                     alert("error!!");
                  },

                  success : function(seq) {
                     alert(seq);
                     addRow = 0;
                  }

               });

               location.reload();
            }
         });

         
         
         $('#_dataTable').DataTable({
            dom : 'Bftrip',
            "searching": false,
               "paging": false,
               "bInfo": false,
            buttons : [ {
               extend : 'csv',
               charset : 'UTF-8',
               fieldSeparator : '',
               bom : true,
               filename : '거래처 목록',
               title : '${loginStore } 거래처 목록',
               className : "btn btn-secondary"
            },

            {
               extend : 'excel',
               charset : 'UTF-8',
               fieldSeparator : '   ',
               bom : true,
               filename : '거래처 목록',
               title : '${loginStore } 거래처 목록',
               className : "btn btn-secondary"
            }, {
               extend : 'print',
               charset : 'UTF-8',
               fieldSeparator : '   ',
               bom : true,
               filename : '거래처 목록',
               title : '${loginStore } 거래처 목록',
               className : "btn btn-secondary"
            } ]

         });
         
         
        $(document).on("click", ".star", function() {
            alert("star");
            
            var num = $(this).attr("data-value");
            //alert("data-value = " + num);
            
            //alert($(this).attr("src"));
            var src = $(this).attr("src");
            
              if(num == $(this).attr("data-value")){
               
               if(src == "images/white_star.png"){
                  $(this).attr("src", "images/yellow_star.png");
                  $(this).attr("data-star", 0);
                }else if(src == "images/yellow_star.png"){
                   $(this).attr("src", "images/white_star.png");
                   $(this).attr("data-star", 1);
                }
            }
            
            
            alert($(this).attr("data-value"));
             
            var seq = $(this).attr("data-seq");
         //alert("seq = " + seq);
         
         
         var starStatus = $(this).attr("data-star");
         //alert("star = " + starStatus);
         
         
         $.ajax({
            type:"post",
            url:"starUpdate.do",
            data:"seq="+seq+"&star="+starStatus,
            async:true,
            
            error:function(){
               alert("error");
            },
            success:function(star){
               
               //alert("변환 결과 star = " + star);
            }
             
          });
         
        });
        
       

         $(".btnDel").click(function() {
           
            var seq = $(this).attr("data-seq");
            
             
            $.ajax({
               type:"post",
                 url:"star.do",
                 data:"seq="+seq,
                 async:true,
               
                 error:function(){
                    alert("에러");
                 },
                 success:function(star){
                    //alert("star = " + star);
                    
                    if(star == 1){
                       
                         if(confirm("중요한 거래처입니다. 정말 삭제하시겠습니까?") == true){
                            //alert("중요!");
                             $("#_delSeq").val(seq);
                            $("#_custDel").attr({ "action" : "customerDel.do"}).submit();
                         }
                       
                       
                    }else if(star == 0){
                       //alert("안 중요!");
                       $("#_delSeq").val(seq);
                         $("#_custDel").attr({ "action" : "customerDel.do"}).submit();
                    }
                 }
               
            });
            
         });

         $(".btnUpdate").click(function() {

            var seq = $(this).attr("data-seq");

            var toGo = "customerUpdate.do?seq=" + seq;

            window.open(toGo, "거래처수정", 'width=300, height=546');
         });

      });
   </script>




</body>
</html>