<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!-- 숫자를 최대 3자리마다 쉼표를 찍기 위해서 필요-->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=utf-8">
</head>
<body>
	<div id="container">

		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


		<head>
<meta charset="utf-8">

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/blog/">



<!-- Bootstrap core CSS -->
<link href="/wine/assets/bootstrap_assets/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- css 적용불가로 각 한글 마다 굵은글씨 되게 넣어줄것! -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="blog.css" rel="stylesheet">
		</head> 
		<body>
			<center>
				<table>
					<form name="form1" action="/wine/cartInsert">
						<!-- border = "1" 붙이면 테이블 영역 볼 수 있음 -->
						<tr align="center">
							<td rowspan="8"><img align="center"
								src="${wineList.wine_image}" width="300" height="300"></td>
							<!-- wineList : WineController의 상세페이지 부분 mav.addObject("wineList", wineVo);에서 가져옴  -->
						</tr>
						<tr align="center">
							<td><b>상 품 명 : </b></td>
							<td></td>
							<td>${wineList.wine_name}</td>
						</tr>
						<tr align="center">
							<td><b>가&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;격 : </b></td>
							<td></td>
							<td><fmt:formatNumber value="${wineList.wine_price}"
									pattern="###,###,###" />원</td>
						</tr>
						<tr align="center">
							<td><b>국&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;가 : </b></td>
							<td></td>
							<td>${wineList.wine_country}</td>
						</tr>
						<tr align="center">
							<td><b>제 조 사 : </b></td>
							<td></td>
							<td>${wineList.wine_company}</td>
						</tr>
						<tr align="center">
							<td><b>도&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;수 : </b></td>
							<td></td>
							<td>${wineList.wine_alcohol}%</td>
						</tr>
						<tr align="center">
							<td><b>재&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;고 : </b></td>
							<td></td>
							<td>${wineList.wine_stock}개</td>
						</tr>
						<tr align="center">
							<td><b>상품소개 : </b></td>
							<td></td>
							<td>${wineList.wine_description}</td>
						</tr>
						<tr align="right">
						
							<td colspan="4"><br> <br> <!-- 장바구니에 담기 : cartInsert -->
							<c:if test="${User.email != null}">
								<input type="hidden" name="wine_price" value="${wineList.wine_price}">
								<input type="hidden" name="email" value="${User.email}">
								<input type="hidden" name="wine_no" value="${wineList.wine_no}">
								<select name="wine_count">
									<!-- 선택 갯수 -->
									<c:forEach begin="1" end="5" var="i">
										<option value="${i}">${i}</option>
									</c:forEach>
							</select>&nbsp;개 <input type="submit" value="장바구니에 담기"> 
							</c:if>
							</td>
						
						</tr>
						
						<br /><br /><br />
					</form>
				</table>
				<!-- 이전페이지로 돌아가기 -->
				<tr>
					<td colspan="4" align="left"><input align="left" type="button"
						value="돌아가기" onclick="history.back(-1);">&nbsp; <!-- 관리자 -->
						<c:if test="${User.grade == 2}">
							<input align="left" type="button" value="삭제"
								onclick="button_event(${wineList.wine_no})" class="wineDelete">
						</c:if></td>
				</tr>
			</center>

			<!-- footer -->
			<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>
		</body>

		<script type="text/javascript">
		
		function button_event(no) {
			if (confirm("삭제 하시겠습니까?") == true) { //확인
				window.location = "/wine/wineDelete?wine_no=" + no;
			} else { //취소
				return;
			}
		}
	
	
</script>
</html>
