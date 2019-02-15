<%@page import="kh.com.c.model.MemberDto"%>
<%@page import="java.util.List"%>

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

  <link rel="shortcut icon" href="images/favicon.png">
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


<style>
#weatherWidget .currentDesc {
   color: #ffffff !important;
}

.traffic-chart {
   min-height: 335px;
}

#flotPie1 {
   height: 150px;
}

#flotPie1 td {
   padding: 3px;
}

#flotPie1 table {
   top: 20px !important;
   right: -10px !important;
}

.chart-container {
   display: table;
   min-width: 270px;
   text-align: left;
   padding-top: 10px;
   padding-bottom: 10px;
}

#flotLine5 {
   height: 105px;
}

#flotBarChart {
   height: 150px;
}

#cellPaiChart {
   height: 160px;
}
</style>



<!-- 다음맵 api -->
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=916ea874e228791dbf525372ff0244e5&libraries=services"></script>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>

<!-- 다음맵 api -->
<script type="text/javascript"
   src="//dapi.kakao.com/v2/maps/sdk.js?appkey=916ea874e228791dbf525372ff0244e5&libraries=services"></script>

<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

</head>

<body>

   <%
String word = (String)request.getAttribute("word");

String myaddress = (String)request.getAttribute("myaddress");
   
   
List<MemberDto> address = (List<MemberDto>)request.getAttribute("address");

%>




   <!-- Left Panel -->
   <aside id="left-panel" class="left-panel">
      <nav class="navbar navbar-expand-sm navbar-default">
         <div id="main-menu" class="main-menu collapse navbar-collapse">
            <ul class="nav navbar-nav">

               <li class="menu-item-has-children dropdown"><a href="#"
                  class="dropdown-toggle" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false"> <i
                     class="menu-icon fa fa-bars"></i>매출관리
               </a>
                  <ul class="sub-menu children dropdown-menu">

                     <!-- 새끼메뉴 -->

                     <li><i class="fa fa-puzzle-piece"></i><a href="account.do">매출/매입</a></li>
                     <li><i class="menu-icon fa fa-bar-chart"></i><a
                        href="chart.do">상품별 차트</a></li>
                     <li><i class="menu-icon fa fa-bar-chart"></i><a
                        href="montlychart.do">년도별 차트</a></li>

                  </ul></li>

               <li class="menu-item-has-children dropdown"><a href="#"
                  class="dropdown-toggle" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false"> <i
                     class="menu-icon fa fa-table"></i>매장관리
               </a>
                  <ul class="sub-menu children dropdown-menu">
                     <li><i class="fas fa-stroopwafel"></i><a href="goodslist.do">상품관리</a></li>
                     <li><i class="fa fa-calendar-o"></i><a href="booklist.do">예약관리</a></li>
                     <li><i class="fa fa-id-card-o"></i><a href="emplist.do">직원관리</a></li>
                  </ul></li>

               <li class="menu-item-has-children dropdown"><a href="stock.do"
                  aria-haspopup="true" aria-expanded="false"> <i
                     class="menu-icon fa fa-tasks"></i>재고관리
               </a>
               <li class="menu-item-has-children dropdown"><a
                  href="customer.do" aria-haspopup="true" aria-expanded="false">
                     <i class="menu-icon fa fa-th"></i>거래처관리
               </a></li>


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


               <li class="menu-item-has-children dropdown"><a href="#"
                  class="dropdown-toggle" data-toggle="dropdown"
                  aria-haspopup="true" aria-expanded="false"> <i
                     class="menu-icon fa fa-id-card-o"></i>마이페이지
               </a>
                  <ul class="sub-menu children dropdown-menu">
                     <li><i class="menu-icon fa fa-user"></i><a href="mypage.do">내정보</a></li>

                     <li><i class="menu-icon fa fa-paper-plane"></i><a
                        href="qnalist.do">문의하기</a></li>

                  </ul></li>
               <c:if test="${login.auth eq 1 }">
                  <li class="menu-item-has-children dropdown"><a href="#"
                     class="dropdown-toggle" data-toggle="dropdown"
                     aria-haspopup="true" aria-expanded="false"> <i
                        class="menu-icon fa fa-id-card-o"></i>관리자
                  </a>
                     <ul class="sub-menu children dropdown-menu">
                        <li><i class="menu-icon fa fa-user"></i><a
                           href="getMemberlist.do">회원정보</a></li>
                        <li><i class="menu-icon fa fa-sign-in"></i><a
                           href="qnalist.do">문의</a></li>


                     </ul></li>

               </c:if>



            </ul>
         </div>
         <!-- /.navbar-collapse -->
      </nav>
   </aside>
     <!-- /#left-panel -->
    <!-- Right Panel -->
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
                     <span id ="Mhere"></span>
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
      <!-- Content -->
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
                           <li><a href="#">지도</a></li>
                           <li class="active">내주변 가게보기</li>
                        </ol>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      
      <div class="content">
         <!-- Animated -->
         <div class="animated fadeIn">

            <!-- 여기부터 지도 -->

   <div class="row">
               <div class="col-lg-8">
                  <div class="card">

                     <div class="row">
                        <div class="col-xl-8">
                           <div class="card-body">

                              <div id="map"
                                 style="width: 600px; height: 350px; float: left;"></div>


                              <script type="text/javascript"
                                 src="//dapi.kakao.com/v2/maps/sdk.js?appkey=916ea874e228791dbf525372ff0244e5&libraries=services"></script>
                              <script>
                              
   // 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
   var infowindow = new daum.maps.InfoWindow({zIndex:1});

   var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
       mapOption = {
           center: new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
           level: 3 // 지도의 확대 레벨
       };  

   // 지도를 생성합니다    
   var map = new daum.maps.Map(mapContainer, mapOption); 
   
   <% if((word.equals("없음"))){%>
   
   var geocoder = new daum.maps.services.Geocoder();

   
   // 주소로 좌표를 검색합니다
   geocoder.addressSearch('<%=myaddress%>', function(result, status) {

    var moveLatLon = new daum.maps.LatLng(result[0].y, result[0].x);

    
   
     
      <%
      for (int i = 0; i < address.size(); i ++) {
   
         MemberDto a = address.get(i);
         
         
         %>
   
         
      // 주소로 좌표를 검색합니다
      geocoder.addressSearch('<%=a.getAddress()%>', function(result, status) {

       var coords = new daum.maps.LatLng(result[0].y, result[0].x);

       // 마커를 생성하고 지도에 표시합니다
       var marker = new daum.maps.Marker({
           map: map,
           position: coords
       });
       
       // 마커에 클릭이벤트를 등록합니다
       daum.maps.event.addListener(marker, 'click', function() {
   
           $.ajax({
                url:"getMapInfor.do",
                type:"get",
                data:"address="+"<%=a.getAddress()%>",
                success:function(data){
             
                   
                   addList(data.id,data.store,data.email,data.detail,data.address,data.image);
                },
                error:function(req,sts,err){
                   alert("실패");
                }
                
             });
          
       });
    });
      
   
      <%}%>
   
        map.panTo(moveLatLon);  
      
   });
   
  
   
   



   
   <%}else{%>
   

   // 장소 검색 객체를 생성합니다
   var ps = new daum.maps.services.Places(); 

   
   // 키워드로 장소를 검색합니다
   ps.keywordSearch('<%=word%>', placesSearchCB); 

   // 키워드 검색 완료 시 호출되는 콜백함수 입니다
   function placesSearchCB (data, status, pagination) {
       if (status === daum.maps.services.Status.OK) {

           // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
           // LatLngBounds 객체에 좌표를 추가합니다
           var bounds = new daum.maps.LatLngBounds();

           for (var i=0; i<data.length; i++) {
               displayMarker(data[i]);    
               bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));
           }       

           // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
           map.setBounds(bounds); 
       } 
   }
   

   

   // 지도에 마커를 표시하는 함수입니다
   function displayMarker(place) {
      // 주소-좌표 변환 객체를 생성합니다
      var geocoder = new daum.maps.services.Geocoder();

      <%
      for (int i = 0; i < address.size(); i ++) {
   
         MemberDto a = address.get(i);
         
         
         %>
   
         
      // 주소로 좌표를 검색합니다
      geocoder.addressSearch('<%=a.getAddress()%>', function(result, status) {

       var coords = new daum.maps.LatLng(result[0].y, result[0].x);

       // 마커를 생성하고 지도에 표시합니다
       var marker = new daum.maps.Marker({
           map: map,
           position: coords
       });
       
       // 마커에 클릭이벤트를 등록합니다
       daum.maps.event.addListener(marker, 'click', function() {
   
           $.ajax({
                url:"getMapInfor.do",
                type:"get",
                data:"address="+"<%=a.getAddress()%>",
                success:function(data){
             
                   
                   addList(data.id,data.store,data.email,data.detail,data.address,data.image);
                },
                error:function(req,sts,err){
                   alert("실패");
                }
                
             });
          
       });
    });
      
   
      <%}%>
   }
   <%}%>
                                 function addList(id, store, email,
                                       detail, address, image) {

                                    $("#tId").html(id);
                                    $("#tStore").html(store);
                                    $("#tEmail").val(email);
                                    $("#tDetail").val(detail);
                                    $("#tAddress").val(address);
                                    $("#tImage").css(
                                          "background-image",
                                          "url('upload/" + image
                                                + "')");
                                 }
                              
                                 function message() {
                                    
                                    $("#here").empty();
                                    $("#here")
                                          .append(
                                                '<br>'
                                                      + '<br>'
                                                      + ' <div class="form-group">'
                                                      + '  <div class="input-group">'
                                                      + '  <div class="input-group-addon">'
                                                      + '<i class="fa fa-user"></i></div>'
                                                      + '     <input type="text" id="title0" name="title" placeholder=" 제목" class="form-control">'
                                                      + '  </div>'
                                                      + '  </div>'
                                                      +

                                                      ' <div class="form-group" style="padding-top= 10px">'
                                                      + '  <div class="input-group">'
                                                      + '  <div class="input-group-addon">'
                                                      + '<i class="fa fa-envelope"></i></div>'
                                                      + '     <textarea rows="10" cols="30" id="content0" name="content" class="form-control"  placeholder="내용">'
                                                      + '</textarea>'
                                                      + '  </div>'
                                                      + '  </div>'
                                                      + '<div align="right"><input type="button" id="btnSend0" class="btn btn-success btn-sm" value="보내기"/></div>'

                                          );

                                    var offset = $("#tDetail")
                                          .offset();
                                    $('html, body').animate({
                                       scrollTop : offset.top
                                    }, 400);
                                    $("#tDetail").css("top", st + 20);         
                                 
                  }
                                 
                                 
                                 
                                 $(document).on("click","#btnSend0",function(){ 
                                    if($("#content").val() == ""){
                                       alert("내용을 입력해 주십시오");
                                    }else if($("#title").val() == ""){
                                       alert("제목을 입력해 주십시오");
                                    }else{
                                      $.ajax({
                                           url:"send.do",
                                           type:"get",
                                           contentType: "application/x-www-form-urlencoded; charset=UTF-8",
                                           data: {
                                             "fromID" : "${login.id}",
                                             "toID" : $("#tId").html(),
                                             "chatTitle" : $("#title0").val(),
                                             "chatContent" : $("#content0").val()
                                          },                                              
                                           success:function(data){
                                           alert(data);
                                              
                                           },
                                           error:function(req,sts,err){
                                          alert("실패");
                                           }
                                           
                                        }); 
                                    
                                    }
                                 });
                              </script>
 

                           </div>
                        </div>
                     </div>
                  </div>
               </div>

               <!-- 여기까지 지도 -->

               <div class="col-md-4">
                  <section class="card">


                     <div id="tImage" class="twt-feed" 
                        style=" background-image: URL(upload/${login.image}); background-repeat: no-repeat; background-position: 50% 50%;" >
  
                        <div class="media">
                           <div class="media-body" style="text-align: center;">
                        
                              <h4 class="text-white display-6" id="tStore">${login.store }</h4>
                              <p class="text-light" id="tId">${login.id }</p> 
                           
                           </div>
                        </div>
                     </div>





                     <ul class="list-group list-group-flush">


                        <li class="list-group-item"><div class="input-group">
                              <div class="input-group-addon" style="background-color: #FFA500;">
                                 <i class="fa fa-envelope-o fa-fw"></i>
                              </div> 
                              <input type="text" id="tEmail" name="username"
                                 value="${login.email }" class="form-control"
                                 readonly="readonly" style="background-color: white; font-size: 11px"">
                           </div></li>
                           
                        <li class="list-group-item"><div class="input-group">
                              <div class="input-group-addon"  style="background-color: #FFA500;">
                                 <i class="fa fa-map-marker fa-fw"></i>
                              </div>
                              
                              <input type="text" id="tAddress" name="username"
                                 value="${login.address }" class="form-control"
                                 readonly="readonly" style="background-color: white; font-size: 11px">
                           </div></li>   

                     <li class="list-group-item"><div class="input-group">
                              <div class="input-group-addon"  style="background-color: #FFA500;">
                                 <i class="fa fa-info fa-fw"></i>
                              </div>
                              
                              <input type="text" id="tDetail" name="username"
                                 value="${login.detail }" class="form-control"
                                 readonly="readonly" style="background-color: white;font-size: 11px"" >
                           </div></li>   
                  
                  
                  
      

                     
                        <li class="list-group-item"><button onclick="message()" id="btn" class="btn btn-outline-success btn-block">쪽지 보내기</button> <span id="here"></span></li>
                     
                     </ul>



                     <div align="center"
                        style="padding-right: 10px; padding-top: 13px">
                        <form action="formsbasic.do" id="frm">
                           <input type="text" id="word" name="word" style="height: 25px">

                           <!-- <input type="submit" value="검색"> -->
                           <i class="fa fa-search" onclick="search()"
                              style="cursor: pointer;"></i>
                        </form>
                     </div>

                     <script type="text/javascript">
                        function search() {
                           document.getElementById('frm').submit();

                        }
                     </script>

                     <div align="right">
                        <footer class="twt-footer"> </footer>
                     </div>
                  </section>
               </div>
               
               
            </div>
            
         </div>
         
      </div>



      



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

   <!--  Chart js -->
   <script
      src="https://cdn.jsdelivr.net/npm/chart.js@2.7.3/dist/Chart.bundle.min.js"></script>

   <!--Chartist Chart-->
   <script
      src="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/chartist-plugin-legend@0.6.2/chartist-plugin-legend.min.js"></script>

   <script
      src="https://cdn.jsdelivr.net/npm/jquery.flot@0.8.3/jquery.flot.min.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/flot-pie@1.0.0/src/jquery.flot.pie.min.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/flot-spline@0.0.1/js/jquery.flot.spline.min.js"></script>

   <script
      src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
   <script src="assets/js/init/weather-init.js"></script>

   <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
   <script
      src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
   <script src="assets/js/init/fullcalendar-init.js"></script>
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
                                  $("#Mhere").empty();
                                 for(var i = 0; i< result.length; i++){                                 
                                    _addList(result[i][0].value, result[i][1].value, result[i][2].value,
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
                           function _addList(seq,FromID,ToID,ChatTitle,ChatContent,ChatTime) {
                           
                           var m = "받은 메세지";
                           var i = "";
                           if(FromID == "${login.id}"){
                              m="보낸 메세지";
                              
                              $.ajax({
                                     url:"getimage.do",
                                     type:"get",
                                     data:"id="+ToID,
                                     success:function(data){   
                                       
                                    $("#Mhere").append(
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
                                    $("#Mhere").append(
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
                              
</body>
</html>



