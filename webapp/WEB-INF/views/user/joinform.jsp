<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 	<script type="text/javascript" src="WEB-INF/views/user/joinsuccess.js"></script> -->

	<script language="javascript">
	   function validate() {

	       var email = document.getElementById("email");
	       var nick_name = document.getElementById("nick_name");
	       var password = document.getElementById("password");
	       var phone_no = document.getElementById("phone_no");
	       var birth = document.getElementById("birth");
	       var address = document.getElementById("address");
	 
	
	   		// 이메일 유효성 검사
		    var str=email.value;	   
		    var atPos = str.indexOf('@');
		    var atLastPos = str.lastIndexOf('@');
		    var dotPos = str.indexOf('.'); 
		    var spacePos = str.indexOf(' ');
		    var commaPos = str.indexOf(',');
		    var eMailSize = str.length;
		    
		   if (atPos > 1 && atPos == atLastPos && 
			  dotPos > 3 && spacePos == -1 && commaPos == -1 
			  && atPos + 1 < dotPos && dotPos + 1 < eMailSize);
		   else {
			  alert('E-mail주소 형식이 잘못되었습니다.\n\r다시 입력해 주세요!');
			  email.focus();
			  return false;
		   } 
	

	    	// 생년월일 유효성 체크
			 var year = Number(birth.substr(0,4)); 
		     var month = Number(birth.substr(4,2));
		     var day = Number(birth.substr(6,2));
		     var today = new Date(); // 날자 변수 선언
		     var yearNow = today.getFullYear();
		     var adultYear = yearNow-20;
		 
		 
		     if (year < 1900 || year > adultYear){
		          alert(adultYear+"년생 이전 출생자만 등록 가능합니다.");
		          return false;
		     }
		     if (month < 1 || month > 12) { 
		          alert("1월부터 12월까지 입력 가능합니다.");
		          return false;
		     }
		    if (day < 1 || day > 31) {
		          alert("1일부터 31일까지 입력가능합니다.");
		          return false;
		     }
		     if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		          alert(month+"월은 31일이 존재하지 않습니다.");
		          return false;
		     }
		     if (month == 2) {
		          var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		          if (day>29 || (day==29 && !isleap)) {
		               alert(year + "년 2월은  " + day + "일이 없습니다.");
		               return false;
		          }
		     }
	   }
	</script>
</head>
<body>

	<div id="container">
		
		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
						
		<head>
		  <meta charset="utf-8">
		
		  <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/checkout/">

		  <!-- Bootstrap core CSS -->
		  <link href="/wine/assets/bootstrap_assets/dist/css/bootstrap.min.css" rel="stylesheet">

		  <style>
		    .bd-placeholder-img {
		      font-size: 1.125rem;
		      text-anchor: middle;
		      -webkit-user-select: none;
		      -moz-user-select: none;
		      user-select: none;
		    }
		
		    @media (min-width: 768px) {
		      .bd-placeholder-img-lg {
		        font-size: 3.5rem;
		      }
		    }
		  </style>

		  <!-- Custom styles for this template -->
<link href="<%=request.getContextPath()%>/assets/checkout/form-validation.css" rel="stylesheet">
		</head>

		<body class="bg-light">
			>
			<div class="container">
				<main>
					<div class="py-5 text-center">
						<img class="d-block mx-auto mb-4"
							src="/wine/assets/bootstrap_assets/brand/bootstrap-logo.svg"
							alt="" width="72" height="57">
						<h2>회원가입 form</h2>
						<!--       <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p> -->
					</div>
					<div class="col-md-7 col-lg-8">
						<!--         <h4 class="mb-3">Billing address</h4> -->
						<form class="needs-validation" novalidate id="join-form" name="actionName" onsubmit="return validate();" value="join" method="post" action="<%=request.getContextPath()%>/user/join">
							<div class="row g-3">

								<div class="col-12">
									<label for="email" class="form-label">이메일 <span class="text-muted"></span></label> 
									<input id="email" name="email" type="text" class="form-control" placeholder="wine@example.com" required>
								</div>

								<div class="col-sm-6">
									<label for="nick_name" class="form-label">이름</label> 
									<input id="nick_name" name="nick_name" type="text" class="form-control" placeholder="" value="" required>
									<div class="invalid-feedback">Valid name is required.</div>
								</div>

								<div class="col-sm-6">
									<label for="birth" class="form-label">생년월일</label> 
									<input id="birth" name="birth" type="text" class="form-control" placeholder="YYYYMMDD" value="" required>
									<div class="invalid-feedback">Valid birth is required.</div>
								</div>

								<div class="col-sm-6">
									<label for="phone_no" class="form-label">전화번호</label> 
									<input id="phone_no" name="phone_no" type="text" class="form-control" placeholder="01012341234" value="" required>
									<div class="invalid-feedback">Valid phone number is required.</div>
								</div>

								<div class="col-sm-6">
									<label class="form-label">비밀번호</label> 
									<input id="password" name="password" type="password" class="form-control" placeholder="" value="" required>
									<div class="invalid-feedback">Valid password is required. </div>
								</div>

								<div class="col-12">
									<label for="address" class="form-label">Address</label> 
									<input id="address" name="address" type="text" class="form-control" placeholder="" required>
									<div class="invalid-feedback">Please enter your shipping address.</div>
								</div>

								<div class="col-sm-6">
									<fieldset>
										<legend>등급</legend>
										<input type="radio" name="grade" value="1" checked="checked"><label>user</label>
										<input type="radio" name="grade" value="2"><label>admin</label>
									</fieldset>
								</div>



								<input class="w-100 btn btn-primary btn-lg" type="submit" value="가입하기">
						</form>
					</div>
			</div>
			</main>
	</div>


	<script
		src="/wine/assets/bootstrap_assets/dist/js/bootstrap.bundle.min.js"></script>

	<script src="<%=request.getContextPath()%>/assets/checkout/form-validation.js"></script>
</body>

<!-- footer -->
<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</div>
<!-- /container -->

</body>
</html>