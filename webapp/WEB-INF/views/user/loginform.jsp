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

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/sign-in/">



<!-- Bootstrap core CSS -->
<link href="/wine/assets/bootstrap_assets/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>

		</head>
		<body class="text-center">
    
<main class="form-signin">
  <form id="login-form" name="actionName" value="login" method="post" action="<%=request.getContextPath() %>/user/login">
    <img class="mb-4" src="/wine/assets/bootstrap_assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
    <h1 class="h3 mb-3 fw-normal">Please sign in</h1>

    <div class="form-floating">
      <input id="email" name="email" type="text" class="form-control" placeholder="wine@example.com">
      <label for="email">Email address</label>
    </div>
    <div class="form-floating">
      <input name="password" type="password" class="form-control" placeholder="Password">
      <label >Password</label>
    </div>

    <button class="w-100 btn btn-lg btn-primary" type="submit">Sign in</button>
    <p class="mt-5 mb-3 text-muted">&copy; 2017–2021</p>
  </form>
</main>

<!-- footer -->
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

</body>
</html>