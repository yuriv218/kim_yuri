 
<%@page import="kh.com.c.model.MoneyGoalDto"%>
<%@page import="java.util.Calendar"%>
<%@page import="kh.com.c.model.MemberDto"%>
<%@page import="kh.com.c.util.DateUtil"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="kh.com.c.model.MoneyDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<fmt:requestEncoding value="utf-8"/>  
<%

 
// 오늘 날짜 구하기 - 메인 진입하면, Money테이블에서 오늘 날짜가 속한 주, 월별 매출 매입, 1년치 매출 매입 가져온다.
SimpleDateFormat d = new SimpleDateFormat("yyyyMMdd");
Date day = new Date();
String today = d.format(day);
System.out.println(today);

DateUtil date = new DateUtil();

String startDate = today;
String endDate1 = date.weekCalendar(today);
String endDate2 = date.lastdayOfMonth();
String endDate3 = date.lastdayOfYear();
//String endDate3 = 
System.out.println(endDate1 + ", " + endDate2 + ", " + endDate3);
//
%> 
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

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    
    <!-- 아이콘 링크 -->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
      <link rel="shortcut icon" href="images/favicon.ico">
   
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="https://cdn.jsdelivr.net/npm/chartist@0.11.0/dist/chartist.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/jqvmap@1.5.1/dist/jqvmap.min.css" rel="stylesheet">

    <link href="https://cdn.jsdelivr.net/npm/weathericons@2.1.0/css/weather-icons.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.css" rel="stylesheet" />
    

   <style>
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
                                
                    
                   <li class="menu-item-has-children dropdown">
                      <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
                      <i class="menu-icon fa fa-users"></i>커뮤니티</a>

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

               <li class="menu-item-has-children dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                  <i class="menu-icon fa fa-map-o"></i>지도</a>
                  <ul class="sub-menu children dropdown-menu">
                     <li><i class="menu-icon fa fa-sign-in"></i>
                     <a href="formsbasic.do">내주변 가게보기</a></li>
                  </ul>
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
               <a class="navbar-brand" href="main.do">
               <img src="images/Slogo.png" alt="Logo" height="35px" width="300px"></a> 
               <a class="navbar-brand hidden" href="main.do">
               <img src="images/Slogo.png" alt="Logo"></a> <a id="menuToggle"
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
        <!-- Content -->
        <div class="clearfix">
        <div class="content">
            <!-- Animated -->
            <div class="animated fadeIn">
                <!-- Widgets  -->
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-1">
                                        <i class="pe-7s-cash"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><a href="account.do"><font size="3">매출관리</a></font></div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-2">
                                        <i class="pe-7s-cart"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><a href="stock.do"><font size="3">재고관리</font></a></div>
                                             
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-3">
                                        <i class="pe-7s-browser"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><a href="booklist.do"><font size="3">예약관리</font></a></div>
                                             
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-3 col-md-6">
                        <div class="card">
                            <div class="card-body">
                                <div class="stat-widget-five">
                                    <div class="stat-icon dib flat-color-4">
                                        <i class="pe-7s-users"></i>
                                    </div>
                                    <div class="stat-content">
                                        <div class="text-left dib">
                                            <div class="stat-text"><a href="datatable.do?category=자유게시판"><font size="3">커뮤니티</font></a></div>
                                            
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /Widgets -->
                <!--  Traffic  -->
               <div class="row">
                  <!-- 좌우여백  -->

                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-body">
                        <!--    <h4 class="box-title">매출 목표 달성률</h4> -->
                           <button type="button" id="modifyGoalBtn" class="btn btn-light">목표 매출액/순이익 변경</button>
                              
                           <div id="container"   style="min-width: 360px; height: 400px; margin: 0 auto"></div><br>
               
                              <div id="modifyGoalDiv" style="display: none;">
                              <div class="form-row" >
                                 <div class="col">
                                   <label for="validationTooltip01">주간 매출 목표액</label>
                                    <input type="text" id="perWeek" name="perWeek" class="form-control">&nbsp;&nbsp;
                                 </div>
                                 <div class="col">
                                   <label for="validationTooltip02">월간 매출 목표액</label>
                                 
                                    <input type="text" id="perMonth" name="perMonth" class="form-control">&nbsp;&nbsp;
                                 </div>
                                 <div class="col">
                                   <label for="validationTooltip03">연간 매출 목표액</label>
                                 
                                    <input type="text" id="perYear" name="perYear" class="form-control">
                                 </div>
                                 <br>
                                 <br>
                              </div>

                              <div class="form-row">
                                 <div class="col">
                                   <label for="validationTooltip04">주간 순이익 목표액</label>
                                    <input type="text" id="perWeek_pure" name="perWeek_pure" class="form-control">&nbsp;&nbsp;
                                 </div>
                              <div class="col">
                               <label for="validationTooltip05">월간 순이익 목표액</label>
                        
                                 <input type="text" id="perMonth_pure" name="perMonth_pure" class="form-control">&nbsp;&nbsp;
                              </div>
                              <div class="col">
                               <label for="validationTooltip06">연간 순이익 목표액</label>
                        
                                 <input type="text" id="perYear_pure" name="perYear_pure" class="form-control">
                              </div>
                              <br>
                              </div>

                           <button type="button" id="saveGoalBtn" class="btn btn-light">변경 적용하기</button>
                           </div>
                     </div>
                  </div>
               </div>
               </div>
                  

               <div class="row">
                  <div class="col-lg-12">
                     <div class="card">
                        <div class="card-body">
                           <h4 class="box-title" id="toSoldoutOnly">품절 임박 리스트&nbsp;
                           </h4>
                           <span class="soldoutCount"></span>
                           <br><br>
                           <div id="soldoutList"></div>
                        </div>
                        <div class="row">
                           <div class="col-lg-8">
                              <div class="card-body"></div>
                           </div>
                           <!-- /.row -->
                           <div class="card-body"></div>
                        </div>
                     </div>
                     <!-- /# column -->
                  </div>
                  <!--  /Traffic -->
               
                  <!-- Calender Chart Weather  -->

                  <div class="col-lg-6">
                     <div class="card">
                        <div class="card-body">
                           <!-- <h4 class="box-title">스케줄러</h4> -->
                           <div class="calender-cont widget-calender">
                              <div id="calendar"></div>
                           </div>
                        </div>
                     </div>
                  </div>


                  <div class="col-lg-6">
                     <div class="card weather-box">
                        <div class="card-body">
                           <h4 class="weather-title box-title">주간 날씨</h4>
                           <div class="weather-widget">
                              <div id="weather-one" class="weather-one"></div>
                           </div>
                        </div>
                     </div>
                  </div>
         </div>

               <!-- /Calender Chart Weather -->
                
                <!-- Modal - Calendar - Add New Event -->
                <div class="modal fade none-border" id="event-modal">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title"><strong>Add New Event</strong></h4>
                            </div>
                            <div class="modal-body"></div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-success save-event waves-effect waves-light">Create event</button>
                                <button type="button" class="btn btn-danger delete-event waves-effect waves-light" data-dismiss="modal">Delete</button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /#event-modal -->
                <!-- Modal - Calendar - Add Category -->
                <div class="modal fade none-border" id="add-category">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                <h4 class="modal-title"><strong>Add a category </strong></h4>
                            </div>
                            <div class="modal-body">
                                <form>
                                    <div class="row">
                                        <div class="col-md-6">
                                            <label class="control-label">Category Name</label>
                                            <input class="form-control form-white" placeholder="Enter name" type="text" name="category-name"/>
                                        </div>
                                        <div class="col-md-6">
                                            <label class="control-label">Choose Category Color</label>
                                            <select class="form-control form-white" data-placeholder="Choose a color..." name="category-color">
                                                <option value="success">Success</option>
                                                <option value="danger">Danger</option>
                                                <option value="info">Info</option>
                                                <option value="pink">Pink</option>
                                                <option value="primary">Primary</option>
                                                <option value="warning">Warning</option>
                                            </select>
                                        </div>
                                    </div>
                                </form>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default waves-effect" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-danger waves-effect waves-light save-category" data-dismiss="modal">Save</button>
                            </div>
                        </div>
                    </div>
                </div>
                
                
               <!-- 목표 매출/순이익 저장 안했을 때 -->
               <div class="container">
                  
                  <!-- Modal -->
                  <div class="modal fade" id="#emptyGoalModal" role="dialog">
                     <div class="modal-dialog modal-sm modal-dialog-centered">
                        <div class="modal-content">
                           <div class="modal-header">
                              <button type="button" class="close" data-dismiss="modal">&times;</button>
                              <h4 class="modal-title">알림</h4>
                           </div>
                           <div class="modal-body">
                              <p>먼저 목표 매출/순이익을 설정해주세요.</p>
                           </div>
                           <div class="modal-footer">
                              <button type="button" class="btn btn-default"
                                 data-dismiss="modal">닫기</button>
                           </div>
                        </div>
                     </div>
                  </div>
               </div>


               <!-- /#add-category -->
            </div>
            <!-- .animated -->
        </div>
        <!-- /.content -->
      </div>
      <!-- /.clearfix -->
      </div>
        <!-- Footer -->
        
        <footer class="site-footer">
            <div class="footer-inner" style="bg-color:#F1F2F7;">
                <div class="row">
                    <div class="col-6">
                        Copyright &copy; 2018 Ela Admin
                    </div>
                    <div class="col-6 text-right">
                        Designed by <a href="https://colorlib.com">Colorlib</a>
                    </div>
                </div>
            </div>
        </footer>
        </div>
  
        <!-- /.site-footer -->

    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!--     <script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
 -->    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/simpleweather@3.1.0/jquery.simpleWeather.min.js"></script>
    <script src="assets/js/init/weather-init.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/moment@2.22.2/moment.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/fullcalendar@3.9.0/dist/fullcalendar.min.js"></script>
    <script src="assets/js/init/fullcalendar-init.js"></script>
    
    
    <!--차-트  -->
<!--    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->
   <script src="https://code.highcharts.com/highcharts.js"></script>
   <script src="https://code.highcharts.com/modules/exporting.js"></script>
   <script src="https://code.highcharts.com/modules/export-data.js"></script>


   <!--Local Stuff-->
    
      <script type="text/javascript">
      jQuery(document).ready(function ($) {
         
         $.ajax({
              type: "post",
              url : "soldoutList.do",
              dataType:'json',
              contentType: "application/x-www-form-urlencoded; charset=UTF-8",
              
              success: function(data) {
                 if(data=="no"){
                    
                   $("#soldoutList").append("");
                }
                else{
                   
                   var table = "<table class='table table-striped table-bordered'>"
                   table += "<th>product</th><th>amount</th><th>price</th>";
                   
                   var soldoutCount = 0;
                   
                   jQuery.each( data, function( i, item) {
                      soldoutCount = i+1;
                      
                      //부족한 재고가 5개까지 띄워지게 설정
                      if(i<5){
                                table += "<tr>\n";
                                  table += "<td>"+item.product+"</td>";
                                  table += "<td>"+item.amount+"</td>";
                                  table += "<td>"+item.price+"</td>";
                                  table += "</tr>\n"
                             }
                      
                      
                   });
                   table +="</table>";
                   
                   $("#soldoutList").append(table);
                   $("#toSoldoutOnly").append("<a href='soldoutAll.do'><i class='fa fa-plus' style='color: orange'></i></a>");
                   $(".soldoutCount").append("(품절이 임박한 재고가 " + soldoutCount +"개 있습니다)");
                }
                 
              },
              error:function(){
                 $("#soldoutList").append("");
              }

         });
         
         
         
         
         
         
      
         var startDate = "<%=startDate %>";
         var endDate1 = "<%=endDate1 %>"; 
         var endDate2 = "<%=endDate2%>";
         var endDate3 = "<%=endDate3%>";
         
         var perWeek = 0;
         console.log(typeof perWeek);
         var perMonth = 0;
         var perYear = 0;
         var perWeek_pure = 0;
         var perMonth_pure = 0;
         var perYear_pure = 0;
         
         var sold_perWeek = 0;
         var sold_perMonth = 0;
         var sold_perYear = 0;
         
         var earned_perWeek = 0;
         var earned_perMonth = 0;
         var earned_perYear = 0;
         
         $.ajax({
         
            type: "post",
            url: "getGoal.do",
            dataType: 'json',
            contentType: "application/x-www-form-urlencoded; charset=UTF-8",
             success: function(data) {
                 var d = data;
                 if(d.msg == "no"){ // Money_Goal db에 데이터 없을 때 : 차트 0으로 초기화.
                   
                   $("#emptyGoalModal").modal();
                   console.log(startDate + ", " + endDate1 + ", " + endDate2 + ", " + endDate3);
                 
                   Highcharts.chart('container', {
                      chart: {
                        type: 'column'
                      },
                      title: {
                        text: '매출 목표 달성률'
                      },
                      xAxis: {
                        categories: [
                          'per week',
                          'per month',
                          'per year'
                        ]
                      },
                      yAxis: [{
                        min: 0,
                        title: {
                          text: '매출액 (원)'
                        }
                      }, {
                        title: {
                          text: '순이익 (원)'
                        },
                        opposite: true
                      }],
                      legend: {
                        shadow: false
                      },
                      tooltip: {
                        shared: true
                      },
                      plotOptions: {
                        column: {
                          grouping: false,
                          shadow: false,
                          borderWidth: 0
                        }
                      },
                      series: [{
                           name: '매출 목표',
                           color: 'rgba(165,170,217,1)',
                           data: [perWeek, perMonth, perYear],
                          //              data: [150, 73, 20],
                           tooltip: {
                                valueSuffix: '원'
                              },
                           pointPadding: 0.3,
                           pointPlacement: -0.2
                      }, {
                           name: '매출 달성액',
                           color: 'rgba(126,86,134,.9)',
                           data: [sold_perWeek, sold_perMonth, sold_perYear],
                           pointPadding: 0.4,
                           pointPlacement: -0.2,
                           tooltip: {
                                valueSuffix: '원'
                              },
                         },{
                        name: '순이익 목표',
                        color: 'rgb(153, 216, 201)',
                        data: [perWeek_pure, perMonth_pure, perYear_pure],
                        tooltip: {
                        //  valuePrefix: '',
                          valueSuffix: '원'
                        },
                        pointPadding: 0.3,
                        pointPlacement: 0.2,
                        yAxis: 1
                      }, {
                        name: '순이익 달성액',
                        color: 'rgb(47, 205, 166)',
                        data: [earned_perWeek, earned_perMonth, earned_perYear],
                        tooltip: {
                        //  valuePrefix: '',
                          valueSuffix: '원'
                        },
                        pointPadding: 0.4,
                        pointPlacement: 0.2,
                        yAxis: 1
                      }]
                    });
                    
                 
                   // 목표 매출/순이익 input 0으로 셋팅해줌
                   $("#perWeek").val(0);
                   $("#perMonth").val(0);
                   $("#perYear").val(0);
                   $("#perWeek_pure").val(0);
                   $("#perMonth_pure").val(0);
                   $("#perYear_pure").val(0);
                   
                   
                   
                 } else { // Money_Goal db에 데이터 있을 때.
                 
                 console.log(data);
                 var goal = data;
                   
                 // JSON VALUE 변수에 저장
                 perWeek = parseInt(goal.perWeek);
                 perMonth = parseInt(goal.perMonth);
                 perYear = parseInt(goal.perYear);
                 
                 perWeek_pure = parseInt(goal.perWeek_pure);
                 perMonth_pure = parseInt(goal.perMonth_pure);
                 perYear_pure = parseInt(goal.perYear_pure);
                 
                 
                 // INPUT에 저장
                 $("#perWeek").val(perWeek);
                 $("#perMonth").val(perMonth);
                 $("#perYear").val(perYear);
                 
                 $("#perWeek_pure").val(perWeek_pure);
                 $("#perMonth_pure").val(perMonth_pure);
                 $("#perYear_pure").val(perYear_pure);
                 
                 console.log(goal);   

                 
             //// 주별, 월별, 연도별 날짜 구간 잘라서 매출, 매입 받아오기
             
            var promise = $.ajax({ // 주간 매출 받아오기
               
               type : "get",
               url : "mainChart.do",
               data : {"startDate" : startDate, "endDate" : endDate1, "id" : "${login.id}", "m_type" : "매출"},
               dataType : "json",
               async : false
            });
            
            promise.done(successFunc);
         //   promise.fail(failFunc);
            
            function successFunc(data) {
               console.log(data);
               sold_perWeek = parseInt(data);
               return sold_perWeek;
            }
            
            
            var promise2 = $.ajax({ // 주간 매출 받아오기
               
               type : "get",
               url : "mainChart.do",
               data : {"startDate" : startDate, "endDate" : endDate2, "id" : "${login.id}", "m_type" : "매출"},
               dataType : "json",
               async : false
            });
            
            promise2.done(successFunc2);
         //   promise.fail(failFunc);
            
            function successFunc2(data) {
               console.log(data);
               sold_perMonth = parseInt(data);
               return sold_perMonth;
            }
            
            var promise3 = $.ajax({ // 주간 매출 받아오기
               
               type : "get",
               url : "mainChart.do",
               data : {"startDate" : startDate, "endDate" : endDate3, "id" : "${login.id}", "m_type" : "매출"},
               dataType : "json",
               async : false
            });
            
            promise3.done(successFunc3);
         //   promise.fail(failFunc);
            
            function successFunc3(data) {
               console.log(data);
               sold_perYear = parseInt(data);
               return sold_perYear;
            }
            
            
            var promise4 = $.ajax({ // 주간 순이익 받아오기
               
               type : "get",
               url : "mainChart.do",
               data : {"startDate" : startDate, "endDate" : endDate1, "id" : "${login.id}", "m_type" : "매입"},
               dataType : "json",
               async : false
            });
            
            promise4.done(successFunc4);
            
            function successFunc4(data) {
               console.log(data);
               earned_perWeek = sold_perWeek - parseInt(data); // 매출-매입 = 순이익.
               return earned_perWeek;
            }
            
            var promise5 = $.ajax({ // 주간 매출 받아오기
               
               type : "get",
               url : "mainChart.do",
               data : {"startDate" : startDate, "endDate" : endDate2, "id" : "${login.id}", "m_type" : "매입"},
               dataType : "json",
               async : false
            });
            
            promise5.done(successFunc5);
         //   promise.fail(failFunc);
            
            function successFunc5(data) {
               console.log(data);
               earned_perMonth = sold_perMonth - parseInt(data);
               return earned_perMonth;
            }
            
            var promise6 = $.ajax({ // 주간 매출 받아오기
               
               type : "get",
               url : "mainChart.do",
               data : {"startDate" : startDate, "endDate" : endDate3, "id" : "${login.id}", "m_type" : "매입"},
               dataType : "json",
               async : false
            });
            
            promise6.done(successFunc6);
         //   promise.fail(failFunc);
            
            function successFunc6(data) {
               console.log(data);
               earned_perYear = sold_perYear - parseInt(data);
               return earned_perYear;
            }
            
                 ////
                 
                 Highcharts.chart('container', {
                   chart: {
                     type: 'column'
                   },
                   title: {
                     text: '매출 목표 달성률'
                   },
                   xAxis: {
                     categories: [
                       'per week',
                       'per month',
                       'per year'
                     ]
                   },
                   yAxis: [{
                     min: 0,
                     title: {
                       text: '매출액 (원)'
                     }
                   }, {
                     title: {
                       text: '순이익 (원)'
                     },
                     opposite: true
                   }],
                   legend: {
                     shadow: false
                   },
                   tooltip: {
                     shared: true
                   },
                   plotOptions: {
                     column: {
                       grouping: false,
                       shadow: false,
                       borderWidth: 0
                     }
                   },
                   series: [{
                        name: '매출 목표',
                        color: 'rgba(165,170,217,1)',
                        data: [perWeek, perMonth, perYear],
                       //              data: [150, 73, 20],
                        tooltip: {
                             valueSuffix: '원'
                           },
                        pointPadding: 0.3,
                        pointPlacement: -0.2
                   }, {
                        name: '매출 달성액',
                        color: 'rgba(126,86,134,.9)',
                        data: [sold_perWeek, sold_perMonth, sold_perYear],
                        pointPadding: 0.4,
                        pointPlacement: -0.2,
                        tooltip: {
                             valueSuffix: '원'
                           },
                      },{
                     name: '순이익 목표',
                     color: 'rgb(153, 216, 201)',
                     data: [perWeek_pure, perMonth_pure, perYear_pure],
                     tooltip: {
                     //  valuePrefix: '',
                       valueSuffix: '원'
                     },
                     pointPadding: 0.3,
                     pointPlacement: 0.2,
                     yAxis: 1
                   }, {
                     name: '순이익 달성액',
                     color: 'rgb(47, 205, 166)',
                     data: [earned_perWeek, earned_perMonth, earned_perYear],
                     tooltip: {
                     //  valuePrefix: '',
                       valueSuffix: '원'
                     },
                     pointPadding: 0.4,
                     pointPlacement: 0.2,
                     yAxis: 1
                   }]
                 });
                 
                 
                 
                 }
              }   
            
         });
         
         
         // 목표 매출/순이익 div 토글
         $("#modifyGoalBtn").click(function () {
            $("#modifyGoalDiv").slideToggle("slow");
         });
      
         
         // 목표 매출/순이익 수정 후 저장 버튼 클릭시 진입
         $("#saveGoalBtn").click(function () {
         
                perWeek = parseInt($("#perWeek").val());
                perMonth = parseInt($("#perMonth").val());
                perYear = parseInt($("#perYear").val());
                perWeek_pure = parseInt($("#perWeek_pure").val());
                perMonth_pure = parseInt($("#perMonth_pure").val());
                perYear_pure = parseInt($("#perYear_pure").val());
                

                $.ajax({
                   
                   type : "post",
                   url : "saveGoal.do",
                   data : {"id" : "${login.id}", "perWeek" : perWeek, "perMonth" : perMonth, "perYear" : perYear, "perWeek_pure" : perWeek_pure, "perMonth_pure" : perMonth_pure, "perYear_pure" : perYear_pure },
                   dataType : "json",
                   async : true,
                   success : function (msg) {
                      if(msg.message == "YES"){
                      alert("저장되었습니다");
//                  $("#modifyGoalDiv").slideToggle('hide');
                  location.reload();
                      } else {
                         
                      }
               }
                });
            
         });
      
         //.차트끝
         
         
         
      /*________________________________쪽지 함수들_____________________________  */
      
      
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
                              
</body>
</html>
 

