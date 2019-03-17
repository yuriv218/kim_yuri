<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">


<%
	int totalRecordCount;	// 전체 글수
	int pageNumber;			// 현재 페이지의 넘버	23 -> 3		0 1 2
	int pageCountPerScreen;	// 스크린당 페이지 수
	int recordCountPerPage;	// 페이지당 글수
	
	String st1 = request.getParameter("totalRecordCount");
	if(st1 == null) totalRecordCount = 0;	
	else			totalRecordCount = Integer.parseInt(st1);

	String st2 = request.getParameter("pageNumber");
	if(st2 == null) pageNumber = 0;	
	else			pageNumber = Integer.parseInt(st2);
	
	String st3 = request.getParameter("pageCountPerScreen");
	if(st3 == null) pageCountPerScreen = 0;	
	else			pageCountPerScreen = Integer.parseInt(st3);
	
	String st4 = request.getParameter("recordCountPerPage");
	if(st4 == null) recordCountPerPage = 0;	
	else			recordCountPerPage = Integer.parseInt(st4);
	
	// 총페이지 수
	int totalPageCount = totalRecordCount / recordCountPerPage;
	//		1 		   =			12	  /	10
	//      		
	// 총 게시글이 24개면 2개의 페이지와 4개의 게시글이 남기때문에 페이지가 1개 더 필요!
	if((totalRecordCount % recordCountPerPage) != 0){
		totalPageCount++;
	}
	
	
	//						  1       2    	  3		 4	
	// 0 1 2 ~ 9			1 ~ 10 11 ~ 20 21 ~ 30   31 ~ 40
	int screenStartPageIndex = ((pageNumber+1) / pageCountPerScreen) * pageCountPerScreen;
	//			0  10          =			9 + 1            10                   10 
	int screenEndPageIndex = (((pageNumber+1) / pageCountPerScreen) * pageCountPerScreen) + pageCountPerScreen;
	//			10  20         = 			9 + 1 / 		10				  10					+ 10		
			
	if(screenEndPageIndex > totalPageCount) screenEndPageIndex = totalPageCount;

	
	if((pageNumber + 1) % pageCountPerScreen == 0){
		screenStartPageIndex = ((pageNumber + 1) / pageCountPerScreen) - pageCountPerScreen;
		screenEndPageIndex = pageNumber + 1;		
	}
	
	/*
	totalRecordCount : 12	<- 예
	pageNumber:0
	pageCountPerScreen : 10
	recordCountPerPage : 10
	totalPageCount : 2
	screenStartPageIndex : 0
	screenEndPageIndex : 2
	
	totalRecordCount : 123	<- 예
	pageNumber:11	<- 현재 페이지
	pageCountPerScreen : 10
	recordCountPerPage : 10
	totalPageCount : 13
	screenStartPageIndex : 10
	screenEndPageIndex : 4
	
	*/
	
	
	
	
	
%>    

<div style="float: left; width:96%; text-align: center;">
	<!-- << -->
	<a href="#none" title="처음페이지" onclick="goPage('0');">
		<span style="color: #32CD32"><img alt="" src="images/communityImg/double-left-chevron.png" width="10px"></span>
	</a>&nbsp;
		<%
		// <
		if(screenStartPageIndex > 1){	// 글의 수가 100개 넘었을 때 보임
			%>
			<a href="#none" title="이전페이지" onclick="goPage('<%=screenStartPageIndex-1 %>')">
		<span style="color: #32CD32"><img alt="" src="images/communityImg/left-arrow-chevron.png" width="10px"></span>
		</a>&nbsp;
			<%
		}
		
		// [1] 2 [3]
		for(int i = screenStartPageIndex;i < screenEndPageIndex; i++){
			if(i == pageNumber){
				%>
				<span style="font-size: 11pt; color: #32CD32; font-weight: bold;">
					<%=i+1 %>	<!-- 현재 페이지 -->
				</span>&nbsp;
				<%
			}else{
				%>
				<a href="#none" title="<%=i+1 %>페이지" onclick="goPage(<%=i %>)" 
					style="font-size: 9pt; color: #000000; font-weight: normal;">
					[<%=i+1 %>]	
				</a>&nbsp;	
				<%
			}			
		}
		if(screenEndPageIndex < totalPageCount){// [1][2] ~ 9[10] 		
			%>
			<a href="#none" title="다음페이지" onclick="goPage(<%=screenEndPageIndex %>)">
					<span style="color: #32CD32"><img alt="" src="images/communityImg/rr.png" width="10px"></span>
			</a>&nbsp;
			<%
		}		 
				
		int end_page = 0;
		if(totalPageCount > 0){
			end_page = totalPageCount - 1;
		}
		%>

	<a href=" #none" title="마지막페이지" onclick="goPage(<%=end_page %>)">
		<span style="color: #32CD32"><img alt="" src="images/communityImg/dr.png" width="10px"></span>
	</a> 
</div>

<div style="float: left; width: 4%; text-align: center;">
	<span style="font-size: 1em; color: #000000">
		<%=pageNumber+1 %>/<%=totalPageCount %>
	</span>
</div>








