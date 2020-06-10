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
                        <h2>Chart</h2>
                        <div class="breadcrumb__option">
                            <a href="#"><i class="fa fa-home"></i> Chart</a>
                            <span>Chart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
	<!-- chart -->
	<div class="pb-5">
	    <div class="container-fluid">
			<div class="row">
				<div class="col-md-12">
					
					<div class="row">
						<div class="col-md-4">
						</div>
						<div class="col-md-4 p-5 bg-white rounded shadow-sm mb-5 text-center">
							<input class="btn chart-btn" type="button" value="날짜 별 주문 건수" tab-link="chart/getDatechart.trc">
							<input class="btn chart-btn" type="button" value="카테고리 별 조회수" tab-link="chart/getCatechart.trc">
							<input class="btn chart-btn" type="button" value="날짜 별 매출"  tab-link="chart/getSaleschart.trc">
						</div>
						<div class="col-md-4">
						</div>
						<div  id="columnchart_values"></div>
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
     <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src="./resources/js/chart.js"></script>
</body>
</html>