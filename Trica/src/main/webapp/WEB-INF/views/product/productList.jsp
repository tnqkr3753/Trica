
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>productList.jsp</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/flaticon.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/barfiller.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/style.css" type="text/css">
<link rel="stylesheet" href="./resources/css/productInsert.css"
	type="text/css">

</head>
<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header 시작 -->
	<jsp:include page="../../../header.jsp"></jsp:include>
	<!-- Header 끝 -->

	<div class="breadcrumb-area set-bg"
		data-setbg="./resources/img/background_black.png">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>□ TRICA</h2>
						<div class="breadcrumb__option">
							<a href="#"><i class="fa fa-home"></i> 전자제품</a> <span> 상품
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="container" style="width: 80%;">
		<div class="row-fluid">
			<!--span-->
			<div class="span9" id="content">
				<div class="row-fluid">
					<br />
					<div class="alert alert-warning">
						<h4>등록상품 리스트</h4>
					</div>
				</div>
				<div>
					<div class="table-responsive">
						<table class="table">
							<tr>
								<td>상품이미지</td>
								<td>상품코드</td>
								<td>상품재고</td> 
								<td>상품명</td>
								<td>상품단가</td>
								<td>상품소개</td> 
								<td>상품설명</td>
								<td>상품등록일</td>
							</tr>
							<c:forEach items="${list}" var="list">
								<tr>
									<td><img
										src="./resources/upload/product/img/${list.pctImgName}"
										style="width: 50px; height: 50px;" /></td>
									<td><form action="goModify.trc" method="post">
											<input type="hidden" name="pctNo" value="${list.pctNo}">
										</form>${list.pctNo}</td>
									<td><input type="hidden" name="pctStock"
										value="${list.pctStock}">${list.pctStock}</td>
									<td><input type="hidden" name="pctName"
										value="${list.pctName}">${list.pctName}</td>
									<td><input type="hidden" name="pctPrice"
										value="${list.pctPrice}">${list.pctPrice}</td>
									<td><input type="hidden" name="pctIntro"
										value="${list.pctIntro}">${list.pctIntro}</td>
									<td><input type="hidden" name="pctDetail"
										value="${list.pctDetail}">${list.pctDetail}</td>
									<td><input type="hidden" name="pctRegDate"
										value="${list.pctRegDate}">${list.pctRegDate}</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer End -->
	<jsp:include page="../../../footer.jsp"></jsp:include>

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
	<script src="./resources/js/jquery.cookie.js"></script>
	<script src="http://lab.alexcican.com/set_cookies/cookie.js"></script>
	<script src="./resources/js/productList.js"></script>
</body>
</html>