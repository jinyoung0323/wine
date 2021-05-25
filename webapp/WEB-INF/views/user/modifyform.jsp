<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
		  <link href="form-validation.css" rel="stylesheet">
		</head>
		
<body class="bg-light">

<div class="container">
  <main>
    <div class="py-5 text-center">
      <img class="d-block mx-auto mb-4" src="/wine/assets/bootstrap_assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
      <h2>회원정보수정 form</h2>
      <p class="lead">Below is an example form built entirely with Bootstrap’s form controls. Each required form group has a validation state that can be triggered by attempting to submit the form without completing it.</p>
    </div>
      <div class="col-md-7 col-lg-8">
        <h4 class="mb-3">Billing address</h4>
        <form class="needs-validation" id="modify-form" name="actionName" value="modify" method="post" action="<%=request.getContextPath() %>/user/modify">
          <div class="row g-3">
          	<input type='hidden' name="user_no" value="${User.user_no }"> 
          	
         	<div class="col-12">
              <label for="email" class="form-label">이메일 <span class="text-muted"></span></label>
              <input type="text" class="form-control" name="email" value="${User.email }" readonly>
            </div>
            
            <div class="col-sm-6">
              <label for="nick_name" class="form-label">이름</label>
              <input id="nick_name" name="nick_name" type="text" value="${User.nick_name}" class="form-control" placeholder="">
            </div>
            
            <div class="col-sm-6">
              <label class="form-label">비밀번호</label>
              <input name="password" type="password" value="${User.password }" class="form-control" placeholder="">
            </div>
            
            <div class="col-sm-6">
              <label for="phone_no" class="form-label">전화번호</label>
              <input id="phone_no" name="phone_no" type="text" value="${User.phone_no }" class="form-control" placeholder="">
            </div>
            
            <div class="col-sm-6">
              <label for="birth" class="form-label">생년월일</label>
              <input type="text" class="form-control" name="birth" value="${User.birth }" readonly>
            </div>
            
            <div class="col-sm-6">
            	<fieldset readonly>
	              <legend>등급</legend>
	              <input type="radio" name="grade" value="1" checked="checked" disabled='disabled'><label>user</label>
	              <input type="radio" name="grade" value="2" disabled='disabled'><label>admin</label>
	            </fieldset>  
            </div>
            
            <div class="col-12">
              <label for="address" class="form-label">Address</label>
              <input id="address" name="address" type="text" value="${User.address }" class="form-control" placeholder="">
            </div>

          <button class="w-100 btn btn-primary btn-lg" type="submit">수정하기</button>
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