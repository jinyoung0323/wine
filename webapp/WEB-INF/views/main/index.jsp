<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page import="com.javaex.vo.WineVo"%>
<%@page import="com.javaex.vo.WineDescriptionVo"%>


<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core CSS -->
<link href="/wine/assets/bootstrap_assets/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/wine/assets/bootstrap.css">
</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>



	<main>

		<section class="py-5 text-center container">

			<div class="row py-lg-5">
				<div class="col-lg-6 col-md-8 mx-auto">
					<h1 class="fw-light">Album example</h1>
					<p class="lead text-muted">Something short and leading about
						the collection below—its contents, the creator, etc. Make it short
						and sweet, but not too short so folks don’t simply skip over it
						entirely.</p>

					<form id="type_form" action="/wine/wineSearch" method="post">
						<select name="wine_type">
							<option selected>와인종류</option>
							<option value="1">레드</option>
							<option value="2">화이트</option>
							<option value="3">로제</option>
						</select> <select name="search_type">
							<option selected>검색</option>
							<option value="wine_name">이름</option>
							<option value="wine_country">생산국</option>
						</select> <input type="text" id="keyword" name="keyword" value="">
						<input type="submit" value="검색">
					</form>
				</div>

			</div>
		</section>

		<div class="album py-5 bg-light">

			<div class="container">
				<form id="order_by_form" action="/wine/orderByWinelist"
					method="post">
					<select name="order_by_type">
						<option selected>정렬기준</option>
						<option value="wine_name_up">가나다↑</option>
						<option value="wine_name_down">가나다↓</option>
						<option value="wine_price_up">낮은가격순</option>
						<option value="wine_price_down">높은가격순</option>
						<option value="reg_date_up">등록순</option>
						<option value="reg_date_down">최신순</option>
					</select> 
					<input type="submit" value="정렬">
				</form>
				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					<div class="col">

						<c:forEach items="${wineList}" var="winelist">
							<div class="card shadow-sm">
								<!--            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>-->
								<a href="#"><img src="${winelist.wine_image}" alt="image">
								</a>

								<div class="card-body">
									<p class="card-text">와인번호 : ${winelist.wine_no}</p>
									<p class="card-text">와인명 : ${winelist.wine_name}</p>
									<p class="card-text">
										와인타입 :
										<c:choose>
											<c:when test="${winelist.wine_type == 1}">
										 레드와인
											</c:when>
											<c:when test="${winelist.wine_type == 2}">
										 화이트와인
											</c:when>
											<c:otherwise>
										 로제와인
											</c:otherwise>
										</c:choose>
									</p>
									<p class="card-text">와인생산국 : ${winelist.wine_country}</p>
									<p class="card-text">등록일 : ${winelist.reg_date}</p>
									<p class="card-text">와인가격 : ${winelist.wine_price}</p>
									<p class="card-text">와인재고 : ${winelist.wine_stock}</p>
								</div>
							</div>
						</c:forEach>

					</div>

				</div>
			</div>
		</div>
		<div class="text-center">
			<ul class="pagination">
				<li><a href="#">1</a></li>
				<li><a href="#">2</a></li>
				<li><a href="#">3</a></li>
				<li><a href="#">4</a></li>
				<li><a href="#">5</a></li>
			</ul>
		</div>
	</main>

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>


	<script
		src="/wine/assets/bootstrap_assets/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
