<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--><html class="no-js" lang=""><!--<![endif]-->

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>StoreFriend</title>
 	<meta name="description" content="StoreFriend - 소상공인을 위한 장부 관리 사이트">
    <meta name="viewport" content="width=device-width, initial-scale=1">

<%--     <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
<script src="http://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/jquery/jquery.cookie.js"></script>
     --%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/font-awesome@4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/lykmapipo/themify-icons@0.1.2/css/themify-icons.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/pixeden-stroke-7-icon@1.2.3/pe-icon-7-stroke/dist/pe-icon-7-stroke.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flag-icon-css/3.2.0/css/flag-icon.min.css">
<link rel="shortcut icon" href="images/favicon.ico">

<link rel="stylesheet" href="assets/css/cs-skin-elastic.css">
<link rel="stylesheet" href="assets/css/style.css">

<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800' rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
</head>


<body class="bg-dark">

	<div class="sufee-login d-flex align-content-center flex-wrap">
		<div class="container">
			<div class="login-content">
				<div class="login-logo">
					<a href="main2.do"> <img class="align-content" src="images/Slogo.png" alt="">
					</a>
				</div>
				<div class="login-form">
					<form action="loginAf.do" name="frmForm" id="_frmForm" method="post">
						<div class="form-group">
							<label>아이디</label> <input type="text" class="form-control"
								placeholder="Id" id="_userid" name="id" value="" data-msg="ID를">
						</div>
						<div class="form-group">
							<label>패스워드</label> <input type="password"
								class="form-control" placeholder="Password" id="_pwd" name="pwd"
								value="" data-msg="패스워드를">
						</div>

						<button type="submit" class="btn btn-success btn-flat m-b-30 m-t-30" id="_btnLogin">로그인</button>
						<br>
						<input type="button" onclick="goBack()" class="btn btn-secondary btn-flat m-b-30 m-t-30" value="돌아가기">
						<div class="register-link m-t-15 text-center"></div>

						<div class="register-link m-t-15 text-center"><br>
							<p>
								Don't have account ? <a href="regi.do" id="_btnRegi">회원가입</a>
							</p>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<script>
		function goBack() {
			window.history.back();
		}
	</script>
	
	<!-- <script type="text/javascript">
$(document).ready(function() {
	$("#_btnLogin").click(function() {
		var action = $("#_frmForm").attr('action');
		var form_data = {
			user_id: $("#user_id").val(),
			user_pw: $("#_pwd").val(),
			is_ajax: 1
		};
		$.ajax({
			type: "POST",
			url: action,
			data: form_data,
			success: function(response) {
				if(response == 'success') {
					$("#message").html("<p style='color:green;font-weight:bold'>로그인 성공!</p>");
					$("#_frmForm").slideUp('slow');
				}
				else {
					$("#message").html("<p style='color:red'>아이디 또는 비밀번호가 잘못되었습니다.</p>");	
				}
			}
		});
		return false;
	});
});
</script>
 -->

	  <script type="text/javascript">
	  
	   
		  
		  /* $("#_btnLogin").click(function() {
			  
			  
		
			
			   var check = $("form[name=frmForm]").serialize();
			  
			  $.ajax({
				  type:"post",
			  	url:"loginAf.do",
			  	data:check,
			  	dataType: 'json',
			  	error:function(){
	                alert("아이디나 비밀번호를 확인해주세요");
	             },
	             
	             success : function(json){
	                 alert("성공"); 
	             }
			  
			  });  
		  });
			 */

		  
		$("#_btnLogin").click(function() {
			if ($("#_userid").val() == "") {
				alert($("#_userid").attr("data-msg") + " 입력해 주십시오");
				$("#_userid").focus();
			} else if ($("#_pwd").val() == "") {
				alert($("#_pwd").attr("data-msg") + " 입력해 주십시오");
				$("#_pwd").focus();
			} else {
				$("#_frmForm").attr("target", "_self").submit();
			}
		});

		$("#_btnRegi").click(function() {
			location.href = "regi.do";
		});

		$("#_userid").keypress(function(event) {
			if (event.which == "13") {
				event.preventDefault();
				$("#_pwd").focus();
			}
		});

		$("#_pwd").keypress(function() {
			if (event.which == "13") {
				event.preventDefault();
				$("#_btnLogin").click();
			}
		});

		// id저장
	/* 	var user_id = $.cookie("user_id");
		if (user_id != null) {
			$("#_userid").val(user_id);
			$("#_chk_save_id").attr("checked", "checked");
		}

		$("#_chk_save_id").click(function() {
			if ($('input:checkbox[id="_chk_save_id"]').is(":checked")) {
				if ($("#_userid").val() == "") {
					$(this).prop("checked", false);
					alert("아이디를 입력해 주십시오");
				} else {
					$.cookie("user_id", $("#_userid").val(), {
						expires : 7,
						path : '/'
					});
				}
			} else {
				$.removeCookie("user_id", {
					path : '/'
				});
			}
		}); */
	</script> 

	<script src="https://cdn.jsdelivr.net/npm/jquery@2.2.4/dist/jquery.min.js"></script>
	<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.14.4/dist/umd/popper.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/js/bootstrap.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/jquery-match-height@0.7.2/dist/jquery.matchHeight.min.js"></script>
	<script src="assets/js/main.js"></script>

</body>
</html>
