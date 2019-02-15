<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

	<!-- 이미지 슬라이더 -->
    <link href="css/full-slider.css" rel="stylesheet">
    
   <style>
    ul li a.dropdown-toggle {
    pointer-events: none;
    cursor:not-allowed;
 }
 
     .singlemenu {
    pointer-events: none;
    cursor:not-allowed;
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
						<i class="menu-icon fa fa-bars"></i>매출관리
						</a>
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
						<a class="singlemenu" href="stock.do" aria-haspopup="true" aria-expanded="false">
						<i class="menu-icon fa fa-tasks"></i>재고관리</a>
					<li class="menu-item-has-children dropdown">
						<a class="singlemenu" href="customer.do" aria-haspopup="true" aria-expanded="false"> 
						<i class="menu-icon fa fa-th"></i>거래처관리</a>
					</li>

					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						<i class="menu-icon fa fa-users"></i>커뮤니티
						</a>

						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-sign-in"></i>
							<a href="datatable.do?category=자유게시판">자유게시판</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i>
							<a href="datatable.do?category=음식업">음식업</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i>
							<a href="datatable.do?category=서비스업">서비스업</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i>
							<a href="datatable.do?category=제조업">제조업</a></li>
							<li><i class="menu-icon fa fa-sign-in"></i>
							<a href="datatable.do?category=도소매업">도소매업</a></li>
						</ul>
					</li>

					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 
						<i class="menu-icon fa fa-map-o"></i>지도
						</a>

						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-sign-in"></i><a href="formsbasic.do">내주변 가게보기</a></li>
						</ul>
					</li>


					<li class="menu-item-has-children dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i
							class="menu-icon fa fa-id-card-o"></i>마이페이지</a>

						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-user"></i><a href="mypage.do">내정보</a></li>
							<li><i class="menu-icon fa fa-paper-plane"></i><a href="qnalist.do">문의하기</a></li>
						</ul>
					</li>

				</ul>
			</div>
			<!-- /.navbar-collapse -->
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
					<a class="navbar-brand" href="main2.do"><img src="images/Slogo.png" alt="Logo" height="35px" width="300px"></a>
					<a class="navbar-brand hidden" href="main2.do"><img src="images/Slogo.png" alt="Logo"></a> 
						<a id="menuToggle" class="menutoggle"><i class="fa fa-bars"></i></a>
				</div>
			</div>
			<div class="top-right">
				<div class="header-menu">
					<div class="header-left">
						<button class="search-trigger"></button>

						<button class="btn btn-link" type="button" id="message">
							<a href="login.do">Login</a>
						</button>
					</div>
				</div>
			</div>
		</header>


		<!--------------- 여기까지 모든 페이지가 겹치는 부분 ------------------------>
        <!--------------- 내용 시작 ------------------------>  
        <!-- /#header -->
        <!-- Content -->
   
    
    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item active" style="background-image: url('images/slider1.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>정말 쉬운 장부관리</h3>
              <p>손쉽게 수입과 지출을 기록하세요</p>
            </div>
          </div>
          <!-- Slide Two - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('images/slider0.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>한눈에 들어오는 통계</h3>
              <p>스토어프렌즈는 다양한 통계를 제공합니다</p>	
            </div>
          </div>
          <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="background-image: url('images/slider5.jpg')">
            <div class="carousel-caption d-none d-md-block">
              <h3>커뮤니티</h3>
              <p style="color: white;">우리동네 소상공인과 이야기해요</p>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>
    </header>

     
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
 --><script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
    <script src="assets/js/main.js"></script>

										
</body>
</html>
 


