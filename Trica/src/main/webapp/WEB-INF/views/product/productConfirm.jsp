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
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="col-lg-3 col-md-3">
					<!-- <div class="header__logo">
                        <a href="./index.jsp"><img src="img/Logo.png" alt=""></a>
                    </div> -->
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="header__nav">
						<nav class="header__menu mobile-menu">
							<ul>
								<li class="active"><a href="./index.jsp">Home</a></li>
								<li><a href="#">Categories</a></li>
								<li><a href="#">Pages</a>
									<ul class="dropdown">
										<li><a href="./about.html">About</a></li>
										<li><a href="./listing-details.html">Listing Details</a></li>
										<li><a href="./blog-details.html">Blog Details</a></li>
										<li><a href="./contact.html">Contact</a></li>
									</ul></li>
								<li><a href="./blog.html">Blog</a></li>
								<li><a href="#">Shop</a></li>
							</ul>
						</nav>
						<div class="header__menu__right">
							<a href="#" class="primary-btn"><i class="fa fa-plus"></i>Add
								Listing</a> <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
						</div>
					</div>
				</div>
			</div>
			<div id="mobile-menu-wrap"></div>
		</div>
	</header>
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
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.html"><img
								src="./resources/img/footer-logo.png" alt=""></a>
						</div>
						<p>Challenging the way things have always been done can lead
							to creative new options that reward you.</p>
					</div>
				</div>
				<div class="col-lg-4 offset-lg-1 col-md-6">
					<div class="footer__address">
						<ul>
							<li><span>Call Us:</span>
								<p>(+12) 345-678-910</p></li>
							<li><span>Email:</span>
								<p>info.colorlib@gmail .com</p></li>
							<li><span>Fax:</span>
								<p>(+12) 345-678-910</p></li>
							<li><span>Connect Us:</span>
								<div class="footer__social">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-skype"></i></a>
								</div></li>
						</ul>
					</div>
				</div>
				<div class="col-lg-3 offset-lg-1 col-md-6">
					<div class="footer__widget">
						<ul>
							<li><a href="#">Home</a></li>
							<li><a href="#">Support</a></li>
							<li><a href="#">How it work</a></li>
							<li><a href="#">Contact</a></li>
							<li><a href="#">Blog</a></li>
						</ul>
						<ul>
							<li><a href="#">Sign In</a></li>
							<li><a href="#">How it Work</a></li>
							<li><a href="#">Advantages</a></li>
							<li><a href="#">Direo App</a></li>
							<li><a href="#">Packages</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="footer__copyright">
						<div class="footer__copyright__text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="footer__copyright__links">
							<a href="#">Terms</a> <a href="#">Privacy Policy</a> <a href="#">Cookie
								Policy</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
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

</body>
</html>