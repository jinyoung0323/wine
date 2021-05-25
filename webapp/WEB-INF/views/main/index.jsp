<%@ page isELIgnored="false" language="java"
	contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<%@page import="com.javaex.vo.WineVo"%>

<!DOCTYPE html>
<html>
<head>
<!-- Bootstrap core CSS -->

<link rel="stylesheet" href="/wine/assets/css/bootstrap.css">



<style type="text/css">
a:link {
	font: 1em; 
	font-family: 'Jeju Gothic', sans-serif; 
	text-align:center;
	text-decoration: none;
}

a:visited {
	text-decoration: none;
	color: black;
}

a:active {
	text-decoration: none;
	color: black;
}

a:hover {
	text-decoration: underline;
	color: black;
}

</style>
</head>
<body>

	<!-- header -->
	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<main>

		<section class="py-5 text-center container">

			<div class="row py-lg-5">
				<div class="col-lg-6 col-md-8 mx-auto">
					<h1 class="fw-light">W I N E</h1>
					<br>

					<!-- 검색 -->
					<form id="type_form" action="/wine/" method="get">
						<input type="text" id="keyword" name="keyword" value="${keyword}" size=50>
						<input type="submit" value="검색">
					</form>

				</div>

			</div>
		</section>
		&nbsp;&nbsp;&nbsp;
		
		<!-- 정렬 -->
		<a href="/wine/?keyword=${keyword}&wine_type=${wine_type}&sort_type=wine_name_up" class="sort">가나다↑</a>&nbsp;&nbsp;&nbsp;
		<a href="/wine/?keyword=${keyword}&wine_type=${wine_type}&sort_type=wine_name_down"class="sort">가나다↓</a>&nbsp;&nbsp;&nbsp;
		<a href="/wine/?keyword=${keyword}&wine_type=${wine_type}&sort_type=wine_price_up" class="sort">낮은가격순</a>&nbsp;&nbsp;&nbsp;
		<a href="/wine/?keyword=${keyword}&wine_type=${wine_type}&sort_type=wine_price_down" class="sort">높은가격순</a>&nbsp;&nbsp;&nbsp;
		<a href="/wine/?keyword=${keyword}&wine_type=${wine_type}&sort_type=reg_date_up" class="sort">등록순</a>&nbsp;&nbsp;&nbsp;
		<a href="/wine/?keyword=${keyword}&wine_type=${wine_type}&sort_type=reg_date_down" class="sort">최신순</a>


		<div class="album py-5 bg-light">

			<div class="container">

				<div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3 ">
					<div class="col">

						<!-- 와인리스트 -->
						<br>
						<table>
							<c:forEach items="${wineList}" var="winelist">
								<td>
									<a href="/wine/wineView?wine_no=${winelist.wine_no}">
										<img src="${winelist.wine_image}" alt="image">
									</a>

									<div class="card-body">
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
										<p class="card-text">와인재고 : ${winelist.wine_stock}개</p></td>
								</div>
								</div>
							</c:forEach>
						</table>
					</div>

				</div>
			</div>
		</div>

		<!-- 페이징 처리 가운데 정렬 위해서 bootstrap.min.css의 .pagination{display:flex;padding-left:0;list-style:none;}에 flex-direction: row; justify-content: center; 추가함 jsp에서 백날 해봤자 되는거 없음.-->
		<div class="text-center">
			<ul class="pagination" align="center">
				<c:if test="${pageMaker.prev}">
					<li><a
						href="/wine/${pageMaker.makeQuery(pageMaker.startPage - 1)}">이전</a></li>
				</c:if>

				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}"
					var="idx">
					<li><a
						href="/wine/${pageMaker.makeQuery(idx)}&keyword=${keyword}&wine_type=${wine_type}&sort_type=${sort_type}">${idx}</a></li>
				</c:forEach>

				<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
					<li><a
						href="/wine/${pageMaker.makeQuery(pageMaker.endPage + 1)}">다음</a></li>
				</c:if>
			</ul>
		</div>
	</main>
	</div>

	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
	<script
		src="/wine/assets/bootstrap_assets/dist/js/bootstrap.bundle.min.js">
		
	</script>
</body>
</html>
