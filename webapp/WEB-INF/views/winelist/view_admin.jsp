<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
<!--    <meta name="viewport" content="width=device-width, initial-scale=1">-->
<!--    <meta name="description" content="">-->
<!--    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">-->
<!--    <meta name="generator" content="Hugo 0.82.0">-->
    <title>Blog Template · Bootstrap v5.0</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.0/examples/blog/">

    

    <!-- Bootstrap core CSS -->
<link href="/wine/assets/bootstrap_assets/dist/css/bootstrap.min.css" rel="stylesheet">

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
    <link href="https://fonts.googleapis.com/css?family=Playfair&#43;Display:700,900&amp;display=swap" rel="stylesheet">
    <!-- Custom styles for this template -->
    <link href="blog.css" rel="stylesheet">
  </head>
  <body>
  
  <main class="container">
               <form action="/wine/wineInsert" method="post" enctype="multipart/form-data">
  <div class="row mb-2">
     
     <div class="col-md-2">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
   
        <div class="col-auto d-none d-lg-block">
          <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>
          <!-- <input type="file" name="wine_image" accept=".gif, .jpg, .png"> -->
		<input type="file" name="file" accept=".gif, .jpg, .png">
        </div>
      </div>
     </div>
     
     <div class="col-md-10">
           <!--   <form action="/wine/wineInsert" method="post"> -->
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div>

          <p><strong class="d-inline-block mb-2 text-primary">상품정보<br></strong></p>
          상품명&nbsp;&nbsp;&nbsp; 
          <input type="text" name="wine_name" placeholder="상품명">&emsp;&emsp;&emsp;&emsp;
          상품종류
         <select name="wine_type">
			<option value="1">레드와인</option>
			<option value="2">화이트와인</option>
			<option value="3">로제와인</option>
		</select><br><br>
          생산국가  
          <input type="text" name="wine_country" placeholder="생산국가">&emsp;&emsp;&emsp;&emsp;
          제조회사
          <input type="text" name="wine_company" placeholder="제조회사"><br><br>
          알콜도수 
          <input type="text" name="wine_alcohol" placeholder="알콜도수">&emsp;&emsp;&emsp;&emsp;
          판매가격
          <input type="text" name="wine_price" placeholder="판매가격"><br><br>
          상품재고
          <input type="text" name="wine_stock" placeholder="상품재고"><br><br>
          상세설명        
          <textarea rows="10" cols="80" name="wine_description"></textarea><br>

          <div class="mb-1 text-muted">
         </div>
         
         <input type="submit">
       
        </div>
       
      </div>
<!--         </form> -->
     </div>
   
<!--     <div class="col-md-6">
      <div class="row g-0 border rounded overflow-hidden flex-md-row mb-4 shadow-sm h-md-250 position-relative">
        <div class="col p-4 d-flex flex-column position-static">
          <strong class="d-inline-block mb-2 text-success">Design</strong>
          <h3 class="mb-0">Post title</h3>
          <div class="mb-1 text-muted">Nov 11</div>
          <p class="mb-auto">This is a wider card with supporting text below as a natural lead-in to additional content.</p>
          <a href="#" class="stretched-link">Continue reading</a>
        </div>
        <div class="col-auto d-none d-lg-block">
          <svg class="bd-placeholder-img" width="200" height="250" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: Thumbnail" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#55595c"/><text x="50%" y="50%" fill="#eceeef" dy=".3em">Thumbnail</text></svg>

        </div>
      </div>
    </div>-->
  </div> 
           </form>
  </main>
	<c:import url="/WEB-INF/views/includes/footer.jsp"></c:import>

	<script src="/wine/assets/bootstrap_assets/dist/js/bootstrap.bundle.min.js"></script>
    
  </body>
</html>