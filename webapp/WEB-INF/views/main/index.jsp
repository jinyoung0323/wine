<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@page import="com.javaex.vo.WineVo"%>
<%@page import="com.javaex.vo.WineDescriptionVo"%>




<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core CSS -->
<link href="/wine/assets/bootstrap_assets/dist/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/wine/assets/css/bootstrap.css">

<script type="text/javascript">
	function sort_event1(wine_name_up) {
		window.location = "/wine/wineSort?sort_type=" + wine_name_up;
		return;
	}
	
	function sort_event2(wine_name_down) {
		window.location = "/wine/wineSort?sort_type=" + wine_name_down;
		return;
	}
	
	function sort_event3(wine_price_up) {
		window.location = "/wine/wineSort?sort_type=" + wine_price_up;
		return;
	}
	
	function sort_event4(wine_price_down) {
		window.location = "/wine/wineSort?sort_type=" + wine_name_down;
		return;
	}
	
	function sort_event5(reg_date_up) {
		window.location = "/wine/wineSort?sort_type=" + reg_date_up;
		return;
	}
	
	function sort_event6(reg_date_down) {
		window.location = "/wine/wineSort?sort_type=" + reg_date_down;
		return;
	}
</script>

</head>
<body>

	<!-- header -->
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
						<input type="text" id="keyword" name="keyword" value=""> <input
							type="submit" value="검색">
					</form>

				</div>

			</div>
		</section>

		<div class="album py-5 bg-light">

			<div class="container">
				<!--  
				<form class="form-inline align-self-end" id="order_by_form"
					action="/wine/orderByWinelist" method="post">
					<select name="order_by_type">
						<option selected>정렬기준</option>
						<option value="wine_name_up">가나다↑</option>
						<option value="wine_name_down">가나다↓</option>
						<option value="wine_price_up">낮은가격순</option>
						<option value="wine_price_down">높은가격순</option>
						<option value="reg_date_up">등록순</option>
						<option value="reg_date_down">최신순</option>
					</select> <input type="submit" value="정렬">
				</form>
				-->

				<a onclick="sort_event1(wine_name_up)" class="sort">가나다↑</a>
				<a onclick="sort_event2(wine_name_down)" class="sort">가나다↓</a>
				<a onclick="sort_event3(wine_price_up)" class="sort">낮은가격순</a>
				<a onclick="sort_event4(wine_price_down)" class="sort">높은가격순</a>
				<a onclick="sort_event5(reg_date_up)" class="sort">등록순</a>
				<a onclick="sort_event6(reg_date_down)" class="sort">최신순</a>

				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
					<div class="col">

						<c:forEach items="${wineList}" var="winelist">
							<div class="card shadow-sm">
								<!--            <svg class="bd-placeholder-img card-img-top" width="100%" height="225" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>-->

								<a href="/wine/view?wine_no=${winelist.wine_no}"><img
									src="${winelist.wine_image}" alt="image"> </a>

								<div class="card-body">
									<p class="card-text">와인번호 : ${winelist.wine_no}</p>
									<p class="card-text">와인명 : ${winelist.wine_name}</p>
									<p class="card-text">
										와인타입 :
										<c:choose>
											<c:when test="${winelist.wine_type == '레드'}">
										 red
											</c:when>
											<c:when test="${winelist.wine_type == '화이트'}">
										 white
											</c:when>
											<c:when test="${winelist.wine_type == '로제'}">
										 rose
											</c:when>
										</c:choose>
									</p>
									<p class="card-text">와인생산국 : ${winelist.wine_country}</p>
									<p class="card-text">
										등록일 :
										<fmt:parseDate value="${winelist.reg_date}" var="parseDate"
											pattern="yyyy-MM-dd" />
										<fmt:formatDate value="${parseDate}" pattern="yyyy/MM/dd" />
									</p>
									<p class="card-text">
										와인가격 :
										<fmt:formatNumber value="${winelist.wine_price}"
											pattern="#,###" />
										원
									</p>
									<p class="card-text">와인재고 : ${winelist.wine_stock}개</p>
								</div>
							</div>
						</c:forEach>

					</div>

				</div>
			</div>
		</div>
		<div class="text-center">
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li><a
						href="/wine/${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
					var="idx">
					<li><a href="/wine/${pageMaker.makeQuery(idx)}">${idx}</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="/wine/${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
				</c:if>
			</ul>
		</div>
	</main>

	<form id="sort" action="/mysite2/guestbook/deleteform" method="post">
		<input type="hidden" name="sort_by_type" value="">
	</form>

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>


	<script
		src="/wine/assets/bootstrap_assets/dist/js/bootstrap.bundle.min.js"></script>


</body>
</html>
