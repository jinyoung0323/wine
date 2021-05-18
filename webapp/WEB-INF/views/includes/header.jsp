<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<head>
<title>우리가 만드는 wine판매사이트</title>

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
				<li><a href="/wine/" class="nav-link px-2 link-secondary">Home</a></li>
				<li><a href="/wine/?keyword=${keyword}&wine_type=레드&sort_type=${sort_type}"
					class="nav-link px-2 link-dark">red</a></li>
				<li><a href="/wine/?keyword=${keyword}&wine_type=화이트&sort_type=${sort_type}"
					class="nav-link px-2 link-dark">white</a></li>
				<li><a href="/wine/?keyword=${keyword}&wine_type=로제&sort_type=${sort_type}"
					class="nav-link px-2 link-dark">rose</a></li>
			</ul>

			<div class="col-md-3 text-end">
				<c:choose>
					<c:when test="${User == null }">
						<!-- 로그인 전 -->
						<button type="button" class="btn btn-outline-primary me-2"
							onclick="location.href='<%=request.getContextPath()%>/user/loginform'">로그인</button>
						<button type="button" class="btn btn-primary"
							onclick="location.href='<%=request.getContextPath()%>/user/joinform'">회원가입</button>

					</c:when>
					<c:otherwise>

						<!-- 일반 사용자 -->
						<table>
							<c:if test="${User.grade == 1}">
								${User.nick_name }&nbsp;님 &nbsp;&nbsp;&nbsp;
								<button type="button"
											class="btn btn-outline-primary me-2"
											onclick="location.href='<%=request.getContextPath()%>/user/modifyform'">회원정보수정</button>
								<button type="button"
											class="btn btn-outline-primary me-2"
											onclick="location.href='<%=request.getContextPath()%>/user/logout'">로그아웃</button>
							</c:if>
						</table>

						<!-- 관리자 -->
						<table>
							<c:if test="${User.grade == 2}">
									관리자님&nbsp;&nbsp;&nbsp;
									<button type="button"
											class="btn btn-outline-primary me-2"
											onclick="location.href='<%=request.getContextPath()%>/wineRegist'">등록</button>
									<button type="button" class="btn btn-primary"
											onclick="location.href='<%=request.getContextPath()%>/user/logout'">Sign-out</button>
							</c:if>
						</table>
					</c:otherwise>
				</c:choose>
			</div>
		</header>
	</div>

</body>