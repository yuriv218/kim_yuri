<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>거래처 상세보기</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- jQuery -->
<script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
<link rel="stylesheet" href="assets/css/style.css">
<link rel="stylesheet"
   href="https://cdn.jsdelivr.net/npm/bootstrap@4.1.3/dist/css/bootstrap.min.css">



<style type="text/css">

textarea{
   border-radius: 5px;
   border: none;
   
}

input{
   border-radius: 3px;
   border: none;
}




</style>




<script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>


</head>

<body>


<div class="col-lg-12" style="padding-top: 20px;">
   <div class="card">
      <div class="card-body" id="_client_title">
      <i class="fa fa-user"></i>
         <strong class="card-title">거래처 상세</strong>
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
               <td colspan="2">
                  <%-- <input type="text" name="c_name" value="${customer.c_name }" class="c_name" readonly="readonly"> --%>
                  <textarea rows="1" cols="26" name="c_name" readonly="readonly" style="resize: none;" >${customer.c_name }</textarea>
               </td>
            </tr>
            <tr>
            <td colspan="2">Detail.</td>
            </tr>
            <tr>
            <td>
               <textarea rows="10" cols="26" name="detail" style="resize: none;" readonly="readonly">${customer.detail }</textarea>
            </td>
            </tr>
      </table>
      
      <input type="hidden" name="seq" value="${customer.seq }">
      <input type="hidden" name="c_name" value="${customer.c_name }">
      
      </form>
      
      
      <br>

      <center>
         <button type="button" id="_update" class="btn btn-secondary">수정</button>
      </center>
      
      </div>
   </div>
</div>










<script type="text/javascript">
$(function () {
$("#_update").click(function() {   
   //alert('글수정하기');      
   $("#_frmForm").attr({ "target":"_self", "action":"customerUpdate.do" }).submit();
   }); 
});
    
</script>



</body>

</html>