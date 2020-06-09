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
<link rel="stylesheet" href="./resources/css/common.css" type="text/css">
 
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
	<jsp:include page="../../../header.jsp"></jsp:include>
	<!-- Header Section End -->
	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-area set-bg"
		data-setbg="./resources/img/breadcrumb/breadcrumb-blog.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Login</h2>
						<div class="breadcrumb__option">
							<a href="#"><i class="fa fa-home"></i> Home</a> <span>Our
								login</span>
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
				onSubmit="logincall();return false" action="passChk.trc">
				<h5 class="form-signin-heading">비밀번호를 입력하세요</h5>  
				<label for="inputPassword" class="sr-only">Password</label>  
				<input 
					name="password" type="password" id="upw" class="form-control"
					placeholder="Password" required><br> 
 				<button id="btn-Chk" class="btn btn-lg btn-primary btn-block"
					onclick="location.href='Register.trc'">확 인</button>
			</form>              
		</div>            
	</div>             
  
	<div class="modal"></div>
 
	<!-- Footer Section Begin --> 
	<jsp:include page="../../../footer.jsp"></jsp:include>
	<!-- Footer Section End -->
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
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>   
	<script src="http://lab.alexcican.com/set_cookies/cookie.js"></script> 	
</body> 
</html>  
</html>