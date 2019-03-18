<%@page import="kh.com.c.model.QnaDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

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

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>


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
								<h1>Store Friend</h1>
							</div>
						</div>
					</div>
					<div class="col-sm-8">
						<div class="page-header float-right">
							<div class="page-title">
								<ol class="breadcrumb text-right">
									<li><a href="#">Store Friend</a></li>
									<li><a href="#">마이페이지</a></li>
									<li class="active">문의하기</li>
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

               <div class="col-md-12">
                  <div class="card">
                     <div class="card-header" align="center">
                        <strong class="card-title">문의하기</strong>
                     </div>
                     <div class="card-body" align="left">

                        <table id="bootstrap-data-table" class="table table-bordered"> 
                        <colgroup>

                        <col style="width:10%;">
                        <col style="width:15%;">
                        <col style="width:45%;">
                        <col style="width:15%;">
                        <col style="width:15%;">
                        
                        </colgroup>
                           <thead>
                           
                              <tr align="center">

                                 <th>번호</th>
                                 <th>아이디</th>
                                 <th>문의내용</th>
                                 <th>날짜</th>
                                 <th>처리상태</th>

                              </tr>
                           </thead>
                        

                           <tbody>
                              <c:if test="${empty qnalist }">
                                 <tr>
                                    <td colspan="3">작성된 글이 없습니다</td>
                                 </tr>
                              </c:if>

								<!-- 관리자일 경우 -->
                              <c:if test="${login.auth eq 1 }">
                        
                                 <c:forEach items="${qnalist }" var="qna" varStatus="vs">
                        
                                       <tr>
                                          <td style="text-align: center;">${vs.index+1 }</td>
                                          <td style="text-align: center;">${qna.id }</td>
                                          <td style="text-align: center;">
                                          <a href="qnadetail.do?seq=${qna.seq }"> ${qna.title }</a></td>
                                          <td>${fn:substring((qna.wdate),0,10) }</td>
                                          <td>
										  <c:if test="${qna.result eq 0 }"><span style="color: red;">답변대기</span></c:if> 
                                          <c:if test="${qna.result eq 1 }">답변완료</c:if>
                                          </td>
                                       </tr>
                                   
                                 </c:forEach>
                              </c:if>

                              <!-- 일반회원일 경우 -->
                              <c:if test="${login.auth eq 3 }">

                                 <c:forEach items="${qnalist }" var="qna" varStatus="vs">
                                    <c:if test="${qna.id eq login.id or qna.par_id eq login.id}">

                                       <tr>
                                          <td style="text-align: center;">${vs.index+1 }</td>
                                          <td style="text-align: center;">${qna.id }</td>
                                          <td style="text-align: left;">   
                                          <c:if test="${qna.id eq '관리자' }">
                                          <a href="qnadetail.do?seq=${qna.seq }">                                       
                                          <img src="images/communityImg/right-drawn-arrow.png" width="20px" height="20px">${qna.title }</i></a>
                                          </c:if>
                                          <c:if test="${qna.id ne '관리자' }">                                          
                                          <a href="qnadetail.do?seq=${qna.seq }"> ${qna.title }</a>
                                          </c:if>
                                          </td>
                                          
                                          <td>${fn:substring((qna.wdate),0,10) }</td>
                                          <td>
                                          <c:if test="${qna.result eq 1 }">답변완료</c:if> 
                                          <c:if test="${qna.result eq 0 }"><span style="color: red;">답변대기</span></c:if>
                                          </td>

                                       </tr>
                                    </c:if>
                                 </c:forEach>
                              </c:if>
                           </tbody>
                        </table>

							<div style="float: right;">
	                        <a href="qnawrite.do" class="btn btn-success">글쓰기</a>
	                        </div>
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
      <!-- 쪽지 함수들! -->
                     <!-- 쪽지 함수들! -->
      <script type="text/javascript">
      jQuery(document).ready(function ($) {
      //   chat();
      
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
   });
         </script>

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
      });
   </script>


</body>
</html>