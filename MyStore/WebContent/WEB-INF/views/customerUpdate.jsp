<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>거래처 수정</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">



<!-- jQuery -->
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">



<style type="text/css">
.client_data_update {
   border: 1px solid grey;
   padding: 20px;
}

textarea {
   border-radius: 5px;
   border: none;
}

input {
   border-radius: 3px;
   border: none;
}

/* .c_name{
   -webkit-appearance: none;-moz-appearance: none;appearance: none;
} */



</style>

<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>

</head>

<body>

   <div class="col-lg-12" style="padding-top: 20px;">
      <div class="card">
         <div class="card-body" id="_client_title">
            <i class="fa fa-user"></i> <strong class="card-title">거래처
               수정</strong>
         </div>
      </div>
   </div>


   <div class="col-lg-12">
      <div class="card">
         <div class="card-header">
            <form action="" name="frmForm" id="_frmForm">
               <table align="center">
                  <tr>
                     <td colspan="2">Client.</td>
                  </tr>
                  <tr>
                     <td colspan="2"><%-- <textarea rows="1" cols="26" class="c_name"
                           name="c_name" style="resize: none;">${customer.c_name } style="border: none;" --%></textarea>
                        <input type="text" name="c_name" class="c_name" size="24" value="${customer.c_name }"
                           >
                     </td>
                  </tr>
                  <tr>
                     <td colspan="2">Detail.</td>
                  </tr>
                  <tr>
                     <td><textarea rows="10" cols="26" name="detail"
                           style="resize: none;">${customer.detail }</textarea></td>
                  </tr>
               </table>

               <input type="hidden" name="seq" value="${customer.seq }">

            </form>


            <br>

            <center>
               <button type="button" id="_update" class="btn btn-secondary">수정완료</button>
            </center>

         </div>
      </div>
   </div>









   <script type="text/javascript">
    $(function () {
       
       
       $("#_update").click(function() {   
           //alert('글수정하기');
           
           
          if( $(".c_name").val() == null || $(".c_name").val() == ""){
             alert("거래처명을 입력해주십시오");
             
          }else{
             //수정할 데이터들 -> json형태로 바꿔줄 것이다
               var update = $("form[name=frmForm]").serialize();
               
               //ajax로 데이터 수정 값 넣어주기
               /*참고:   http://fruitdev.tistory.com/174
               jQuery에서는 serialize() 라는 메소드를 제공하는데, 해당 메소드를 사용하면 Form 태그내의 항목들을 자동으로 읽어와

             queryString 형식으로 변환시켜 준다.

                즉. id=xxx&name=홍길동&age=26 이런식으로 변환하여 주는데, 이 값을 ajax 호출시 data 속성에 넣어 ajax 통신을 하면 된다.
             */
               
               $.ajax({
                  type:"post",
                  url:"customerUpdateAf.do",
                  data:update,
                  dataType: 'json',
                  
                  error:function(){
                     //aler("error!!");
                  },
                  
                  success : function(json){
                     //alert(json);
                  }
                  
               });
               
               //팝업 창 닫기
               self.close();
               
               
               //clicent.jsp 새로고침
               opener.window.location.reload();
          }
           
           
           
        });
       
        
   });
    
    
    
    
    
    </script>



</body>

</html>