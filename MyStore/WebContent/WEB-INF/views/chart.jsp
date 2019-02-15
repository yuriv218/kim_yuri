<%@page import="kh.com.c.util.CalendarUtil"%>
<%@page import="java.util.Calendar"%>
<%@page import="kh.com.c.model.MoneyDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/> 
    

    <%    
    List<MoneyDto> list = (List<MoneyDto>)request.getAttribute("list");

    String sname = "";         // 매출 상품명(업체 대상)
    String sales = "";         // 상품별 매출액
  
    String pname = "";         // 매입 상품명
    String product = "";      // 상품별 매입액
    
     int earned = 0;
    
    
    for(int i = 0 ; i < list.size() ; i++){
       MoneyDto dto = list.get(i);
       int total1 = 0;
       int total2 = 0;
    
          if(dto.getM_type().equals("매출")){
             
                if(i == (list.size()-1)){
                   String name = "'" + dto.getP_name() + "'";
                   sname = sname + name;
                //   total1 = dto.getAmount() * dto.getPrice();
                   total1 = dto.getPrice_total();
                   sales = sales + total1;
                }else{
                   String name = "'" + dto.getP_name() + "'" + ",";  
                   sname = sname + name;
               //    total1 = dto.getAmount() * dto.getPrice();
                     total1 = dto.getPrice_total();
                   sales = sales + total1 + ",";
                }
          }
          else if(dto.getM_type().equals("매입")){
             
             if(i == (list.size()-1)){
                String name = "'" + dto.getP_name() + "'";
                pname = pname + name;
              //  total2 = dto.getAmount() * dto.getPrice();
                 total2 = dto.getPrice_total();
                product = product + total2;
             }else{
                String name = "'" + dto.getP_name() + "'" + ",";  
                pname = pname + name;
            //  total2 = dto.getAmount() * dto.getPrice();
               total2 = dto.getPrice_total();
                product = product + total2 + ",";
             }
          } 
          
          
          earned = earned + (total1 - total2);

    }
/*    String profit = CalendarUtil.MoneyFormat(earned);
   System.out.println(profit);  */

   String profit = String.format("%,d원", earned);
   System.out.println(profit);
   
   
    
    
    %>
    
 <!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <title>Store Friend</title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

  
     <link rel="shortcut icon" href="images/favicon.ico">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />


<!-- Tables -->
 <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
 
 
 <!-- datatable export -->
<script src="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css " ></script>

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



<!-- 내ㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐㅐ거ㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓㅓ  -->

<script src="https://code.highcharts.com/highcharts.js"></script>
<script src="https://code.highcharts.com/modules/exporting.js"></script>
<script src="https://code.highcharts.com/modules/export-data.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" type="text/css" />  
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>

<!-- <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" type="text/css" /> -->
<link href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/css/datepicker.css" rel="stylesheet" type="text/css" />

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.3.0/js/bootstrap-datepicker.js"></script>



<!--ㅎㅎ  -->
   <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
   <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>



<style type="text/css">
label{margin-left: 20px;}
#datepicker{width:180px; margin: 0 20px 20px 20px;}
#datepicker > span:hover{cursor: pointer;}
#datepicker1{width:180px; margin: 0 20px 20px 20px;}
#datepicker1 > span:hover{cursor: pointer;}


 
  #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }



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
        

        
        <!-- /#header -->
        <!-- Content -->
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">
            

         <form action="" id="chartdo" style="margin-left: 1000px; display: inline;">
                <div class="row">

                   <!-- Header  -->
                 <div class="col col-lg-12">
                        <section class="card">
                           <div class="card-body text-secondary">매출 매입 차트</div> 
                              <div class="page-title">
                            <!--    <font style="color: green; "><h3><b>매출/매입 차트</b></h3></font> --> <!-- <h3><b>매출 / 매입 차트</b></h3> -->
                            </div>
                        </section>
                    </div>
                
               <!-- 시작 날짜 -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                      <div class="icon-container">
                                          &nbsp;&nbsp;&nbsp;<span class="ti-hand-point-right"></span><span class="icon-name">Start Date</span>
                                        </div>
                                    <div>      
                                         <div id="datepicker" class="input-group date" data-date-format="yyyy-mm-dd" align="left" >
                                     <input class="form-control" type="text"  id="Sstartdate" name="Sstartdate" readonly />
                                     <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                              </div>         
                                    </div>
                                 </div>
                             </div>
                         </div>
                     </div>

              <!-- 끝나는 날짜  -->
                 <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                       <div class="icon-container">
                                          &nbsp;&nbsp;&nbsp;<span class="ti-hand-point-right"></span><span class="icon-name">End Date</span>
                                        </div><br>
                                       <div>      
                                            <div id="datepicker1" class="input-group date" data-date-format="yyyy-mm-dd">
                                       <input class="form-control" type="text" id="Senddate" name="Senddate" readonly />
                                       <span class="input-group-addon"><i class="glyphicon glyphicon-calendar"></i></span>
                                 </div>      
                                       </div>
                                 </div>
                             </div>
                         </div>
                     </div>
                 
                  <!-- 검색 버튼 -->
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five" style="height: 92px;">
                                      <div class="icon-container">
                                          <span class="ti-search"></span><span class="icon-name">Search</span>
                                      </div>
                                       <div>
                                            <div>
                                                <input type="button" class="btn btn-success btn-lg btn-block" value="Search" id="search" onclick="Search()" style="float: left;">
                                            </div>
                                       </div>
                                 </div>
                             </div>
                         </div>
                     </div>

              <!-- 순이익 -->
                  <div class=" col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five" style="height: 92px;">
                                   <div class="icon-container">
                                    <span class="ti-heart"></span><span class="icon-name">Total Profit</span>
                                   </div><br><br>
                                   <div><font size="5px;"><b><%=profit %></b></font></div>
                                </div>
                            </div>
                        </div>
                   </div> 
                   
                                     
                </div>
           </form>     
                


         <!-- 차트 1-->
           <div class="row">
               <div class="col-lg-12">
                    <div class="card">
                         <div class="card-body">
                              <h4 class="box-title"></h4>
                         </div>
                         <div class="row">
                                <div class="col-lg-8">
                                    <div class="card-body">
                                       <div id="container1" style="width: 1150px; height: 400px; margin: 0 auto"></div>
                                    </div>
                                 </div> 
                               <div class="card-body"></div>
                         </div>
                     </div>
               </div>
               <div class="clearfix"></div>
           </div>
            
     
               <!-- 두번째 차트 -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card">
                            <div class="card-body">
                                <h4 class="box-title"></h4>
                            </div>
                            <div class="row">
                                <div class="col-lg-8">
                                    <div class="card-body">
                              <div id="container2" style="width: 1150px; height: 400px; margin: 0 auto"></div> 
                                    </div>
                                </div>
                             </div>
                       </div>
                     </div>
                  </div>
                  
                  <!-- 결제수단 비율 카드, 현금   -->
                  <div class="row">
             
                 <div class="col-md-6">
                      <div class="card">
                                <div class="card-header">
                                    <strong>매출 결제수단 비율</strong>
                                    <small>카드, 현금</small>
                                </div>
                                
                                <div class="card-body">                              
                                  <div id="container3" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
                                 </div>
                         </div>
                   </div>    
                         
                         
                   <div class="col-lg-6">  
                            <div class="card">
                                <div class="card-header">
                                    <strong>매입 결제수단 비율</strong>
                                    <small>카드, 현금</small>
                                </div>
                                
                                <div class="card-body">
                                         <div id="container4" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div> 
                                </div>
                            </div>
               </div>   

            </div>
      
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  
                  

             <div class="row">
             
                 <div class="col-md-6">
                      <div class="card">
                                <div class="card-header">
                                    <strong>상품별 매출 테이블</strong>
                                    <small>Use this class</small>
                                </div>
                                
                                <div class="card-body">                              
                                   <!-- 테이블 자리  -->   
                                  <table id="bootstrap-data-table" class="table table-striped table-bordered">
                                       <thead>
                                           <tr>
                                               <th>상품명</th>
                                               <th>매출액</th>                                         
                                           </tr>
                                       </thead>
                                         <tbody>                                       
                                           <c:forEach items="${sales }" var="sales">                    
                                                       <tr>
                                                           <td>${sales.p_name }</td>
                                                           <td>${sales.memo }</td>                                          
                                                       </tr>
                                       </c:forEach>
                               </tbody>
                                   </table>
                                 </div>
                         </div>
                   </div>    
                         
                         
                   <div class="col-lg-6">  
                            <div class="card">
                                <div class="card-header">
                                    <strong>상품별 매입 테이블 </strong>
                                    <small>매입액</small>
                                </div>
                                
                                <div class="card-body">
                                          <table id="myTable" class="table table-striped table-bordered">
                                          <thead>
                                              <tr>
                                                  <th>상품명</th>
                                                  <th>매출액</th>                                         
                                              </tr>
                                          </thead>
                                          <tbody>
                                           <c:forEach items="${product }" var="product">                    
                                                       <tr>
                                                           <td>${product.p_name }</td>
                                                           <td>${product.memo }</td>                                          
                                                       </tr>
                                       </c:forEach>
                                          </tbody>
                                   </table>
                                </div>
                            </div>
               </div>   

            </div>
      
      
      
      </div>
        </div>
        
        
        
        
        <div class="clearfix"></div>

        <footer class="site-footer">
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


    <!-- Scripts -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

    <!--  Chart js -->
    <script src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="assets/js/init/fullcalendar-init.js"></script>

    <!--Local Stuff-->
    
    
    <!-- Tables -->
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

var $j = jQuery.noConflict();         /* jQuery 충돌 */

/* 매출  차트 */
Highcharts.chart('container1', {
     chart: {
       type: 'column'
     },
     title: {
       text: "<font color='gray'>상품별 매출 차트</font>"
     },
     xAxis: {
       categories: [<%=sname%>]
     },
     credits: {
       enabled: false
     },
     series: [{
       name: '매출',
       data: [<%=sales%>]
     } 
     ]
   });

   
 /* 매입 차트 */  
Highcharts.chart('container2', {
    chart: {
      type: 'column'
    },
    title: {
      text: '상품별 매입 차트'
    },
    xAxis: {
      categories: [<%=pname%>]
    },
    credits: {
      enabled: false
    },
    series: [{
      name: '매입',
      data: [<%=product%>]
    } 
    ]
  });

   $j(function () {
      $("#datepicker").datepicker({ 
            autoclose: true, 
            todayHighlight: true
      }).datepicker('update', '${sdate}');
    });
   $j(function () {
      $("#datepicker1").datepicker({ 
            autoclose: true, 
            todayHighlight: true
      }).datepicker('update', '${edate}');
    });
   
   
   $j("#search").click(function () {
      var start = document.getElementById("Sstartdate").value;
      var end = document.getElementById("Senddate").value;
      
      var _start = start.replace('-','');
      _start = _start.replace('-','');
      _start = _start.substring(0,8);
      
      var _end = end.replace('-','');
      _end = _end.replace('-','');
      _end = _end.substring(0,8);
      
      if(_start > _end){
         alert("날짜를 다시 설정해주십시오.");
         return;
      }
        
      
      $("#chartdo").attr({"target":"_self", "action":"chart.do"}).submit();
      
      
});
  
   

   
   var $k = jQuery.noConflict();
   
   $k(document).ready(function() {
       $k('#bootstrap-data-table-export').DataTable();
 } );

   

   var $l = jQuery.noConflict();
   $l(document).ready( function () {
       $l('#myTable').DataTable();
   } );
   
   /* test */
    $l(document).ready(function() {
       $('#bootstrap-data-table').DataTable( {
           dom: 'Bfrtip',
           "searching": false,
           "paging": false,
           "bInfo": false,
           buttons: [
               'copy', 'csv', 'excel', 'print'
           ]
       } );
   } );
    $l(document).ready(function() {
       $('#myTable').DataTable( {
           dom: 'Bfrtip',
           "searching": false,
           "paging": false,
           "bInfo": false,
           buttons: [
               'copy', 'csv', 'excel', 'print'
           ]
       } );
   } );
   
  

   
// 카드 현금
// Radialize the colors
Highcharts.setOptions({
  colors: Highcharts.map(Highcharts.getOptions().colors, function (color) {
    return {
      radialGradient: {
        cx: 0.5,
        cy: 0.3,
        r: 0.7
      },
      stops: [
        [0, color],
        [1, Highcharts.Color(color).brighten(-0.3).get('rgb')] // darken
      ]
    };
  })
});

// Build the chart
Highcharts.chart('container3', {
  chart: {
    plotBackgroundColor: null,
    plotBorderWidth: null,
    plotShadow: false,
    type: 'pie'
  },
  title: {
    text: '매출 결제수단 비율'
  },
  tooltip: {
    pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
  },
  plotOptions: {
    pie: {
      allowPointSelect: true,
      cursor: 'pointer',
      dataLabels: {
        enabled: true,
        format: '<b>{point.name}</b>: {point.percentage:.1f} %',
        style: {
          color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
        },
        connectorColor: 'silver'
      }
    }
  },
  series: [{
    name: 'Share',
    data: [
      { name: '카드', y: ${payment.sCard} },
      { name: '현금', y: ${payment.sCash} }
    ]
  }]
});




Highcharts.chart('container4', {
     chart: {
       plotBackgroundColor: null,
       plotBorderWidth: null,
       plotShadow: false,
       type: 'pie'
     },
     title: {
       text: '매입 결제수단 비율'
     },
     tooltip: {
       pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
     },
     plotOptions: {
       pie: {
         allowPointSelect: true,
         cursor: 'pointer',
         dataLabels: {
           enabled: true,
           format: '<b>{point.name}</b>: {point.percentage:.1f} %',
           style: {
             color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
           },
           connectorColor: 'silver'
         }
       }
     },
     series: [{
       name: 'Share',
       data: [
         { name: '카드', y: ${payment.pCard} },
         { name: '현금', y: ${payment.pCash} }
       ]
     }]
   });



</script>




</body>
</html>
 
