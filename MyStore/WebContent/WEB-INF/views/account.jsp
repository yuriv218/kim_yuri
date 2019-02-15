<%@page import="kh.com.c.model.MemberDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/functions" prefix = "fn" %>
<fmt:requestEncoding value="utf-8"/>      
 <%
MemberDto login =  (MemberDto)request.getAttribute("login");
String id = login.getId(); 
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

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css"> <!--크로스브라우징 지원 스타일링 제공하는 css  -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
    
    <!-- 아이콘 링크 -->
   <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
    <link rel="shortcut icon" href="images/favicon.ico">
    
    
    <link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
    <link rel="stylesheet" href="assets/css/lib/datatable/dataTables.bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/style.css">

    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>
   </head>


<body>
   <!-- Left Panel 사이드바-->
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
                    </li>
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
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i
							class="menu-icon fa fa-map-o"></i>지도</a>
						<ul class="sub-menu children dropdown-menu">
							<li><i class="menu-icon fa fa-sign-in"></i><a href="formsbasic.do">내주변 가게보기</a></li>
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
                    <!--계정 auth=1 (관리자)일 경우  관리자 메뉴 보이게-->
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
    
    
  <!-- Right Panel 상단메뉴 시작-->
	<div id="right-panel" class="right-panel">

		<!-- Header-->
		<header id="header" class="header">
			<div class="top-left">
				<div class="navbar-header">

					<!-- 로고 -->
					<a class="navbar-brand" href="main.do"><img
						src="images/Slogo.png" alt="Logo" height="35px" width="300px"></a>
					<a class="navbar-brand hidden" href="main.do"> <img
						src="images/Slogo.png" alt="Logo"></a> <a id="menuToggle"
						class="menutoggle"><i class="fa fa-bars"></i></a>
				</div>
			</div>


			<div class="top-right">
				<div class="header-menu">
					<div class="header-left">
						<button class="search-trigger"></button>

						<div class="dropdown for-message">
							<button class="btn btn-secondary dropdown-toggle" type="button"
								id="message" data-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">
								<i class="fa fa-envelope"></i>
							</button>
							<div class="dropdown-menu" aria-labelledby="message"
								style="overflow: scroll; width: 400px; height: 450px;">
								<p class="red">쪽지함</p>
								<span id="here"></span>
							</div>
						</div>

						<button class="btn btn-link" type="button" id="message">

							<!-- 세션 정보 없으면 로그인 링크뜨고, 있으면 로그아웃 링크 표시 -->
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
							<a href="mypage.do" class="nav-link"><i
								class="menu-icon fa fa-paper-plane"></i>내 정보</a> <a
								href="qnalist.do" class="nav-link"> <i
								class="menu-icon fa fa-user"></i>문의하기
							</a>

						</div>
					</div>

				</div>
			</div>
		</header>


		<!-------------- 쪽지 Modal1 ---------------------- -->

		<div class="modal fade" id="mediumModal" tabindex="-1" role="dialog"
			aria-labelledby="mediumModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<div>
							<div style="float: left;">
								<h3 class="modal-title" id="mediumModalLabel">제목</h3>
							</div>
							<button type="button" class="close" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
							<div style="float: right; padding-top: 40px">
								<input type="hidden" id="hiddenId" value=""> <img
									class="user-avatar rounded-circle" src="upload/${login.image }"
									alt="User Avatar" width="37px" height="37px" id="_img"> <span
									id="_id" style="padding-left: 5px">아이디</span>
							</div>
						</div>
					</div>
					<div class="modal-body">
						<p id="_content">내용</p>
						<div style="float: right;" id="_date">날짜</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary mb-1"
							data-dismiss="modal" aria-hidden="true">취소</button>
						<button type="button" class="btn btn-success mb-1"
							data-toggle="modal" data-target="#answer" data-dismiss="modal"
							aria-hidden="true" onclick="answer()">답장</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /#header -->


		<!-------------- 쪽지 Modal1 ---------------------- -->

		<div class="modal fade" id="answer" tabindex="-1" role="dialog"
			aria-labelledby="mediumModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-lg" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<div class="modal-title" id="mediumModalLabel"
							style="font-size: 30px">
							<span id="answerId">아이디</span> 님에게
						</div>
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-user"></i>
								</div>
								<input type="text" id="title2" name="username2" placeholder="제목"
									class="form-control">
							</div>
						</div>
						<div class="form-group">
							<div class="input-group">
								<div class="input-group-addon">
									<i class="fa fa-envelope"></i>
								</div>
								<textarea rows="10" cols="30" class="form-control"
									placeholder="내용" id="content2"></textarea>
							</div>
						</div>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-secondary"
							data-dismiss="modal" aria-hidden="true">취소</button>
						<button type="button" class="btn btn-success"
							data-target="#mediumModal" id="answer2">보내기</button>
					</div>
				</div>
			</div>
		</div>



		<!--------------- 여기까지 모든 페이지가 겹치는 부분 ------------------------>



		<!--------------- 내용 시작 ------------------------>
		<div class="clearfix">
			<div class="breadcrumbs">
				<div class="breadcrumbs-inner">
					<div class="row m-0">
						<div class="col-sm-4">
							<div class="page-header float-left">
								<div class="page-title">
									<h1>매입/매출</h1>
								</div>
							</div>
						</div>
						<div class="col-sm-8">
							<div class="page-header float-right">
								<div class="page-title">
									<ol class="breadcrumb text-right">
										<li><a href="main.do">메인</a></li>
										<li><a href="#">거래</a></li>
										<li class="active">매입/매출</li>
									</ol>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

			<div class="content">
				<div class="animated fadeIn">
					<div class="alerts">
						<div class="row">
							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<strong class="card-title">추가하기</strong>
									</div>
									<div class="card-body">
										<form action="newRecordAf.do" method="POST" id="newRecordForm">
											<input type="hidden" id="id" name="id" value="<%=id%>">

											<div class="btn-group btn-group-toggle" data-toggle="buttons">
												<label class="btn btn-secondary active"> 
												<input type="radio" name="m_type" id="purchased" value="매입" autocomplete="off" checked>매입
												</label> 
												<label class="btn btn-secondary"> 
												<input type="radio" name="m_type" id="sold" value="매출" autocomplete="off">매출
												</label>
											</div>	&nbsp;&nbsp;&nbsp;

											<div class="btn-group btn-group-toggle" data-toggle="buttons">
												<label class="btn btn-secondary active"> 
												<input type="radio" name="payment" id="credit" value="카드"autocomplete="off" checked>카드
												</label> 
												<label class="btn btn-secondary">
												<input type="radio" name="payment" id="cash" value="현금" autocomplete="off">현금
												</label>
											</div>


											<br> <br>
											<!-- id가 있어야됨. -->
											<div class="form-group">
												<label for="m_date">날짜</label> 
												<input type="number" class="form-control" id="m_date" name="m_date" placeholder="YYYYMMDD">
											</div>
											<div class="form-group">
												<label for="p_name">상품명</label>
												<input type="text" class="form-control" id="p_name" name="p_name" placeholder="">
											</div>
											<div class="form-group">
												<label for="store">업체명</label>
												<input type="text" class="form-control" id="store" name="store" placeholder="">
											</div>
											<div class="form-group">
												<label for="과세여부">과세여부</label>
												<div class="input-group mb-3">
													<div class="input-group-prepend">
														<div class="input-group-text">
															<input type="checkbox" id="vatChk" name="vatChk">
														</div>
													</div>
													<input type="text" class="form-control" value="체크할 경우 공급가에 포함된 부가세가 표시됩니다." readonly>

												</div>
											</div>


											<div class="form-group">
												<label for="price">단가</label> <input type="number"
													class="form-control" id="price" name="price" placeholder="">
											</div>
											<div class="form-group">
												<label for="amount">수량</label> <input type="number"
													class="form-control" id="amount" name="amount"
													placeholder="">
											</div>

											<div class="form-group">
												<label for="memo">메모</label>
												<textarea class="form-control" id="memo" name="memo"
													rows="3" placeholder="메모를 입력하세요."></textarea>
											</div>
											<div class="form-group">
												<label for="vat">부가세</label> <input type="number"
													class="form-control" id="vat" name="vat" readonly>
											</div>
											<div class="form-group">
												<label for="price_total">공급가</label> <input type="number"
													class="form-control" id="price_total" name="price_total"
													readonly>
											</div>

											<div class="form-group">
												<button type="button" id="newRecordBtn"
													class="btn btn-success save-event waves-effect waves-light">저장하기</button>
											</div>
										</form>

									</div>
								</div>
							</div>


							<div class="col-md-6">
								<div class="card">
									<div class="card-header">
										<strong class="card-title">공제/환급액 계산기</strong>

									</div>

									<div class="card-body">
										<div class="vat">
											<ul class="nav nav-tabs" role="tablist">
												<li role="presentation" class="active"><a href="#tab1"
													aria-controls="tab1" role="tab" data-toggle="tab">환급액
														계산기</a></li>
												<li role="presentation"><a href="#tab2"
													aria-controls="tab2" role="tab" data-toggle="tab">부가세
														신고 및 과세기간</a></li>
												<li role="presentation"><a href="#tab3"
													aria-controls="tab3" role="tab" data-toggle="tab">부가세
														환급시기</a></li>
												<li role="presentation"><a href="#tab4"
													aria-controls="tab4" role="tab" data-toggle="tab">부가세
														환급이란?</a></li>
											</ul>
										</div>

										<div class="tab-content">
											<div role="tabpanel" class="tab-pane active" id="tab1">
												<div class="sec sec1">
													<br>
													<h2>환급액 계산기</h2>
													<div class="sec_wrap">
														<div class="art col-sm-12">
															<br>
															<form action="getPeriod.do" method="get">
																<div class="tit"></div>
																<div class="tit">단위기간</div>
																<div class="form-group">
																	<select class="custom-select" id="period">
																		<option selected>기간을 선택하세요</option>
																		<option value="1">1.1-3.31 (제1기 예정신고)</option>
																		<option value="2">4.1-6.30 (제1기 확정신고)</option>
																		<option value="3">7.1-9.30 (제2기 예정신고)</option>
																		<option value="4">10.1-12.31 (제2기 확정신고)</option>
																	</select>
																</div>
																<br>
																<div class="tit">대상연도</div>
																<div class="form-group">
																	<input type="number" name="year" id="year"
																		class="form-control"><strong>년</strong>

																</div>
																<button type="button" class="btn btn-success"
																	id="calBtn">조회</button>
																<br>
															</form>
															<div class="form-group">
																<br>
																<div class="tit">매출세액</div><span>(Tax amount)</span>&nbsp;&nbsp;
																<span style="color: gray;"><i id="popover"
																	class="far fa-question-circle" data-toggle="popover"
																	title="매출에 포함된 부가세를 표시합니다."
																	data-placement="bottom" data-content=""></i></span><br>
																	
																	 <input type="number" name=""
																	id="soldVAT" class="number_format form-control"
																	readonly><strong>원</strong>
															</div>
															<div class="form-group">
																<br>
																<div class="tit">매입세액</div>
																<span>(Tax amount)</span> 
																&nbsp;&nbsp;
																<span style="color: gray;"><i id="popover"
																	class="far fa-question-circle" data-toggle="popover"
																	title="매입에 포함된 부가세를 표시합니다."
																	data-placement="bottom" data-content=""></i></span><br>
																<input type="number" name=""
																	id="purchasedVAT" class="number_format form-control"
																	readonly><strong>원</strong>
															</div>
														</div>

														<br> <br>
														<div class="clearfix"></div>
														<div class="art col-sm-12">
															<div class="tit">공제액</div> <span>(Tax credit)</span>&nbsp;&nbsp;
																<span style="color: gray;"><i id="popover"
																	class="far fa-question-circle" data-toggle="popover"
																	title="일반과세자의 경우 매출세액-매입세액, 간이과세자의 경우 매입세액 x부가가치율 금액만큼 부가세를 공제받습니다."
																	data-placement="bottom" data-content=""></i></span><br>
															<div class="form-group">
																<input type="number" name="" id="taxCredit"
																	class="number_format form-control" readonly><strong>원</strong>
															</div>
														</div>
														<br>
														<div class="art col-sm-12">
															<div class="tit">환급액</div><span>(Tax refund)</span>&nbsp;&nbsp;
															<span style="color: gray;"><i id="popover"
																	class="far fa-question-circle" data-toggle="popover"
																	title="매입세액이 매출세액보다 클 경우, 일반과세자에 한해 차액을 환급받을 수 있습니다."
																	data-placement="bottom" data-content=""></i></span><br>
															
															<div class="form-group">
																<input type="number" name="" id="taxRefund"
																	class="number_format form-control" readonly><strong>원</strong>
															</div>
														</div>
													</div>
												</div>
											</div>

											<div role="tabpanel" class="tab-pane" id="tab2">
												<div class="sec">
													<br>
													<h2>부가세 신고 및 과세기간</h2>
													<br>
													<div class="sec_wrap2">
														<table class="table table-bordered">
															<thead>
																<tr>
																	<th scope="col" rowspan="2">구분</th>
																	<th scope="col" colspan="2">제1기 과세기간</th>
																	<th scope="col" colspan="2">제2기 과세기간</th>
																</tr>
																<tr>
																	<th scope="col">신고대상</th>
																	<th scope="col">신고납부기한</th>
																	<th scope="col">신고대상</th>
																	<th scope="col">신고납부기한</th>

																</tr>
															</thead>

															<tbody>
																<tr>
																	<th scope="row">예정신고</th>
																	<td>1.1-3.31 거래실적</td>
																	<td>4.25</td>
																	<td>7.1-9.30 거래실적</td>
																	<td>10.25</td>

																</tr>
																<tr>
																	<th scope="row">확정신고</th>
																	<td>4.1-6.30 거래실적</td>
																	<td>7.25</td>
																	<td>10.1-12.31 거래실적</td>
																	<td>1.25</td>

																</tr>

															</tbody>
														</table>
													</div>
												</div>
											</div>

											<div role="tabpanel" class="tab-pane" id="tab3">
												<div class="sec">
													<br>
													<h2>개인사업자 부가세 환급 시기</h2>
													<div class="sec_wrap2">
														<br>
														<div>
															<p>
																A. 일반환급 : 확정신고기한이 지난 후 30일 이내 예정신고(4월,10월)시 발생하는 환급세액은
																예정신고 시 환급되지 않고 확정신고(1월, 7월)시 납부할 세액에서 정산됩니다.<br> <br>
																ex) 10월 예정신고 시 발생한 환급세액 : 50만 1월 확정신고 시 발생한 납부할 세액 :
																40만원 인 경우, 1월 확정신고 시 30일 내 10만원 (50만원- 40만원) 을 환급 받게
																됩니다. <br> <br> B. 조기환급 :조기환급신고기한이 지난 후 15일 이내
															</p>

														</div>
													</div>
												</div>
											</div>
											<div role="tabpanel" class="tab-pane" id="tab4">
												<div class="sec">
													<br>
													<h2>부가세 환급이란?</h2>
													<div class="sec_wrap2">
														<br>
														<p>
															부가세 환급이란,<br> 부가가치세를 신고할 때 매입세액이 매출세액보다 많은 경우에 발생한
															환급세액을 말합니다.<br> 부가세환급이 발생한 경우, 관할세무서에서는 각 과세기간별로 그
															과세기간에 대한 환급세액을 사업자에게 지급합니다.
														</p>
														<br> <br> <br>
														<h2>부가가치세란?</h2>
														<br>
														<p>부가가치세란 상품(재화)의 거래나 서비스(용역)의 제공과정에서 얻어지는 부가가치(이윤)에
															대하여 과세하는 세금이며, 사업자가 납부하는 부가가치세는 매출새액에서 매입세액을 차감하여 계산합니다.</p>
														<p>부가가치세 = 매출세액 - 매입세액
														<p>
														<p>부가가치세는 물건값에 포함되어 있기 때문에 실지로는 최종소비자가 부담하는 것입니다. 이렇게
															최종 소비자가 부담한 부가가치세를 사업자가 세무서에 납부하는 것 입니다.</p>
														<p>그러므로, 부가가치세 과세대상 사업자는 상품을 판매하거나 서비스를 제공할 때 거래금액에
															일정금액의 부가가치세를 징수하여 납부해야 합니다.</p>
													</div>
												</div>
											</div>
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
										<div class="card-header">
											<strong class="card-title">거래 목록보기</strong>
										</div>
										<div class="card-body">
											<div class="col-sm-12 col-md-12" align="right">
												<button type="button" class="btn btn-light"
													data-toggle="modal" data-target="#addGoalModal">목표매출/순이익
													설정</button>
											</div>
											<br>
											<table id="bootstrap-data-table"
												class="table table-striped table-bordered">
												<thead>
													<tr>
														<th>번호</th>
														<th>거래분류</th>
														<th>거래수단</th>
														<th>날짜</th>
														<th>상품명</th>
														<th>업체명</th>
														<th>단가</th>
														<th>수량</th>
														<th>부가세</th>
														<th>공급가</th>
														<th>메모</th>

														<th>수정</th>
														<th>삭제</th>


													</tr>
												</thead>
												<tbody>
													<c:if test="${empty account }">
														<tr>
															<td colspan="13"><div align="center">거래내역이
																	없습니다</div></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
															<td style="display: none;"></td>
														</tr>
													</c:if>

													<!--for(MoneyDto record : account)  vs.count-->
													<c:forEach items="${account }" var="record" varStatus="vs">


														<tr>
															<td>${record.seq }</td>
															<td>${record.m_type }</td>
															<td>${record.payment }</td>
															<td>${fn:substring(record.m_date,0,10) }</td>
															<td>${record.p_name }</td>
															<td>${record.store }</td>
															<td>${record.price }</td>

															<td>${record.amount }</td>
															<td>${record.vat }</td>
															<td>${record.price_total }</td>
															<td>${record.memo }</td>
															<td><input type="button" id="modifyBtn"
																class="btn btn-secondary btn-sm" data-toggle="modal"
																data-target="#modifyModal" value="수정"></td>
															<td><input type="button" data-toggle="modal"
																data-target="#deleteModal" id="deleteModalBtn"
																class="btn btn-secondary btn-sm" value="삭제"></td>

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
					<!-- .content -->
				</div>
			</div>
			<!-- .alerts -->

		</div>
		<!-- .animated -->
	</div>
	<!-- .content -->

	</div>
	<!--.clearfix  -->


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


    </div><!-- /#right-panel -->


<!-- 목표 매출/순이익 설정 modal  -->
<div class="modal fade none-border" id="addGoalModal">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<strong>목표 매출/순이익 설정</strong>
					</h4>
				</div>
				<form action="saveGoal.do" method="post">
					<div class="modal-body">
						<input type="hidden" id="id_" name="id" value="<%=id%>">

						<div class="form-row">
							<div class="col">
								<label for="validationTooltip01">주간 매출 목표액</label> 
								<input type="number" id="perWeek" name="perWeek" class="form-control">&nbsp;&nbsp;
							</div>
							<div class="col">
								<label for="validationTooltip02">월간 매출 목표액</label>
								<input type="number" id="perMonth" name="perMonth" class="form-control">&nbsp;&nbsp;
							</div>
							<div class="col">
								<label for="validationTooltip03">연간 매출 목표액</label> 
								<input type="number" id="perYear" name="perYear" class="form-control">
							</div>
							<br> <br>
						</div>

						<div class="form-row">
							<div class="col">
								<label for="validationTooltip04">주간 순이익 목표액</label> 
								<input type="number" id="perWeek_pure" name="perWeek_pure" class="form-control">&nbsp;&nbsp;
							</div>
							<div class="col">
								<label for="validationTooltip05">월간 순이익 목표액</label> 
								<input type="number" id="perMonth_pure" name="perMonth_pure" class="form-control">&nbsp;&nbsp;
							</div>
							<div class="col">
								<label for="validationTooltip06">연간 순이익 목표액</label>
								<input type="number" id="perYear_pure" name="perYear_pure" class="form-control">
							</div>
							<br>
						</div>

					</div>

					<div class="modal-footer">
					<button type="button" id="saveBtn0" class="btn btn-success save-event waves-effect waves-light">저장하기</button>
					<button type="button" class="btn btn-secondary waves-effect"
						data-dismiss="modal">취소</button>

					</div>
				</form>
			</div>
		</div>
	</div>
	
	
<!-- 수정하기 modal -->
	<div class="modal fade none-border" id="modifyModal">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
					<h4 class="modal-title">
						<strong>수정하기</strong>
					</h4>
				</div>
				<form action="updateRecord.do" method="get">	
				<div class="modal-body">
						<input type="hidden" id="id_" name="id" value="<%=id%>">

						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-secondary active"><input type="radio" name="m_type_" id="purchased_" value="매입" autocomplete="off" checked>매입</label>
							 <label	class="btn btn-secondary"> <input type="radio" name="m_type_" id="sold_" value="매출" autocomplete="off">매출
							</label>
						</div>&nbsp;&nbsp;&nbsp;
						<div class="btn-group btn-group-toggle" data-toggle="buttons">
							<label class="btn btn-secondary active">
								<input type="radio" name="payment_" id="credit_" value="카드" autocomplete="off" checked>카드</label> 
							<label class="btn btn-secondary"> 
								<input type="radio" name="payment_" id="cash_" value="현금" autocomplete="off">현금</label>
						</div>
						
						<br>
						<br>
						<!-- id가 있어야됨. -->
						<div class="form-group">
							<label for="m_date">날짜</label> <input type="text" class="form-control" id="m_date_" name="m_date" value="" readonly>
						</div>
						<div class="form-group">
							<label for="p_name">상품명</label> <input type="text"	class="form-control" id="p_name_" name="p_name" placeholder="">
						</div>
						<div class="form-group">
							<label for="store">업체명</label> <input type="text" class="form-control" id="store_" name="store" placeholder="">
						</div>
						<div class="form-group">
							<label for="vatChk">과세여부</label>	
									<div class="input-group mb-3">
										<div class="input-group-prepend">
											<div class="input-group-text">
												<input type="checkbox" id="vatChk_" name="vatChk_">
											</div>
										</div>
									 <input type="text" class="form-control" aria-label="Text input with checkbox" value="체크할 경우 공급가에 포함된 부가세가 표시됩니다." readonly>
												
								</div>	
						</div>
						<div class="form-group">
							<label for="amount">수량</label> <input type="number" class="form-control" id="amount_" name="amount" placeholder="">
						</div>
						<div class="form-group">
							<label for="price">단가</label> <input type="number" class="form-control" id="price_" name="price" placeholder="">
						</div>
						<div class="form-group">
							<label for="price">부가세</label> <input type="number" class="form-control" id="vat_" name="price" readonly>
						</div>
						<div class="form-group">
							<label for="price">공급가</label> <input type="text" class="form-control" id="price_total_" name="price" readonly>
						</div>
						<div class="form-group">
							<label for="memo">메모</label>
							<textarea class="form-control" id="memo_" name="memo" rows="3" placeholder="메모를 입력하세요."></textarea>
						</div>
					

				</div>

				<div class="modal-footer">
					<button type="button" id="saveBtn"
						class="btn btn-success save-event waves-effect waves-light">저장하기</button>
					<button type="button" class="btn btn-secondary waves-effect" data-dismiss="modal">취소</button>
				</div>
				</form>
			</div>
		</div>
	</div>

<!-- 삭제 대화창 Modal -->
<div class="modal" id="deleteModal" tabindex="-1" role="dialog">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
    <div class="modal-header" hidden="true"></div>
      <div class="modal-body">
      	<div class="para" align="center">
        <p>삭제된 내용은 복구되지 않습니다.삭제하시겠습니까?</p>
        </div><br><br>
        <div class="buttongroup" align="right">
        <button type="button" id="deleteBtn" class="btn btn-success">삭제</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">취소</button>
		</div>
      </div>
      <div class="modal-footer" hidden="true">
      </div>
    </div>
  </div>
</div>




    <!-- Right Panel -->

    <!-- Scripts -->
   
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


	<script type="text/javascript">
      
	jQuery(document).ready(function($) {
	          $('#bootstrap-data-table-export').DataTable();
	         
	          // 세션으로부터 id, 가입시 선택한 업종별 부가가치율 가져옴.
	          var id = "<%=id %>";
	          var vat_ratio ="<%=login.getVat_ratio()%>"; 

	          
	          
	          
	/*___________________ (거래추가시) 저장 버튼 클릭시 진입__________________ */
  	$("#newRecordBtn").click(function() {
  	
  		// input 입력값들을 alldata에 저장
  			
  			var m_type =  $("input[name='m_type']:checked").val();
  			var payment = $("input[name='payment']:checked").val(); 			
  			var m_date = $("#m_date").val();
  			var p_name = $("#p_name").val();
  			var store = $("#store").val();
  			
  			var price = parseInt($("#price").val(), 10);
  			var amount = parseInt($("#amount").val(), 10);  			
  			var memo = $("#memo").val();
  			
  			var vat;
  			var price_total;
  			
  		
  			
  		  if($('input[name=vatChk]').prop("checked")==true){
			
				 // 과세 버튼 on
  				alert("vatChk checked : 과세 O");
  				alert(vat_ratio);
  				alert(price + ", " + amount + ", " + price_total);
  				
  				if(vat_ratio=="1"){ // 일반과세자
  					alert("일반과세자");
  					vat = parseFloat(price*amount*0.1); //// 부가세 = 단가*수량*세율(10%)
  	  				price_total = parseInt(price*amount); // 공급가 = 단가*수량+부가세 
  	  				$("#vat").val(vat);
  	  				$("#price_total").val(price_total);
  	  				
  				} else { // 간이과세자
  					alert("간이과세자");
  					var vat_ratio_ = parseFloat(vat_ratio/100);
  					alert(vat_ratio_);
  					vat = parseInt(price*amount*0.1*vat_ratio_); // 부가세 = 단가*수량*세율(10%)*간이과세자일 경우 부가가치율(5~30%)  
  					price_total = parseInt(price*amount); // 공급가 = 단가*수량+부가세 
  					$("#vat").val(vat);
  					$("#price_total").val(price_total);
  				}
  				
  			} else { // 과세 x
  				
  				alert("vatChk not checked : 과세X");
  				vat = 0; 
  				price_total = price*amount; // 공급가 = 단가*수량
  				$("#vat").val(vat);
  				$("#price_total").val(price_total);
  			}
  
  	
  				
  		 	var alldata = {
  					"id" : id,
  				"m_type" : m_type,
  				"m_date" : m_date,
  				"p_name" : p_name,
  				"store" : store,
  				"payment" : payment,
  				"price" : price,
  				"amount" : amount,	
  				"memo" : memo,
 				"vat" : vat,
 				"price_total" : price_total,
 				 
  		 	};
  			
  			console.log('alldata : ', alldata);	
  		 	
  		$.ajax({
  				type : "post",
  				url : "newRecordAf.do",
  				data : alldata,
  				dataType : "json",
  			//	contentType: "application/x-www-form-urlencoded", 
  				async : true,
  				success : function(msg) {
  					console.log(msg);
  					if (msg.message == "YES") {
  							console.log(msg);
  							alert("성공적으로 추가되었습니다");
  						
  							location.reload();
  						//	$("#newRecordForm input").val('');
  					} else {
  						alert("실패");
  					}
  				}

  				});

	});
  			
  	/* _________________공제환급금 계산기->단위기간 선택시 ____________________*/
		
			var year;
			var startDate;
			var endDate;
  	
		$("select.custom-select").change(function () {
			var selectedP = $(this).children("option:selected").val();
			
			$("#year").change(function () {
				
				year = $("#year").val();
				console.log("year : " + year);

			if(selectedP == "1"){
				alert("1.1-3.31 거래실적");	
				startDate = year+"-01-01";
				endDate = year+"-03-31";
			} else if(selectedP == "2"){
				alert("4.1-6.30 거래실적");	
				startDate = year+"-04-01";
				endDate = year+"-06-30";
			
			} else if(selectedP == "3"){
				alert("7.1-9.30 거래실적");	
				startDate = year+"-07-01";
				endDate = year+"-09-30";
			
			} else {
				alert("10.1-12.31 거래실적");
				startDate = year+"-10-01";
				endDate = year+"-12-31";
			}
			
	
		/* _________________공제환급금 계산기->조회 버튼 클릭시 진입 ____________________*/
						
		$(document).on("click", "#calBtn", function () {
			
			var id = "${login.id}";
			console.log("id : " + id + ", startDate : " +startDate + ", endDate : " + endDate);
			
			// 매출세액 구하기
			$.ajax({
				
				type : "get",
  				url : "getVat.do",
  				data : {"m_type" : "매출", "startDate" : startDate, "endDate" : endDate, "id" : id},
  				dataType : "json",
  			//	contentType: "application/x-www-form-urlencoded", 
  				async : true,
  				success : function(vat) {
  					console.log(vat);
  					if (vat !=0) {
  							console.log(vat);
  							var v = vat;
  							$("#soldVAT").val(v);
  						
  					} else { // vat=0일때
 						$("#soldVAT").val("0");
  					}
  				}
				
			});
			
		
			// 매입세액 구하기
	 		$.ajax({
				
				type : "get",
  				url : "getVat.do",
  				data : {"m_type" : "매입", "startDate" : startDate, "endDate" : endDate, "id" : id},
  				dataType : "json",
  			//	contentType: "application/x-www-form-urlencoded", 
  				async : true,
  				success : function(vat) {
  					console.log(vat);
  					if (vat != 0) {
  							console.log(vat);
  							var v = vat;
  							$("#purchasedVAT").val(v);
  							
  							/*______________공제액 / 환급액 구하기 ________________  */
  							//간이과세자(5%~30%)는 환급 없음. 일반과세자(10%)만 환급됨. 공제는 둘 다 가능. 공제액 : 일반과세자는 매출세액-매입세액, 간이과세자는 매입세액*부가가치율임
  							
  							var vatratio = parseFloat("<%=login.getVat_ratio() %>"/100);  /* 과세유형 */ 
  							console.log(vatratio);
  							
  							var purchasedVAT = parseInt($("#purchasedVAT").val()); // 매입세액
  							var soldVAT = parseInt($("#soldVAT").val()); // 매출세액
							var refund = purchasedVAT-soldVAT;	// 환급액   =  매입세액 > 매출세액일 경우 차액만큼을 환급.(일반과세자일 경우에 한함. 간이과세자는 환급 x, 공제만 가능)
  							var credit = soldVAT-purchasedVAT;  // 공제액   =   매출세액 - 매입세액, 부가가치세액을 '공제'='감액'			
  							
  							
  							if(vatratio!=0.1){ // 간이과세자일 때
  								
  								$("#taxRefund").val("간이과세자는 환급이 불가합니다.");
  								$("#taxCredit").val(purchasedVAT*vatratio);
  								
  							} else { // 일반과세자일 때
  								
  								if(purchasedVAT>soldVAT){ // 매입세액이 매출세액보다 클 때
  	  	  	  						$("#taxRefund").val(refund);
  	  	  	  						
  	  							} else { // 매출세액이 매입세액과 같거나 매입세액보다 클 때
  	  								$("#taxRefund").val("0");
  		  	  						$("#taxCredit").val(credit);	
  	  							}
  							}
  							
  							
  							
  					} else { // vat=0일 때		
  						$("#purchasedVAT").val("0");
  					
  					}
  				}
  				
			}); 
			
			
			
		});		
	});
});
	
  	  		/* _________________거래목록->목표 매출/순이익 저장버튼 클릭시 진입 ____________________*/
		
  	  		$(document).on("click", "#saveBtn0", function () {
				
  	  			var id = "<%=id %>";
  	  			var perWeek = parseInt($("#perWeek").val());
  	  			var perMonth = parseInt($("#perMonth").val());
  	  			var perYear = parseInt($("#perYear").val());
  	  			var perWeek_pure = parseInt($("#perWeek_pure").val());
  	  			var perMonth_pure = parseInt($("#perMonth_pure").val());
  	  			var perYear_pure = parseInt($("#perYear_pure").val());
  	  			
  	  			
  	  			$.ajax({
  	  				
  	  				type : "post",
  	  				url : "saveGoal.do",
  	  				data : {"id" : id, "perWeek" : perWeek, "perMonth" : perMonth, "perYear" : perYear, "perWeek_pure" : perWeek_pure, "perMonth_pure" : perMonth_pure, "perYear_pure" : perYear_pure },
  	  				dataType : "json",
  	  				async : true,
  	  				success : function (msg) {
  	  					if(msg.message == "YES"){
  	  					alert("저장되었습니다");
						$("#addGoalModal").modal("hide");
						location.reload();
  	  					} else {
  	  						
  	  					}
					}
  	  			});
			});
		
		
		
  			/* _________________거래목록->수정 버튼 클릭시 진입 ____________________*/
  			
  			$(document).on("click", "#modifyBtn", function () {
				var btn = $(this);
				var tr = btn.parent().parent();
				var td = tr.children();
				console.log(tr.text());
				console.log(td.eq(8).text());
				
				// 테이블 td value를 ->  modal input value에 뿌림
				$("#m_type_").val(td.eq(1).text());
				$("#payment_").val(td.eq(2).text())
				$("#m_date_").val(td.eq(3).text());
				$("#p_name_").val(td.eq(4).text());
				$("#store_").val(td.eq(5).text());
				if(td.eq(8).text()!="0"){ // vat가 0이 아니면 = 과세 O
					$("#vatChk_").prop("checked", true); // 과세여부 체크.					
					
				} else {
					$("#vatChk_").prop("checked", false); // 과세여부 체크.		
				}
				$("#price_").val(td.eq(6).text());
				$("#amount_").val(td.eq(7).text());
				$("#vat_").val(td.eq(8).text());
				$("#price_total_").val(td.eq(9).text());
				$("#memo_").val(td.eq(10).text());
				
				
			
  		  		
						// 수정창에서 저장버튼 누를 시 진입
  						$("#saveBtn").click(function () {    

  				  			
  				  			// input value alldata에 저장
  				  			var seq = parseInt(td.eq(0).text());
  				  			var id = "<%=id%>";
  				  			var m_type =  $("input[name='m_type_']:checked").val();
  				  			var payment = $("input[name='payment_']:checked").val();
  				  			var m_date = td.eq(3).text();
  		  					var p_name = $("#p_name_").val();
  				  			var store = $("#store_").val();
  				  			var price = $("#price_").val();
  	  				  		var amount = $("#amount_").val();
  	  				  		var vat;
  	  				  		var price_total;
  				  		//	var vat = $("#vat_").val();
  				  		//	var price_total = $("#price_total_").val();
  	  				  		var memo = $("#memo_").val();
  				  			
  	  				  		
  	  					// 새로 수정된 가격, 수량에 따라 부가세, 공급가 다시 계산
  	  					if($('input[name=vatChk_]').prop("checked")==true){ // 과세 버튼 on
  	  		  	  				alert("vatChk checked : 과세 O");
  	  		  	  				alert(vat_ratio);
  	  		  	  				alert(price + ", " + amount + ", " + price_total);
  	  		  	  				
  	  		  	  				if(vat_ratio=="1"){ // 일반과세자
  	  		  	  					alert("일반과세자");
  	  		  	  					vat = parseFloat(price*amount*0.1); //// 부가세 = 단가*수량*세율(10%)
  	  		  	  	  				price_total = parseInt(price*amount); // 공급가 = 단가*수량+부가세 
  	  		  	  	  				$("#vat").val(vat);
  	  		  	  	  				$("#price_total").val(price_total);
  	  		  	  	  				
  	  		  	  				} else { // 간이과세자
  	  		  	  					alert("간이과세자");
  	  		  	  					var vat_ratio_ = parseFloat(vat_ratio/100);
  	  		  	  					alert(vat_ratio_);
  	  		  	  					vat = parseInt(price*amount*0.1*vat_ratio_); // 부가세 = 단가*수량*세율(10%)*간이과세자일 경우 부가가치율(5~30%)  
  	  		  	  					price_total = parseInt(price*amount); // 공급가 = 단가*수량+부가세 
  	  		  	  					$("#vat").val(vat);
  	  		  	  					$("#price_total").val(price_total);
  	  		  	  				
  	  		  	  				}
  	  		  	  				
  	  		  	  			} else { // 과세 x
  	  		  	  				alert("vatChk not checked : 과세X");
  	  		  	  				vat = 0; 
  	  		  	  				price_total = price*amount; // 공급가 = 단가*수량
  	  		  	  				$("#vat").val(vat);
  	  		  	  				$("#price_total").val(price_total);
  	  		  	  			}
  	  		  	  
  	  		  		
  	  				  		// 수정 데이터를 alldata에 저장
  				  		 	var alldata = {
  	  				  				"seq" : seq,
  				  					"id" : id,
  				  				"m_type" : m_type,
  				  				"payment" : payment,
  	  				  	//		"m_date" : m_date,
  				  				"p_name" : p_name,
  				  				"store" : store,
  				  				"price" : price,
  				  				"amount" : amount,
  				  				"vat" : vat,
  				  				"price_total" : price_total,
  				  				"memo" : memo
  				  			};
  				  			
  				  			console.log('alldata : ', alldata);
  				  		 
  				  		 	
  				  		$.ajax({
  				  				type : "get",
  				  				url : "updateRecord.do",
  				  				data : alldata,
  				  				contentType: "application/x-www-form-urlencoded", 
  				  				dataType : "json",
  				  				async : true,
  				  				success : function(msg) {
  				  					if (msg.message == "YES") {
  				  							alert("성공적으로 수정되었습니다 : " + alldata);
  				  							$("#modifyModal").modal("hide");
  				  							location.reload();
  				  					} else {
  				  						alert("실패");
  				  					}
  				  				}

  				  				});

  						});

  		 
  			});
  				

  			/* _______________테이블 삭제 버튼 클릭시 진입__________________ */
  			$(document).on("click", "#deleteModalBtn", function () {
  			
  				var id_ = "<%=id %>";
  				var btn_ = $(this);
				var tr_ = btn_.parent().parent();
				var td_ = tr_.children();
				
				var seq =parseInt(td_.eq(0).text());
  					
  				var alldata = {
		  					"id" : id_,
		  					"seq" : seq
		  			};
  				
				console.log(id_ + ",  " + seq);  				
  				
				// 모달 내 삭제 버튼 클릭시 진입 
  					$("#deleteBtn").click(function () {
						
					
			  		$.ajax({
			  				type : "get",
			  				url : "deleteRecord.do",
			  				data : alldata,
			  				contentType: "application/x-www-form-urlencoded", 
			  				async : true,
			  				success : function(msg) {
			  					if (msg.message == "YES") {
			  							$("#deleteModal").modal("hide");
			  							alert("삭제되었습니다");
			  							location.reload();
			  					} else {
			  						alert("실패");
			  						$("#deleteModal").modal("hide");
			  					}
			  				}

			  				});
				});
  			
  		});
  		
		  
		  
		  
		  /*_______________파일 내보내기 ________________  */
		  $('#bootstrap-data-table').DataTable( {
	          
	             dom: 'Bfrtip',
	             "searching": false,
	             "paging": false,
	             "bInfo": false,
	          buttons: [
	                {
	                   extend: 'csv',
	                   charset: 'UTF-8',
	                   fieldSeparator:'',
	                   bom: true,
	                   filename: '거래목록',
	                   title: '${login.id } 거래 목록',
	                   className :"btn btn-success",
	       
	                },
	                
	                {
	                    extend: 'excel',
	                    charset: 'UTF-8',
	                    fieldSeparator: '   ',
	                    bom: true,
	                    filename: '거래목록',
	                    title: '${login.id } 거래 목록',
	                    className :"btn btn-success",
	             
	                 },
	                
	                {
	                    extend: 'print',
	                    charset: 'UTF-8',
	                    fieldSeparator: '   ',
	                    bom: true,
	                    filename: '거래목록',
	                    title: '${login.id } 거래목록',
	                    className :"btn btn-success",
	              
	                 }
	            ]
	         });
		  
		  
		  
		  
		  
			
			<!-- 쪽지 함수들! -->
	
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
