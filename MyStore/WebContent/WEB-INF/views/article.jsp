<%@page import="kh.com.c.model.ArticleParam"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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

<body>
<%
		String search = (String) request.getAttribute("search");
		if (search == null)
			search = "";
		
		String category = (String) request.getAttribute("category");

		
 		// 조건 저장 후 검색 세션 가져오기
		ArticleParam saveSearch = null;
		String _category = "";
		String _search ="";
		String _sort ="";
		if(request.getSession().getAttribute("saveSearch") != null){
		 saveSearch = (ArticleParam)request.getSession().getAttribute("saveSearch");
		 _category = saveSearch.getCategory();
		 _search = saveSearch.getSearch();
		 _sort = saveSearch.getSort();
		}
		
%>
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
                        <a href="question.do" aria-haspopup="true" aria-expanded="false">
                        <i class="menu-icon fa fa-tasks"></i>설문조사</a>
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
									<li><a href="#">관련기사 </a></li>
									<li class="active"></li>
								</ol>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
        
		<!-- /#header -->
		<!-- Content -->
		<div class="content">
		  <div class="animated fadeIn">
	
			<div class="col-md-12">
				<div class="card">
					<div class="card-body">
					<form action="" name="frmForm1" id="_frmFormSearch" method="post">
					 <table class="table table-striped" style="font-size: 13px"> 
                                    <tr>
                                        <td>검색어</td>  
                                        <td><input type="text" id="search" name="search" value="" style="height: 23px;margin-right: 8px"> 
                                         <span style="padding-left: 50px">추천 검색어 : &nbsp;</span>
                                         <a href="#" onclick="recommend('세금')"><span class="badge badge-success">세금</span></a>
                                         <a href="#" onclick="recommend('정책')"><span class="badge badge-success">정책</span></a>
                                         <a href="#" onclick="recommend('소상공인')"><span class="badge badge-success">소상공인</span></a>
                                         <a href="#" onclick="recommend('최저임금')"><span class="badge badge-success">최저임금</span></a>
                                         <a href="#" onclick="recommend('자영업')"><span class="badge badge-success">자영업</span></a>
                                        </td> 
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>검색분야</td>
                                        <td>
                                          <div class="form-check-inline form-check">
                                           			<label for="inline-radio1" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio1" name="category" value="전체" class="form-check-input" checked="checked">전체 &nbsp;&nbsp;
	                                                </label>
	                                                <label for="inline-radio1" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio1" name="category" value="도매업" class="form-check-input">도매업 &nbsp;&nbsp;
	                                                </label>
	                                                <label for="inline-radio2" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio2" name="category" value="소매업" class="form-check-input">소매업 &nbsp;&nbsp;
	                                                </label> 
	                                                <label for="inline-radio3" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio3" name="category" value="부동산매매업" class="form-check-input">부동산매매업&nbsp;&nbsp;
	                                                </label>
	                                                <label for="inline-radio3" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio3" name="category" value="농임어업" class="form-check-input">농 · 임 · 어업&nbsp;&nbsp;
	                                                </label>
	                                                <label for="inline-radio3" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio3" name="category" value="음식점업" class="form-check-input">음식점업&nbsp;&nbsp;
	                                                </label>
	                                                <label for="inline-radio3" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio3" name="category" value="건설업" class="form-check-input">건설업&nbsp;&nbsp;
	                                                </label>
	                                                <label for="inline-radio3" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio3" name="category" value="숙박업" class="form-check-input">숙박업&nbsp;&nbsp;
	                                                </label>
	                                                <label for="inline-radio3" class="form-check-label ">
	                                                    <input type="radio" id="inline-radio3" name="category" value="서비스업" class="form-check-input">서비스업&nbsp;&nbsp;
	                                                </label>
	                                                
                                                </div>
										</td>
                                        <td></td>
                                    </tr>
                                    <tr>
                                        <td>정렬</td>
                                        <td><select id="sort" name="sort" style="width: 200px">
												<option value="최근 순" selected="selected">최근 순</option>
												<option value="오래된 순">오래된 순</option>
												<option value="좋아요 순">좋아요 순</option>
											</select></td>
                                        <td></td> 
                                    </tr>
                            </table>
							<input type="hidden" name="pageNumber" id="_pageNumber" value="${(empty pageNumber)?0:pageNumber }"> 
							<input type="hidden" name="recordCountPerPage" id="_recordCountPerPage" value="${(empty recordCountPerPage)?10:recordCountPerPage }">
							
					</form> 
				 		<div align="center"> 
				 		<button type="button" class="btn btn-success btn-sm" id="_btnSearch">검색</button>
				 		<button type="button" class="btn btn-secondary btn-sm" id="_saveSearch">조건 저장 후 검색</button>
				        </div> 
				        <c:if test="${login.auth eq 1}">
				        <div align="right">
				        <button type="button" class="btn btn-secondary btn-sm" id="Write">기사쓰기</button>
				        </div>  
				        </c:if>     
					</div>
				</div>
			</div>
			
						<div class="row">
							<div class="col-md-12">
								<div class="card">
									<div class="card-body">

										<table class="table" style="text-align: center;">
										
											<colgroup>
												<col width="380">
												<col width="100">
												<col width="100">
											</colgroup>

											<thead>
												<tr>
													<th scope="col" style="text-align: center;">제목</th>
													<th scope="col" style="text-align: center;">작성일</th>
													<th scope="col" style="text-align: center;">좋아요</th>
												</tr>
											</thead>

											<tbody>
											<c:forEach items="${bbslist }" var="bbs" varStatus="vs">
											 <tr class="_hover_tr">
												<td>
													${bbs.title }
												</td>
												<td>
													${fn:substring(bbs.wdate,0,10) }
												</td>
												<td>
													<a href="#" onclick="like(${bbs.seq})"><i class="fa fa-thumbs-o-up" style="color: #1E90FF;"></i></a><span id="${bbs.seq }">${bbs.likeit }</span>
												</td>
											 </tr>	
											</c:forEach>
											</tbody>

										</table>
									<script>
														function like(seq) {
															 $.ajax({
														    	   url:"likeIt.do",
														    	   type:"get",
														    	   data:"seq="+seq,
														    	   success:function(data){
														    	
														    		   alert("좋아요 버튼을 누르셨습니다");
														    			$("#"+seq).html(data);
														    	   },
														    	   error:function(req,sts,err){
														    		   alert("실패");
														    	   }
														    	   
														       });
													 		}
														
														</script>	
												

									<!-- 페이징 처리 -->
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

								

										<script>
											$(document).ready(function() {
												$("._hover_tr").mouseover(function() {
													$(this).children().css("background-color","#F0F5FF");}).mouseout(function() {
														$(this).children().css("background-color","#FFFFFF");
														});
												
												
													
												 
											/* 세션 가져오기 */
											 $('input:radio[name=category]:input[value=<%=_category%>]').attr("checked", true);	 
											 $("#sort option").each(function(){
												    if($(this).val()=='<%=_sort%>'){
												      $(this).attr("selected","selected");  
												    }
												  });
											 $("#search").val("<%=_search%>");
												  
											});

			
											/* 검색을 했을 때 */
											$("#_btnSearch").click(function() {
												$("#_pageNumber").val(0);
												$("#_frmFormSearch").attr({
													"target" : "_self",
													"action" : "article.do"
												}).submit();
											});
											
											/* 조건 저장 후 검색을 했을 때 */
											$("#_saveSearch").click(function() {
												
												$("#_pageNumber").val(0);
												$("#_frmFormSearch").attr({
													"target" : "_self",
													"action" : "article.do?save=save"
												}).submit();
											});

											/* 페이지번호를 클릭 했을 때 */
											function goPage(pageNumber) {
												$("#_pageNumber").val(pageNumber);
												$("#_frmFormSearch").attr({
													"target" : "_self",
													"action" : "article.do"
												}).submit();
											}
											
											/* 추천검색어를 클릭 했을 때 */
											function recommend(word) {
												alert("dd");
												$("#search").val(word);
												$("#_pageNumber").val(0);
												$("#_frmFormSearch").attr({
													"target" : "_self",
													"action" : "article.do"
												}).submit();
											}
											
											/* 글쓰기 */
											$("#Write").click(function() {
											location.href='articleWriteGo.do';
												 
											});
										</script>

									</div>
								</div>
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
 


