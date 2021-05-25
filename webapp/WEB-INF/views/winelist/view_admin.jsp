<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>

<link rel="canonical"
	href="https://getbootstrap.com/docs/5.0/examples/blog/">

<!-- Bootstrap core CSS -->
<link href="/wine/assets/bootstrap_assets/dist/css/bootstrap.min.css"
	rel="stylesheet">


<!-- Custom styles for this template -->
<link
	href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap"
	rel="stylesheet">
<!-- Custom styles for this template -->
<link href="blog.css" rel="stylesheet">

<meta http-equiv="content-type" content="text/html; charset=utf-8">
<script type="text/javascript">
	  var loadFile = function(event) {
	    var output = document.getElementById('image_section');
	    output.src = URL.createObjectURL(event.target.files[0]);
	    output.onload = function() {
	      URL.revokeObjectURL(output.src) // free memory
	    }
	  };

</script>



</head>
<body>
	<div id="container">

		<!-- header -->
		<c:import url="/WEB-INF/views/includes/header.jsp"></c:import>


		<main class="container">
			<form action="/wine/wineInsert" method="post"
				enctype="multipart/form-data">
				<div class="row mb-2">

					<div class="col-md-2">
						<div
							class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">

							<div class="col-auto d-none d-lg-block">
								<img id="image_section" src="#" width="200" height="250" /> 
								<input type="file" id="file" name="file" accept=".gif, .jpg, .png" onchange="loadFile(event)">
							</div>
						</div>
					</div>

					<div class="col-md-10">
						<div
							class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
							<div>

								<p>
									<strong class="d-inline-block mb-2 text-primary">상품정보<br></strong>
								</p>
								상품명&nbsp;&nbsp;&nbsp; <input type="text" name="wine_name"
									placeholder="상품명">&emsp;&emsp;&emsp;&emsp; 상품종류 <select
									name="wine_type">
									<option value="1">레드와인</option>
									<option value="2">화이트와인</option>
									<option value="3">로제와인</option>
								</select><br>
								<br> 생산국가 <input type="text" name="wine_country"
									placeholder="생산국가">&emsp;&emsp;&emsp;&emsp; 제조회사 <input
									type="text" name="wine_company" placeholder="제조회사"><br>
								<br> 알콜도수 <input type="text" name="wine_alcohol"
									placeholder="알콜도수">&emsp;&emsp;&emsp;&emsp; 판매가격 <input
									type="text" name="wine_price" placeholder="판매가격"><br>
								<br> 상품재고 <input type="text" name="wine_stock"
									placeholder="상품재고"><br>
								<br> 상세설명
								<textarea rows="10" cols="80" name="wine_description"></textarea>
								<br>

								<div class="mb-1 text-muted"></div>

								<input type="submit">

							</div>

						</div>
					</div>

				</div>
			</form>
		</main>
		<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

		<script
			src="/wine/assets/bootstrap_assets/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>