<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@ page import="com.javaex.dao.CartDao"%>
<%@ page import="com.javaex.vo.CartVo"%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<style>
body {
	margin-top: 20px;
	color: #484b52;
}

.text-secondary-d1 {
	color: #728299 !important;
}

.page-header {
	margin: 0 0 1rem;
	padding-bottom: 1rem;
	padding-top: .5rem;
	border-bottom: 1px dotted #e2e2e2;
	display: -ms-flexbox;
	display: flex;
	-ms-flex-pack: justify;
	justify-content: space-between;
	-ms-flex-align: center;
	align-items: center;
}

.page-title {
	padding: 0;
	margin: 0;
	font-size: 1.75rem;
	font-weight: 300;
}

.brc-default-l1 {
	border-color: #dce9f0 !important;
}

.ml-n1, .mx-n1 {
	margin-left: -.25rem !important;
}

.mr-n1, .mx-n1 {
	margin-right: -.25rem !important;
}

.mb-4, .my-4 {
	margin-bottom: 1.5rem !important;
}

.text-grey-m2 {
	color: #888a8d !important;
}

.text-success-m2 {
	color: #86bd68 !important;
}

.font-bolder, .text-600 {
	font-weight: 600 !important;
}

.text-110 {
	font-size: 110% !important;
}

.text-blue {
	color: #478fcc !important;
}

.pb-25, .py-25 {
	padding-bottom: .75rem !important;
}

.pt-25, .py-25 {
	padding-top: .75rem !important;
}

.bgc-default-tp1 {
	background-color: rgba(121, 169, 197, .92) !important;
}

.bgc-default-l4, .bgc-h-default-l4:hover {
	background-color: #f3f8fa !important;
}

.page-header .page-tools {
	-ms-flex-item-align: end;
	align-self: flex-end;
}

.btn-light {
	color: #757984;
	background-color: #f5f6f9;
	border-color: #dddfe4;
}

.w-2 {
	width: 1rem;
}

.text-120 {
	font-size: 120% !important;
}

.text-primary-m1 {
	color: #4087d4 !important;
}

.text-danger-m1 {
	color: #dd4949 !important;
}

.text-blue-m2 {
	color: #68a3d5 !important;
}

.text-150 {
	font-size: 150% !important;
}

.text-60 {
	font-size: 60% !important;
}

.text-grey-m1 {
	color: #7b7d81 !important;
}

.align-bottom {
	vertical-align: bottom !important;
}

a:link {
	font: 1em;
	font-family: 'Jeju Gothic', sans-serif;
	text-align: center;
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
	color: red;
}
</style>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript">
	function order() {
		alert("결제페이지로 이동합니다.");
	}
	
	function button_event(no) {
		if (confirm("삭제 하시겠습니까?") == true) { //확인
			window.location = "/wine/cartDelete?wine_no=" + no;
		} else { //취소
			return;
		}
	}
</script>

</head>
<body>

	<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>

	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
		rel="stylesheet" />

	<div class="page-content container">
		<div class="container px-0">
			<div class="row mt-4">
				<div class="col-12 col-lg-10 offset-lg-1">
					<div class="row">
						<div class="col-12">
							
						</div>
					</div>
						<div
							class="text-95 col-sm-6 align-self-start d-sm-flex justify-content-end">
							<hr class="d-sm-none" />
							<div class="text-grey-m2">
							
							</div>
						</div>
					</div>

					<div class="mt-4">
						<div class="row text-600 text-white bgc-default-tp1 py-25">
							<div class="d-none d-sm-block col-1">카트번호</div>
							<div class="col-9 col-sm-5">상품명</div>
							<div class="d-none d-sm-block col-4 col-sm-2">갯수</div>
							<div class="d-none d-sm-block col-sm-2">상품 금액</div>
							<div class="col-2">총 상품금액</div>
						</div>
						<c:set var="sum" value="0" />
						<c:forEach items="${cart}" var="cart">
							<div class="text-95 text-secondary-d3">
								<div class="row mb-2 mb-sm-0 py-25">
									<c:if test="${User.email == cart.email}">
										<div class="d-none d-sm-block col-1">${cart.cart_no}</div>
										<div class="col-9 col-sm-5">${cart.wine_name}</div>
										<div class="d-none d-sm-block col-2">${cart.wine_count}
											개</div>
										<div class="d-none d-sm-block col-2 text-95">
											<fmt:formatNumber value="${cart.wine_price}" pattern="#,###" />
											원
										</div>

										<div class="col-1 text-secondary-d2">
											<fmt:formatNumber value="${cart.wine_total_price}"
												pattern="#,###" />
											원
											
											
										</div>
										
										<div class="col-1">
										
										<a onclick="button_event(${cart.wine_no})" 
										href="#">삭제</a></div>

									</c:if>
								</div>
							</div>
							<c:set var="sum" value="${sum + (cart.wine_total_price)}" />
						</c:forEach>


						<div class="row border-b-2 brc-default-l2"></div>
						
						<div></div>

						<div class="row mt-3">
								<div class="row my-2 align-items-center bgc-primary-l3 p-2">
									<div class="col-9 text-right"></div>
									<div class="col-3">
										최종합계금액 : &emsp;<fmt:formatNumber value="${sum}" pattern="#,###" />원
									</div>
								</div>
							</div>
						</div>

						<hr />

						<div>
						
							<a href="/wine/pay?email=${User.email}"
								class="btn btn-info btn-bold px-10 float-right mt-3 mt-lg-0"
								onclick="order()">결제하기</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
</html>