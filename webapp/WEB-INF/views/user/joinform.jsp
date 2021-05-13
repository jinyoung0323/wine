<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>회원가입 Form</title>
</head>
<body>

	<div id="container">
		
		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>
						
		<head>
		  <meta charset="utf-8">
		  <title>Checkout example · Bootstrap v5.0</title>
		
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
		  <link href="form-validation.css" rel="stylesheet">
		</head>
		
<body class="bg-light">

<div class="container">
  <main>
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/wine/assets/bootstrap_assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
      <h2>회원가입 form</h2>
      <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
    </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Billing address</h4>
        <form class="needs-validation" novalidate id="join-form" name="actionName" value="join" method="post" action="<%=request.getContextPath() %>/user/join">
          <div class="row g-3">
          
         	<div class="col-12">
              <label for="email" class="form-label">이메일 <span class="text-muted"></span></label>
              <input id="email" name="email" type="text" class="form-control" placeholder="wine@example.com">
              <div class="invalid-feedback">
                Please enter a valid email address for shipping updates.
              </div>
            </div>
            
            <div class="col-sm-6">
              <label for="nick_name" class="form-label">이름</label>
              <input id="nick_name" name="nick_name" type="text" class="form-control" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid name is required.
              </div>
            </div>
            
            <div class="col-sm-6">
              <label class="form-label">비밀번호</label>
              <input id="password" name="password" type="password" class="form-control" placeholder="" value="" required>
              <div class="invalid-feedback">
                Valid password is required.
              </div>
            </div>
            
            <div class="col-sm-6">
              <label for="phone_no" class="form-label">전화번호</label>
              <input id="phone_no" name="phone_no" type="text" class="form-control" placeholder="01012341234" value="" required>
              <div class="invalid-feedback">
                Valid phone number is required.
              </div>
            </div>
            
            <div class="col-sm-6">
              <label for="birth" class="form-label">생년월일</label>
              <input id="birth" name="birth" type="text" class="form-control" placeholder="YYYYMMDD" value="" required>
              <div class="invalid-feedback">
                Valid birth is required.
              </div>
            </div>
            
            <div class="col-sm-6">
            	<fieldset>
	              <legend>등급</legend>
	              <input type="radio" name="grade" value="1" checked="checked"><label>user</label>
	              <input type="radio" name="grade" value="2" ><label>admin</label>
	            </fieldset>  
            </div>
            
            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input id="address" name="address" type="text" class="form-control" placeholder="" >
              <div class="invalid-feedback">
                Please enter your shipping address.
              </div>
            </div>

          <button class="w-100 btn btn-primary btn-lg" type="submit">가입하기</button>
        </form>
      </div>
    </div>
  </main>

</div>


<script src="/wine/assets/bootstrap_assets/dist/js/bootstrap.bundle.min.js"></script>

<script src="form-validation.js"></script>
</body>
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		
	</div> <!-- /container -->

</body>
</html>