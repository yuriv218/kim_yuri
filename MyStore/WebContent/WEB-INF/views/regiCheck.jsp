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
 <title>Store Friend</title>
<meta name="description" content="Ela Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
  <link rel="shortcut icon" href="images/favicon.png">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/normalize.css@8.0.0/normalize.min.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP" crossorigin="anonymous">
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
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<style type="text/css">
#chkMsg {
   font-size: 1.0em;
}
</style>

</head>
<body class="bg-dark">

   <div class="sufee-login d-flex align-content-center flex-wrap">
      <div class="container">
         <div class="login-content">
            <div class="login-logo">
               <a href="main2.do"> <img class="align-content"
                  src="images/Slogo.png" alt="">
               </a>
            </div>
            <div class="login-form">
               <form action="regi.do" id="_frmForm" name="frmForm">
                  <div class="form-group">
                	메일을 전송하였습니다. 확인 시 가입이 완료됩니다.
                  </div>

			

                  <!-- <a href="#" id="_btnRegi" class="btn btn-primary btn-flat m-b-30 m-t-30"> Register</a> -->
                <input type="submit" id="_btnRegi"
                     class="btn btn-primary btn-flat m-b-30 m-t-30"
                     style="background-color: #32B16C;" value="회원가입">
                     <input type="button" onclick="goBack()"
                     class="btn btn-secondary btn-flat m-b-30 m-t-30"
                     style="background-color: #91989e !important;" value="돌아가기">
                  <div class="register-link m-t-15 text-center"></div>
                  
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