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
               <form action="" id="_frmForm" name="frmForm">
                  <div class="form-group">
                     <label>아이디</label> <input type="text" name="id" id="_userid"
                        data-msg="아이디를 " class="has-success form-control"
                        placeholder="아이디 입력" oninput="idCheck()" data-msg="아이디를 "> <span
                        id="chkMsg"></span>
                     <!-- <span id="idCount"></span> -->
                  </div>

                  <div id="pwDiv" class="form-group has-feedback">
                     <label class="control-label" for="inputError2">비밀번호</label> <input
                        type="password" class="form-control" id="pw" name="pw"
                        aria-describedby="inputError2Status" placeholder="비밀번호 입력" data-msg="비밀번호를 "> <span id="pwChk"
                        class="glyphicon form-control-feedback" aria-hidden="true"></span>
                     <span id="inputError2Status" class="sr-only">(error)</span> <span
                        class="fade" style="color: red" id="pwCheck"></span>
                  </div>

                  <div id="repwDiv" class="form-group  has-feedback">
                     <label class="control-label" for="inputError2">비밀번호 확인</label> <input
                        type="password" class="form-control" name="pwd" id="repw"
                        aria-describedby="inputError2Status" placeholder="비밀번호확인" data-msg="비밀번호를 "> <span id="repwChk"
                        class="glyphicon form-control-feedback" aria-hidden="true"></span>
                     <span id="inputError2Status" class="sr-only">(error)</span> <span
                        class="fade" style="color: red" id="repwCheck"></span>
                  </div>

                  <div class="form-group">
                     <label>이름</label> <input type="text" name="name" id="_name"
                        class="form-control" placeholder="이름">
                  </div>
         		
         		  <input type="hidden" name="store" value="">
                  <input type="hidden" name="phone" value="">
                  <input type="hidden" name="detail" value="">
                 
                   <div class="form-group">
                     <label>번호</label> <input type="text" name="phone" id="_phone"
                        class="form-control" placeholder="번호">
                  </div>

                  <div class="form-group">
                     <label>이메일</label> <input type="text" name="email" id="_email"
                        class="form-control" placeholder="이메일" data-msg="이메일을 ">
                        <span style="color: red;">메일 인증을 통해 가입이 완료됩니다</span>
                  </div>    
                  
                  <div class="form-group">
                     <label>주소</label><br>
                     <div class="row form-group">
                        <div class="col-3">
                           <input type="text" id="sample6_postcode" class="form-control"
                              placeholder="우편번호" readonly="readonly">
                        </div>
                        <div class="col-3">
                           <input type="button" class="btn btn-primary"
                              style="background-color: #32B16C !important; padding: 10% 0;"
                              onclick="sample6_execDaumPostcode()" class="form-control"
                              value="주소 찾기">
                        </div>
                     </div>
                     <input type="text" name="address" id="sample6_address"
                        class="form-control" size="10" placeholder="주소" data-msg="주소를 ">

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




   <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
   <script>
      function sample6_execDaumPostcode() {
         new daum.Postcode(
               {
                  oncomplete : function(data) {
                     // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                     // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                     // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                     var fullAddr = ''; // 최종 주소 변수
                     var extraAddr = ''; // 조합형 주소 변수

                     // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                     if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                        fullAddr = data.roadAddress;

                     } else { // 사용자가 지번 주소를 선택했을 경우(J)
                        fullAddr = data.jibunAddress;
                     }

                     // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                     if (data.userSelectedType === 'R') {
                        //법정동명이 있을 경우 추가한다.
                        if (data.bname !== '') {
                           extraAddr += data.bname;
                        }
                        // 건물명이 있을 경우 추가한다.
                        if (data.buildingName !== '') {
                           extraAddr += (extraAddr !== '' ? ', '
                                 + data.buildingName
                                 : data.buildingName);
                        }
                        // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                        fullAddr += (extraAddr !== '' ? ' ('
                              + extraAddr + ')' : '');
                     }

                     // 우편번호와 주소 정보를 해당 필드에 넣는다.
                     document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                     document.getElementById('sample6_address').value = fullAddr;

                  }
               }).open();
      }
   </script>


   <script type="text/javascript">
      function valOkdiv(e) {
         e.removeClass('has-error');
         e.addClass('has-success');
      };

      function valNodiv(e) {
         e.removeClass('has-success');
         e.addClass('has-error');
      };

      function valOkchk(e) {
         e.removeClass('glyphicon-remove');
         e.addClass('glyphicon-ok');
      };

      function valNochk(e) {
         e.removeClass('glyphicon-ok');
         e.addClass('glyphicon-remove');
      };

      function validateEmail(sEmail) {
         var filter = /[^0-9]/g;

         if (filter.test(sEmail)) {
            return false;
         } else {
            return true;
         }
      };
 

      function checkSpecial(str) {
         var special_pattern = /[`~!@#$\\<\\>()%^&*|\\\'\";:\/?]/gi;
         if (special_pattern.test(str) == true) {
            return true;
         } else {
            return false;
         }
      }
      function koreaChk(str) {

         check = /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/;
         if (check.test(str)) {
            return true;
         } else {
            return false;
         }
      }
      function blankChk(str) {
         var blank_pattern = /[\s]/g;
         if (blank_pattern.test(str)) {
            return true;
         } else {
            return false;
         }

      }
 
         
 
         /* $("#id").keyup(function() {
            var idContent = $(this).val();
            var flag = $("#idDiv").hasClass('has-error');

            if (idContent.length >= 6) {
               if (checkSpecial($("#id").val())) {
                  valNodiv($('#idDiv'));
                  valNochk($('#idChk'));
                  $("#idCheck").html("아이디에 특수문자는 불가능합니다.");
                  $("#idCheck").removeClass("fade");
               } else if (koreaChk($("#id").val())) {
                  valNodiv($('#idDiv'));
                  valNochk($('#idChk'));
                  $("#idCheck").html("아이디는 영어로만 가능합니다.");
                  $("#idCheck").removeClass("fade");
               } else if (blankChk($("#id").val())) {
                  valNodiv($('#idDiv'));
                  valNochk($('#idChk'));
                  $("#idCheck").html("아이디에 공백은 불가능합니다.");
                  $("#idCheck").removeClass("fade");
               } else {
                  valOkdiv($('#idDiv'));
                  valOkchk($('#idChk'));

                  $("#idCheck").addClass("fade");
                  $.ajax({
                     url : "idCheck.jsp",
                     type : "get",
                     data : "id=" + $("#id").val(),
                     success : function(data) {
                        if (data.trim() == "OK") {

                        } else if (data.trim() == "NO") {
                           valNodiv($('#idDiv'));
                           valNochk($('#idChk'));
                           $("#idCheck").html("중복된 아이디가 있습니다.");
                           $("#idCheck").removeClass("fade");
                        } else {

                        }
                     },
                     error : function() {
                        alert("Fail");
                     }
                  });
               }

            } else if (idContent.length < 6) {
               valNodiv($('#idDiv'));
               valNochk($('#idChk'));
               $("#idCheck").html("아이디는 6글자 이상이어야 합니다.");
               $("#idCheck").removeClass("fade");

            }

            btnUse();
         }); */

         $("#pw").keyup(function() {
            var content = $(this).val();

            if (content.length >= 4) {
               if (blankChk($("#pw").val())) {
                  valNodiv($('#pwDiv'));
                  valNochk($('#pwChk'));
                  $("#pwCheck").removeClass("fade");
                  $("#pwCheck").html("패스워드에 공백이 들어가있습니다.");
               

               } else {
                  valOkdiv($('#pwDiv'));
                  valOkchk($('#pwChk'));
                  $("#pwCheck").addClass("fade");
                  
               }

            } else {
               valNodiv($('#pwDiv'));
               valNochk($('#pwChk'));
               $("#pwCheck").removeClass("fade");
               $("#pwCheck").html("패스워드는 4글자 이상어야합니다.");
               

            }

           
         });

         $("#repw").keyup(function() {
            var content = $(this).val();
            if ($("#pw").val() == $("#repw").val()) {
               valOkdiv($('#repwDiv'));
               valOkchk($('#repwChk'));
               $("#repwCheck").addClass("fade");
               
                
            } else {
               valNodiv($('#repwDiv'));
               valNochk($('#repwChk'));
               $("#repwCheck").removeClass("fade");
               $("#repwCheck").html("패스워드가 같지 않습니다.");
               
            }
           
         
         });

         /* $("#name").keyup(function() {
            var content = $(this).val();
            if (content.length >= 2) {
               if (blankChk($("#name").val())) {
                  valNodiv($('#nameDiv'));
                  valNochk($('#nameChk'));
                  $("#nameCheck").removeClass("fade");
                  $("#nameCheck").html("닉네임에 공백은 불가능합니다.");
               } else {
                  valOkdiv($('#nameDiv'));
                  valOkchk($('#nameChk'));
                  $("#nameCheck").addClass("fade");
                  $.ajax({
                     url : "nickCheck.jsp",
                     type : "get",
                     data : "name=" + $("#name").val(),
                     success : function(data) {
                        if (data.trim() == "OK") {

                        } else if (data.trim() == "NO") {
                           valNodiv($('#nameDiv'));
                           valNochk($('#nameChk'));
                           $("#nameCheck").removeClass("fade");
                           $("#nameCheck").html("중복된 닉네임이 있습니다.");
                        } else {

                        }
                     },
                     error : function() {
                        alert("Fail");
                     }
                  });
               }

            } else {
               valNodiv($('#nameDiv'));
               valNochk($('#nameChk'));
               $("#nameCheck").removeClass("fade");
               $("#nameCheck").html("닉네임은 두글자 이상이어야 합니다.");
            }
            btnUse();
         }); 

         $("#phone").keyup(
               function() {
                  var content = $(this).val();
                  if (validateEmail($("#phone").val())
                        && $("#phone").val() != "") {
                     valOkdiv($('#phoneDiv'));
                     valOkchk($('#phoneChk'));
                     $("#phoneCheck").addClass("fade");
                     $.ajax({
                        url : "phoneCheck.jsp",
                        type : "get",
                        data : "phone=" + $("#phone").val(),
                        success : function(data) {
                           if (data.trim() == "OK") {

                           } else if (data.trim() == "NO") {
                              valNodiv($('#phoneDiv'));
                              valNochk($('#phoneChk'));
                              $("#phoneCheck").removeClass("fade");
                              $("#phoneCheck")
                                    .html("중복된 전화번호가 있습니다.");
                           } else {

                           }
                        },
                        error : function() {
                           alert("Fail");
                        }
                     });
                  } else {
                     valNodiv($('#phoneDiv'));
                     valNochk($('#phoneChk'));
                     $("#phoneCheck").removeClass("fade");
                     $("#phoneCheck").html("전화번호 형식에 맞지 않습니다.");
                  }
                  btnUse();
               });
         */
         /* $('#joinFrm').submit(function(){
            if($("#chk").val() = 1){
               
               
            }else {
               alert('아이디 중복체크 필수');
               if($('#id').val() == '') {
                  $('#id').focus();
               }else {
                  $('#confirmId').focus();
               }
               return false;
            }
         }); */
  

      /*///////////////////////////////  */

      var idOk = 0;

      function idCheck() {
         var id = $("#_userid").val();
         $("#chkMsg").html(id);

         //ajax!!
         $.ajax({

            data : {
               id : id
            },
            url : "idCheck.do",
            error : function() {
               alert("통신실패");
            },

            //   id를 검색. 해당 문자열과 같은 아이디가 몇  개 존재하는지 받아온다
            success : function(data) {
               //alert("통신 성공!");

               $("#idCount").html(data + " // length = " + id.length);

               //아이디를 입력하지 않았을 때
               if (id == "" && data == '0') {
                  $("#chkMsg").html("아이디를 입력해주십시오");

                  //이미 사용중인 아이디
               } else if (data == '1') {
                  $("#chkMsg").css("color", "red");
                  $("#chkMsg").html("이미 사용중인 아이디입니다");
                  

                  //사용중인 아이디가 아닌 경우   
               } else if (data == '0') {
                  $('#_btnRegi').attr('disabled', false);
                  idReg(id);
               }

            }

         });

      }

      function idReg(id) {

         //(조건) 영어 대소문자, 숫자로 6~10글자로 구성
         var idReg = /^[a-zA-Z0-9]{6,10}$/g;

         //조건에 맞지 않는 경우
         if (!idReg.test(id)) {
            $("#chkMsg").css("color", "red");
            $("#chkMsg").html("아이디는 영문자와 숫자를 조합하여 6~10글자여야 합니다");
            $("#_userid").focus();
         

         } else {
            $("#chkMsg").css("color", "blue");
            $("#chkMsg").html("사용가능한 아이디입니다");
            $('#_btnRegi').attr('disabled', false);
            idOk = 1;

         }

      }

      $("#_btnLogin").click(function() {
         location.href = "login.do";
      });

      $("#_btnRegi").click(function() {

         //아이디 조건을 만족하지 않은 경우
         if (idOk == 0) {
             
            alert("아이디를 다시 입력해주십시오");
            $("#_id").focus();

         }
         //아이디 조건을 만족한 경우
         else{
            var str = $("#sample6_address").val();
            $("#_address").val(str);
            if($("_useid").val() == ""){
               alert("아이디를 확인해주세요");
               
               
            }else if ($("#pw").val() == "" || $("#repw").val() == ""){
               alert("비밀번호를 입력해주세요");
            
            }
            
            else if ($("#pw").val() != $("#repw").val()){
               alert("비밀번호가 일치하지 않습니다.");
            
            }
            else if ($("#_name").val() == "") {
                
               alert($("#_name").attr("data-msg") + " 입력해 주십시오");
               $("#_name").focus();
            }
            else if ($("#_phone").val() == "") {
                
                alert($("#_phone").attr("data-msg") + " 입력해 주십시오");
                $("#_phone").focus();
             }
            else if ($("#_email").val() == "") {
                
               alert($("#_email").attr("data-msg") + " 입력해 주십시오");
               $("#_email").focus();
            } else if ($("#sample6_address").val() == "") {
                
               alert("주소를 입력해 주십시오");
               $("#_address").focus();
               
            }
            
            else {
            
               $("#_frmForm").attr("action", "regiAf.do").submit();
            }
         }
          

      });
   </script>
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