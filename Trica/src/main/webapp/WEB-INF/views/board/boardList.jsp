<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
<title>Insert title here</title>
    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap" rel="stylesheet">

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
</head>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div> 

    <!-- Header Section Begin --> 
    <jsp:include page="../../../header.jsp"></jsp:include>
    <!-- Header Section End --> 
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-area set-bg" data-setbg="./resources/img/breadcrumb/breadcrumb-orderlist.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Board</h2>
                        <div class="breadcrumb__option">
                            <a href="#"><i class="fa fa-home"></i> Home</a>
                            <span>Board</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <!-- Board Start -->
    <div class="pb-5">
    <div class="container">
	<div class="row">
	<div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
		<div class="col-md-12">
		
			<div class="tabbable" id="tabs-367706">
				<ul id="navtab" class="nav nav-tabs">
					<li class="nav-item">
						<a class="nav-link active" href="#" data-tab="Free">자유게시판</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#" data-tab="Inquiry">문의게시판</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="#" data-tab="Review">상품리뷰</a>
					</li>
				</ul>
				<div class="tab-content">
					<div class="tab-pane active" id="tabContent">

					</div>
				</div>
			</div>
			
		</div>
	</div>
	</div>
</div>
</div>
    <!-- Board End -->
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
    <script src="./resources/js/board.js"></script>
    <script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
</body>
</html>