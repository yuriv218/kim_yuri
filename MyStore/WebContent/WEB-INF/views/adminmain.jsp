<%@page import="kh.com.c.model.MemberDto"%>
 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>admin.jsp</title>
</head>
<body>
<%-- <%
request.setCharacterEncoding("utf-8");
 Object ologin = session.getAttribute("login");
 if(ologin == null){
		%>
		<script type="text/javascript">
			alert("Login Please");
			location.href = "index.jsp";
		</script>
		<%
		return;
	}
MemberDto mem = (MemberDto)ologin;
 int auth = mem.getAuth();
 if(auth==1){
	%>
	
	
	<% 
	} else {
	%>
 	<script type="text/javascript">
	alert("!권한이 없습니다!");
	location.href = "index.jsp";
	</script>
 <%
}
%>   --%>
 <h1>관리자모드</h1>
 <a href="getMemberlist.do">회원정보 관리</button>
<br><br>
 
<a href="qnalist.do">qnalist</a>

</body>
</html> 