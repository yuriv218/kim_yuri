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
               <div class="col-lg-8">
                  <div class="card">
                     <div class="card-header">
                        <strong class="card-title">회원정보</strong>
                     </div>

                     <!-- Credit Card -->
                     <div id="cardinfo">
                        <div class="card-body">
                                           <form name="frmForm" id="_frmForm" method="post" action="mypageUpdateAf.do" enctype="multipart/form-data">
                                    
                                        
                                        <input type="file" name="upload" id="upload" onchange="fileCheck(this)"
                               accept="image/gif, image/jpeg, image/png" value="${mem.image }">
                               
                                       <input type="hidden" name="image" value="${mem.image }">
                                             <img id="blah" src="./upload/${mem.image }" style="width: 700; height: 250;" alt="이미지 준비중"/>
                                       
                                       <div class="row form-group">
                                       <div class="col-6"><br><br><label for="id" class=" form-control-label">아이디</label>
                                        <input type="text" name="id"id="_userid" class="form-control" readonly="readonly" value="${mem.id }"><br>
                                       <label for="id" class=" form-control-label">이름</label>
                                       <input type="text" name="name"id="_name" class="form-control" readonly="readonly" value="${mem.name }"><br>
                                       <label for="phone" class=" form-control-label">휴대전화</label>
                                       <input type="text" name="phone" id="_phone" class="form-control" value="${mem.phone }"><br>
                                       <label for="email" class=" form-control-label">이메일</label>
                                       <input type="text" name="email" id="_email" class="form-control" value="${mem.email }"><br>
                                       </div>
                                       
                                       <div class="col-6"><br><br><label for="store" class=" form-control-label">매장이름</label>
                                       <input type="text" name="store"id="_stroe" class="form-control" readonly="readonly" value="${mem.store }"><br>
                                      <div class="row form-group">
                                       <div class="col-3"><label for="address" class=" form-control-label">주소</label></div>
                                       <div class="col-5"></div>
                                       </div>
                                       <textarea rows="3" name="address" id="_address" class="form-control" readonly="readonly"> ${mem.address }</textarea><br>
                                       <label for="detail" class=" form-control-label">매장소개</label>
                                       <textarea rows="3" name="detail" id="_detail" class="form-control">${mem.detail }</textarea>
                                          </div>
                            
                                 
                                       
                                    </div>
                 
                                
                                <a href="#none" id="_btnUpdate" class="btn btn-success">정보수정</a>
                                 
                                </form>
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
   <script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
                

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('_address').value = fullAddr;
 
            }
        }).open();
    }
</script>


<script type="text/javascript">
//이미지 미리보기
$(function() {
    $("#upload").on('change', function(){
        
        readURL(this);
    });
});
function readURL(input) {
    if (input.files && input.files[0]) {
    var reader = new FileReader();

    reader.onload = function (e) {
            $('#blah').attr('src', e.target.result);
        }
      reader.readAsDataURL(input.files[0]);
    }
}

//이미지 파일만 가능
function fileCheck(obj) {
    pathpoint = obj.value.lastIndexOf('.');
    filepoint = obj.value.substring(pathpoint+1,obj.length);
    filetype = filepoint.toLowerCase();
    if(filetype=='jpg' || filetype=='gif' || filetype=='png' || filetype=='jpeg' || filetype=='bmp') {

        // 정상적인 이미지 확장자 파일일 경우 ...

    } else {
        alert('이미지 파일만 선택할 수 있습니다.');
   
        parentObj  = obj.parentNode
        node = parentObj.replaceChild(obj.cloneNode(true),obj);

        return false;
    }
    if(filetype=='bmp') {
        upload = confirm('BMP 파일은 웹상에서 사용하기엔 적절한 이미지 포맷이 아닙니다.\n그래도 계속 하시겠습니까?');
        if(!upload) return false;
    }
} 

$("#_btnUpdate").click(function() {   
   alert('회원정보수정하기');   
   
 
   $("#_frmForm").attr({ "target":"_self", "action":"mypageUpdateAf.do" }).submit();
   
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