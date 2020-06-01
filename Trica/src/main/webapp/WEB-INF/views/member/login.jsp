<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">
 
<!-- Google Font -->
<link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/flaticon.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css"> 
<link rel="stylesheet" href="css/barfiller.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css"> 
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css"> 
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/common.css" type="text/css">
 
<!-- Bootstrap CSS -->  
<link rel="stylesheet" 
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Login</title>
 
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0"
	width="100%" height="100%" align="center">
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header Section Begin -->
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
								<li><a href="./Register.jsp">Register</a></li>
							</ul>
						</nav>
						<div class="header__menu__right">
							<a href="#" class="login-btn"><i class="fa fa-user"></i></a>
						</div>
					</div>
				</div> 
				<div id="mobile-menu-wrap"></div>
			</div>
	</header>
	<!-- Header Section End -->
	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-area set-bg"
		data-setbg="img/breadcrumb/breadcrumb-blog.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Login</h2>
						<div class="breadcrumb__option">
							<a href="#"><i class="fa fa-home"></i> Home</a> 
							<span>Our login</span>
						</div> 
					</div>
				</div>
			</div> 
		</div>
	</div>
	<!-- Breadcrumb End -->

	<div class="card align-middle"
		style="width: 20rem; border-radius: 20px;">
		<div class="card-title" style="margin-top: 30px;">
			<h2 class="card-title text-center" style="color: #113366;">Login</h2>
		</div>
		<div class="card-body">  
			<form class="form-signin" method="POST"
				onSubmit="logincall();return false">
				<h5 class="form-signin-heading">로그인 정보를 입력하세요</h5>
				<label for="inputEmail" class="sr-only">Your ID</label> <input
					type="text" id="uid" class="form-control" placeholder="Your ID"
					required autofocus><BR> <label for="inputPassword" 
					class="sr-only">Password</label> <input type="password" id="upw"
					class="form-control" placeholder="Password" required><br>
				<div class="checkbox">
					<label> <input type="checkbox" value="remember-me">
						기억하기
					</label> 
				</div>
				<button id="btn-Yes" class="btn btn-lg btn-primary btn-block"
					type="submit">로 그 인</button>
			</form> 

		</div>
	</div>

	<div class="modal"></div>
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.jsp"><img src="img/footer-logo.png" alt=""></a>
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
								<script>document.write(new Date().getFullYear());</script>
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
	<!-- Footer Section End -->
	<!-- Js Plugins -->
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.barfiller.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
</body>
</html>
</html>