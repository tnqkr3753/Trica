<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>productConfirm.jsp</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">
 
<!-- Css Styles -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="./resources/css/flaticon.css" type="text/css">
<link rel="stylesheet" href="./resources/css/nice-select.css" type="text/css">
<link rel="stylesheet" href="./resources/css/barfiller.css" type="text/css">
<link rel="stylesheet" href="./resources/css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="./resources/css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="./resources/css/style.css" type="text/css">
<link rel="stylesheet" href="./resources/css/productInsert.css" type="text/css">

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header 시작 -->
		   <jsp:include page="../../../header.jsp"></jsp:include>
	<!-- Header 끝 -->

	<section class="hero set-bg"
		data-setbg="./resources/img/background_black.png"></section>

	<div class="container" width="80%">
		<div class="row-fluid">
			<div class="span9" id="content">
				<div class="row-fluid">
					<br />
					<div class="alert alert-warning">
						<h4>상품 등록이 완료되었습니다!</h4>
					</div>

					<table class="table">
						<tr>
							<th>상품 등록일</th>
							<td>${vo.pctRegDate}</td>
						</tr>
						<tr>
							<th>1차 카테고리 분류</th>
							<td>${vo.bigC}</td>
						</tr>
						<tr>
							<th>2차 카테고리 분류</th>
							<td>${vo.smallC}</td>
						</tr>
						<tr>
							<th>상품명</th>
							<td>${vo.pctName}</td>
						</tr>
						<tr>
							<th>상품재고</th>
							<td>${vo.pctStock}개</td>
						</tr>
						<tr>
							<th>상품가격</th>
							<td>${vo.pctPrice}원</td>
						</tr>
						<tr>
							<th>상품소개</th>
							<td>${vo.pctIntro}</td>
						</tr>
						<tr>
							<th>상품설명</th>
							<td>${vo.pctDetail}</td> 
						</tr>
						<tr> 
							<th>상품이미지</th>
							<td><img
								src="./resources/upload/product/img/${vo.pctImgName }"/></td>
						</tr>
					</table>  
				</div>
				
				<div class="text-center">
					<form action="goIndex.trc" method="post">
						<input type="submit" value="홈으로" class="btn_pct_insert">
					</form>
				</div>
			</div>
		</div>
	</div>

	<!-- Footer 시작 -->
	    <jsp:include page="../../../footer.jsp"></jsp:include>
	<!-- Footer 끝 -->

	<!-- Js Plugins -->
	<script src="./resources/js/jquery-3.3.1.min.js"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
	<script src="./resources/js/jquery.nice-select.min.js"></script>
	<script src="./resources/js/jquery-ui.min.js"></script>
	<script src="./resources/js/jquery.nicescroll.min.js"></script>
	<script src="./resources/js/jquery.barfiller.js"></script>
	<script src="./resources/js/jquery.magnific-popup.min.js"></script>
	<script src="./resources/js/jquery.slicknav.js"></script>
	<script src="./resources/js/owl.carousel.min.js"></script>
	<script src="./resources/js/main.js"></script>
	<script src="./resources/js/productInsert.js"></script>
	<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
</body> 
</html>