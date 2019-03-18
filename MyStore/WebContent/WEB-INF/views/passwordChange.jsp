<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8" />
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
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

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>
   
   <!-- Left Panel -->
    <aside id="left-panel" class="left-panel">
        <nav class="navbar navbar-expand-sm navbar-default">
            <div id="main-menu" class="main-menu collapse navbar-collapse">
                <ul class="nav navbar-nav">
                  
                      <li class="menu-item-has-children dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                      <i class="menu-icon fa fa-users"></i>커뮤니티</a>
                  
                     <ul class="sub-menu children dropdown-menu">
                     <li><i class="menu-icon fa fa-sign-in"></i><a
                        href="datatable.do?category=자유게시판">자유게시판</a></li>
                     <li><i class="menu-icon fa fa-sign-in"></i><a
                        href="datatable.do?category=홍보">홍보</a></li>
                     <li><i class="menu-icon fa fa-sign-in"></i><a
                        href="datatable.do?category=QnA">Q&A</a></li>
                     
                  </ul></li>
                    
                      <li class="menu-item-has-children dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="menu-icon fa fa-map-o"></i>지도</a>
                  <ul class="sub-menu children dropdown-menu">
                     <li><i class="menu-icon fa fa-sign-in"></i>
                     <a href="formsbasic.do">내주변 가게보기</a></li>
                  </ul>
               </li>
                    
                    <li class="menu-item-has-children dropdown">
                        <a href="calculator.do" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-usd"></i>혜택 계산기</a>
                    
                    <li class="menu-item-has-children dropdown">
                        <a href="article.do" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-bookmark"></i>관련 기사</a>
                      </li>
                    

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
                        <h1>마이페이지</h1>
                     </div>
                  </div>
               </div>
               <div class="col-sm-8">
                  <div class="page-header float-right">
                     <div class="page-title">
                        <ol class="breadcrumb text-right">
                           <li><a href="#">마이페이지</a></li>
                  
                           <li class="active">내 정보 수정</li>
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
               <div class="col-lg-6">
                  <div class="card">
                     <div class="card-header">
                        <strong class="card-title">비밀번호 변경</strong>
                     </div>

                     <!-- Credit Card -->
                     <div id="cardinfo">
                        <div class="card-body">
                           <!-- Credit Card -->


                           <div class="card-body card-block">
                              <input type="hidden" id="_pwd" value="${login.pwd}">
                              <form name="frmForm" id="_frmForm" method="post"
                                 action="passwordChangeAf.do">
                                 <input type="hidden" name="id" id="_userid"
                                    value="${login.id}">

                    

                                 <div id="nowpwdDiv" class="form-group has-feedback">
                                    <label class="control-label" for="inputError2">현재 비밀번호</label> 
                                    <input type="password" class="form-control" 
                                       id="now_pwd" name="now_pwd" aria-describedby="inputError2Status"
                                       placeholder="현재 비밀번호" data-msg="현재 비밀번호를 "> <span
                                       id="nowpwdChk" class="glyphicon form-control-feedback"
                                       aria-hidden="true"></span> <span id="inputError2Status"
                                       class="sr-only">(error)</span> <span class="fade"
                                       style="color: red" id="nowpwdCheck"></span>
                                 </div>

                                 <div id="pwDiv" class="form-group has-feedback">
                                    <label class="control-label" for="inputError2">변경할 비밀번호</label>
                                    <input type="password" class="form-control" id="pw"
                                       name="pw" aria-describedby="inputError2Status"
                                       placeholder="비밀번호 입력" data-msg="비밀번호를 "> <span
                                       id="pwChk" class="glyphicon form-control-feedback"
                                       aria-hidden="true"></span> <span id="inputError2Status"
                                       class="sr-only">(error)</span> <span class="fade"
                                       style="color: red" id="pwCheck"></span>
                                 </div>

                                 <div id="repwDiv" class="form-group  has-feedback">
                                    <label class="control-label" for="inputError2">비밀번호
                                       확인</label> <input type="password" class="form-control" name="pwd"
                                       id="repw" aria-describedby="inputError2Status"
                                       placeholder="비밀번호확인" data-msg="비밀번호를 "> <span
                                       id="repwChk" class="glyphicon form-control-feedback"
                                       aria-hidden="true"></span> <span id="inputError2Status"
                                       class="sr-only">(error)</span> <span class="fade"
                                       style="color: red" id="repwCheck"></span>
                                 </div>




                              </form>
                           </div>
                           <input type="button" id="_btnUpdate" class="btn btn-success"
                              disabled="" value="비밀번호 변경">
                        </div>
                     </div>
                  </div>

               </div>


            </div>
            <!--/.col-->
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

   <!-- Right Panel -->
   <script type="text/javascript">
function valOkdiv(e) {
    e.removeClass('has-error');
    e.addClass('has-success');
 };

 function valNodiv(e) {
    e.removeClass('has-success');
    e.addClass('has-error');
 };

 function valOkchk(e) {
    e.removeClass('glyphicon-remove');
    e.addClass('glyphicon-ok');
 };

 function valNochk(e) {
    e.removeClass('glyphicon-ok');
    e.addClass('glyphicon-remove');
 };

 function validateEmail(sEmail) {
    var filter = /[^0-9]/g;

    if (filter.test(sEmail)) {
       return false;
    } else {
       return true;
    }
 };

 function btnUse() {
    var flag = $("#nowpwdDiv").hasClass('has-success');
    var flag1 = $("#pwDiv").hasClass('has-success');
    var flag2 = $("#repwDiv").hasClass('has-success');
    


    if (flag1 && flag2 && flag) {
       $('#_btnUpdate').attr('disabled', false);
        

    } else {
       $('#_btnUpdate').attr('disabled', true);
    }
 };

 function checkSpecial(str) {
    var special_pattern = /[`~!@#$\\<\\>()%^&*|\\\'\";:\/?]/gi;
    if (special_pattern.test(str) == true) {
       return true;
    } else {
       return false;
    }
 }
 function koreaChk(str) {

    check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
    if (check.test(str)) {
       return true;
    } else {
       return false;
    }
 }
 function blankChk(str) {
    var blank_pattern = /[\s]/g;
    if (blank_pattern.test(str)) {
       return true;
    } else {
       return false;
    }

 }
 jQuery(function() {

    $("#accountBtn").click(function() {
       $("#myModal").modal();
    });
    $("#loginBtn").click(function() {
       loginFunc();

    });
    $("#pwd").keydown(function(key) {
       if (key.keyCode == 13) {
          loginFunc();
       }
    });
    loginFunc = function() {
       var id = $("#logid").val();
       var pwd = $("#pwd").val();
       var alldata2 = {
          "id" : id,
          "pwd" : pwd
       };
       $.ajax({

          url : "login.jsp",
          type : "post",
          data : alldata2,
          success : function(data) {
             if (data.trim() == "OK") {
                location.href = "loginindex.jsp";
             } else {
                alert("ID나 PW확인해주세요");
             }
          },
          error : function() {
             alert("ID나 PW를 확인해주세요.");
          }
       });
    };
    $("#chkBtn").click(function() {
       $.ajax({
          url : "idCheck.jsp",
          type : "get",
          data : "id=" + $("#id").val(),
          success : function(data) {
             alert(data.trim());

             if (data.trim() == "OK") {
                $("#chk").attr('value', 1);
             } else if (data.trim() == "NO") {
                $("#chk").attr('value', 0);
                $("#id").val("");
             } else {
                $("#chk").attr('value', 2);
             }
          },
          error : function() {
             alert("Fail");
          }
       });
    });

    
    $("#now_pwd").keyup(function() {
        var content = $(this).val();
        if ($("#now_pwd").val() == $("#_pwd").val()) {
           valOkdiv($('#nowpwdDiv'));
           valOkchk($('#nowpwdChk'));
           $("#nowpwdCheck").addClass("fade");
           
            
        } else {
           valNodiv($('#nowpwdDiv'));
           valNochk($('#nowpwdChk'));
           $("#nowpwdCheck").removeClass("fade");
           $("#nowpwdCheck").html("현재 비밀번호가 일치하지 않습니다.");
           
        }
        btnUse();
     
     });

    $("#pw").keyup(function() {
       var content = $(this).val();

       if (content.length >= 4) {
          if (blankChk($("#pw").val())) {
             valNodiv($('#pwDiv'));
             valNochk($('#pwChk'));
             $("#pwCheck").removeClass("fade");
             $("#pwCheck").html("패스워드에 공백이 들어가있습니다.");
          

          } else {
             valOkdiv($('#pwDiv'));
             valOkchk($('#pwChk'));
             $("#pwCheck").addClass("fade");
             
          }

       } else {
          valNodiv($('#pwDiv'));
          valNochk($('#pwChk'));
          $("#pwCheck").removeClass("fade");
          $("#pwCheck").html("패스워드는 4글자 이상어야합니다.");
          

       }

       btnUse();
    });

    $("#repw").keyup(function() {
       var content = $(this).val();
       if ($("#pw").val() == $("#repw").val()) {
          valOkdiv($('#repwDiv'));
          valOkchk($('#repwChk'));
          $("#repwCheck").addClass("fade");
          
           
       } else {
          valNodiv($('#repwDiv'));
          valNochk($('#repwChk'));
          $("#repwCheck").removeClass("fade");
          $("#repwCheck").html("패스워드가 같지 않습니다.");
          
       }
       btnUse();
    
    });


   
 });
 
 </script>
      <script>
      $("#_btnUpdate").click(function(){
   if($("#pw").val() == $("#repw").val() && 
         $("#now_pwd").val() == $("#_pwd").val()){
         alert("비밀번호 변경 성공");
      $("#_frmForm").attr({ "target":"_self", "action":"passwordChangeAf.do" }).submit();
      }
    else if($("#pw").val() != $("#repw").val()){
      alert("변경할 비밀번호가 일치하지 않습니다");
      return;
   }else if($("#now_pwd").val() != $("#_pwd").val()){
       
      alert("현재 비밀번호가 일치하지 않습니다");
      
    
   } 
       
 
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
</body>
</html>