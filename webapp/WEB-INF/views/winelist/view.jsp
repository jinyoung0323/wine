<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>상세페이지</title>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div id="container">

		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


		<head>
<meta charset="utf-8">
<!--    <meta name="viewport" content="width=device-width, initial-scale=1">-->
<!--    <meta name="description" content="">-->
<!--    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">-->
<!--    <meta name="generator" content="Hugo 0.82.0">-->
<title>Blog Template · Bootstrap v5.0</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/blog/">



<!-- Bootstrap core CSS -->
<link href="/wine/assets/bootstrap_assets/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!--    <style>-->
<!--      .bd-placeholder-img {-->
<!--        font-size: 1.125rem;-->
<!--        text-anchor: middle;-->
<!--        -webkit-user-select: none;-->
<!--        -moz-user-select: none;-->
<!--        user-select: none;-->
<!--      }-->

<!--      @media (min-width: 768px) {-->
<!--        .bd-placeholder-img-lg {-->
<!--          font-size: 3.5rem;-->
<!--        }-->
<!--      }-->
<!--    </style>-->


<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="blog.css" rel="stylesheet">
		</head>
		<body>
			<center>
			
				<table>
				<form name="form1" method="post" action="/wine/cart">
					<tr align="center">
						<td rowspan="8"><img align="center"
							src="${wineList.wine_image}" width="300" height="300"></td>
						<td>상품번호 : </td>
						<td></td>
						<td>${wineList.wine_no}</td>
					</tr>
					<tr align="center">
						<td>상 품 명 : </td>
						<td></td>
						<td>${wineList.wine_name}</td>
					</tr>
					<tr align="center">
						<td>가&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;격 : </td>
						<td></td>
						<td>${wineList.wine_price}</td>
					</tr>
					<tr align="center">
						<td>국&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가 : </td>
						<td></td>
						<td>${wineList.wine_country}</td>
					</tr>
					<tr align="center">
						<td>제 조 사 : </td>
						<td></td>
						<td>${wineList.wine_company}</td>
					</tr>
					<tr align="center">
						<td>도&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수</td>
						<td></td>
						<td>${wineList.wine_alcohol}</td>
					</tr>
					<tr align="center">
						<td>재&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;고 : </td>
						<td></td>
						<td>${wineList.wine_stock}</td>
					</tr>
					<tr align="center">
						<td>상품소개 : </td>
						<td></td>
						<td>${wineList.wine_description}</td>
					</tr>
					<tr align="right">
						<td colspan="4"><br> <br>
								<select name="amount">
									<c:forEach begin="1" end="10" var="i">
										<option value="${i}">${i}</option>
									</c:forEach>
								</select>&nbsp;개 <input type="submit" value="장바구니에 담기">
								<input type="hidden" name="wine_count" value=""> 
					</tr>
					<tr>

					</tr>
					<br>
					<br>
					<br>
					</form>
					</center>
					<td colspan="4" align="left"><input align="left"
						type="button" value="돌아가기" onclick="history.back(-1);"></td>


				</table>


				<!-- footer -->
				<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</body>
</html>