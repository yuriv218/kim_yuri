<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>거래처 추가</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">


    
    <!-- jQuery -->
    <script src="http://code.jquery.com/jquery-3.3.1.min.js"></script>
    
    <style type="text/css">
    /* #_insert{
    	color: #fff; background:#7AB317; font-size:1em; border-radius:0.5em; 
    } */
    
    #_insert{
      background:#1AAB8A;
	  color:#fff;
	  border:none;
	  position:relative;
	  padding:0 2em;
	  cursor:pointer;
	  transition:800ms ease all;
	  outline:none;
    }
    
    #_insert:hover{
	  background:#fff;
	  color:#1AAB8A;
	}
	#_insert:before, #_insert:after{
	  content:'';
	  position:absolute;
	  top:0;
	  right:0;
	  height:2px;
	  width:0;
	  background: #1AAB8A;
	  transition:400ms ease all;
	}
	#_insert:after{
	  right:inherit;
	  top:inherit;
	  left:0;
	  bottom:0;
	}
	#_insert:hover:before, #_insert:hover:after{
	  width:100%;
	  transition:800ms ease all;
	}
	
	.client_data_insert{
   		/* border-radius: 2em; */
   		border:1px solid;
   		padding: 20px;
	}
    
    </style>
    
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
    
</head>

<body>
<div class="client_data_insert" align="center">
<form action="" name="frmForm" id="_frmForm">
<br>
<table>
	<tr>
		<td colspan="2">
			<i class="fa fa-user"></i>
            <strong class="card-title">거래처 추가</strong><br><br>
		</td>
	</tr>
	
	
	<tr>
		<td colspan="2">Client.</td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="text" name="c_name" value="" class="c_name">
		</td>
	</tr>
	<tr>
		<td colspan="2">Detail.</td>
	</tr>
	<tr>
		<td>
			<textarea rows="10" cols="26" name="detail" style="resize: none;"></textarea>
		</td>
	</tr>
</table>

<input type="hidden" name="store" value="${login.store }"><br>
</form>
<center>
	<button type="button" class="btn btn-primary waves-effect waves-light" id="_insert">추가</button>
</center>


</div>

    <script type="text/javascript">
    $(function () {
    	$("#_insert").click(function() {
    		
    		if( $(".c_name").val() == null || $(".c_name").val() == ""){
    			alert("거래처명을 입력해주십시오");
    			
    		}else{
    			//alert("거래처 xx");
    			//수정할 데이터들 -> json형태로 바꿔줄 것이다
         		var insert = $("form[name=frmForm]").serialize();
        		
         		$.ajax({
         			type:"post",
         			url:"customerInsertAf.do",
         			data:insert,
         			dataType: 'json',
         			
         			error:function(){
         				aler("error!!");
         			},
         			
         			success : function(json){
         				alert(json);
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