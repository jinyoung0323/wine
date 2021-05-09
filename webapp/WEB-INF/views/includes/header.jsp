<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
<title>Headers · Bootstrap v5.0</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/headers/">



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


<!-- Custom styles for this template -->
<link href="headers.css" rel="stylesheet">
</head>
<body>



	<div class="container">
		<header
			class="d-flex flex-wrap align-items-center justify-content-center justify-content-md-between py-3 mb-4 border-bottom">
			<a href="/"
				class="d-flex align-items-center col-md-3 mb-2 mb-md-0 text-dark text-decoration-none">
				<svg class="bi me-2" width="40" height="32">
					<use xlink:href="#bootstrap" /></svg>
			</a>

			<ul
				class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
				<li><a href="#" class="nav-link px-2 link-secondary">Home</a></li>
				<li><a href="#" class="nav-link px-2 link-dark">Features</a></li>
				<li><a href="#" class="nav-link px-2 link-dark">Pricing</a></li>
				<li><a href="#" class="nav-link px-2 link-dark">FAQs</a></li>
				<li><a href="#" class="nav-link px-2 link-dark">About</a></li>
			</ul>

			<div class="col-md-3 text-end">
				<c:choose>
					<c:when test="${authUser == null }">
						<!-- 로그인 전 -->
						<li><a href="/wine/user/loginform">로그인</a></li>
						<li><a href="/wine/user/joinform">회원가입</a></li>
					</c:when>
					<c:otherwise>
						<!--
						<li><a href="">회원정보수정</a></li>
						<li><a href="">로그아웃</a></li>
						<li>${authUser.name }님 안녕하세요^^;</li>
						-->
						
						<!-- 일반 사용자 -->
						<c:if test="${authUser.grade == 1}">
							<li>${authUser.name }님안녕하세요^^;</li>
							<li><a href="/wine/user/modifyform">회원정보수정</a></li>
							<li><a href="/wine/user/logout">로그아웃</a></li>
						</c:if>
						
						<!-- 관리자 -->
						<c:if test="${authUser.grade == 2}">
							<li>${authUser.name }님안녕하세요^^;</li>
							<li><a href="/wine/winelist/view_admin">와인등록</a></li>
							<li><a href="/wine/user/logout">로그아웃</a></li>
						</c:if>
					</c:otherwise>
				</c:choose>
			</div>
		</header>
	</div>

</body>