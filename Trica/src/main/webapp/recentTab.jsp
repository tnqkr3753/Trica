<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String projectName = "Trica";
%>
<!DOCTYPE html>
<html lang="zxx">

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>전자제품의 모든것 ! TRICA</title>

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
<link rel="stylesheet" href="./resources/css/indexEunju.css"
	type="text/css">

<link rel="stylesheet" href="./resources/css/recenttab.css"
	type="text/css">
</head>

<body>
	<!-- Header End -->
	<jsp:include page="header.jsp"></jsp:include>

	<!-- Hero Section Begin -->
	<section class="hero set-bg"
		data-setbg="./resources/img/background_black.png">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="hero__text">
						<div class="section-title">
							<h1>□ TRICA</h1>
							<p>전자제품의 모든것 !</p>
						</div>
						<div class="hero__search__form">
							<form action="search.trc">
								<input type="text" name="title" placeholder="검색어를 입력해주세요">
								<div class="select__option fir">
									<select name="bc_no">
										<option value="">기본 카테고리</option>
										<option value="1">TV/냉장고/세탁기/건조기</option>
										<option value="1">TV/냉장고/세탁기/건조기</option>
										<option value="2">카메라/게임/음향</option>
										<option value="3">주방가전</option>
										<option value="4">컴퓨터/휴대폰</option>
										<option value="5">계절가전</option>
									</select>
								</div>
								<div class="select__option sec">
									<select name="sc_no">
										<option value="">세부 카테고리</option>
									</select>
								</div>
								<button type="submit">찾기</button>
							</form>
						</div>





						<div id="_wrap" class="wrap">
							<div id="_container" class="container main">
								<div class="container_inner">


									<div id="_side" class="side_wrap">

										<div class="side_inner" data-wrapper="side-fixed-banner"
											id="_sideBarWrapper">


											<div class="side_todayview" id="_sideInfo" data-state="fixed">
												<div class="todayview_inner"
													style="margin-left: 0px; position: fixed; top: 20px;">
													<div class="box_basket"></div>
													<div class="box_today">
														<div class="box_today_inner"
														style="margin-left: 150px; margin-top: 200px;">
															<div class="title_today">
																<h2>최근본상품</h2>
																<em id="_recentListCount">0</em>
															</div>


															
															<div id="_receneListContainer"></div>
															
															
															<div class="no_list" id="_recentNoList"
																style="display: block;">
																최근 본 상품이 <br>없습니다.
															</div>

															<div class="today_paging">
																<span class="numbering"> <strong class="on"
																	id="_recentCurrentGroup">1</strong>
																	/<em id="_recentTotalGroup">1</em>
																</span> <br />
																<button class="lay_ico btn_prev" id="_recentPrevBtn">이전</button>
																<button class="lay_ico btn_next" id="_recentNextBtn">다음</button>
															</div>
														</div>
													</div>
												</div>
											</div>

										</div>
									</div>


								</div>
							</div>
						</div>







						<ul class="hero__categories__tags">
							<li><a href="#"><img
									src="./resources/img/hero/cat-1.png" alt=""> TV</a></li>
							<li><a href="#"><img
									src="./resources/img/hero/cat-2.png" alt=""> 냉장고</a></li>
							<li><a href="#"><img
									src="./resources/img/hero/cat-3.png" alt=""> 카메라</a></li>
							<li><a href="#"><img
									src="./resources/img/hero/cat-4.png" alt=""> 전자레인지</a></li>
							<li><a href="#"><img
									src="./resources/img/hero/cat-5.png" alt=""> 노트북</a></li>
							<li><a href="#"><img
									src="./resources/img/hero/cat-6.png" alt=""> All
									Categories</a></li>
						</ul>

					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Hero Section End -->

	<!-- Categories Section Begin -->
	<section class="categories spad">
		<div class="container">

			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>카테고리</h2>
						<p>세상의 모든 전자제품을 모으다</p>
					</div>
					<div class="categories__item__list">

						<div class="categories__item" id="1">
							<img src="./resources/img/categories/cat-1.png" alt="">
							<h5>TV/냉장고/세탁기/건조기</h5>
							<span>0개</span>
						</div>
						<div class="categories__item" id="2">
							<img src="./resources/img/categories/cat-2.png" alt="">
							<h5>카메라/게임/음향</h5>
							<span>0개</span>
						</div>
						<div class="categories__item" id="3">
							<img src="./resources/img/categories/cat-3.png" alt="">
							<h5>주방가전</h5>
							<span>0개</span>
						</div>
						<div class="categories__item" id="4">
							<img src="./resources/img/categories/cat-4.png" alt="">
							<h5>컴퓨터/휴대폰</h5>
							<span>0개</span>
						</div>
						<div class="categories__item" id="5">
							<img src="./resources/img/categories/cat-5.png" alt="">
							<h5>계절가전</h5>
							<span>0개</span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Categories Section End -->

	<!-- Testimonial Section Begin -->
	<section class="testimonial spad set-bg" style="background: gray;">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>진행중인 이벤트</h2>
					</div>
					<div class="testimonial__slider owl-carousel">
						<div class="testimonial__item">
							<p>
								<img src="./resources/img/event/event1.png" width="500"
									height="400">
							</p>
						</div>
						<div class="testimonial__item">
							<p>
								<img src="./resources/img/event/event2.jpg" width="500"
									height="400">
							</p>
						</div>
						<div class="testimonial__item">
							<p>
								<img src="./resources/img/event/event3.jpg" width="500"
									height="400">
							</p>
						</div>
						<div class="testimonial__item">
							<p>
								<img src="./resources/img/event/event4.jpg" width="500"
									height="400">
							</p>
						</div>
						<div class="testimonial__item">
							<p>
								<img src="./resources/img/event/event5.jpg" width="500"
									height="400">
							</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Testimonial Section End -->

	<!-- 오늘의 상품 Section 시작 -->
	<section class="most-search spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>오늘의 상품</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-12">
					<div class="most__search__tab">
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item"><a class="nav-link active"
								data-toggle="tab" href="#" role="tab" data-tab="all"> <span
									class="icon_grid-3x3"></span> 전체상품
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#" role="tab" data-tab="popular"> <span
									class="icon_like_alt"></span> 인기상품
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#" role="tab" data-tab="recommend"> <span
									class="icon_heart"></span> 추천상품
							</a></li>
							<li class="nav-item"><a class="nav-link" data-toggle="tab"
								href="#" role="tab" data-tab="new"> <span class="icon_star"></span>
									새로 만나는 신상품
							</a></li>
						</ul>
					</div>
					<!-- tab-content에 붙이기 -->
					<div class="tab-content">
						<div class="tab-pane active" id="tabContent" role="tabpanel">
							<div class="row"></div>
						</div>
					</div>
				</div>
			</div>
	</section>
	<!--  오늘의 상품 section 끝 -->

	<!-- Feature Location Section Begin -->
	<section class="feature-location spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Top Featured Locations</h2>
						<p>Representative electronics store</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<a href="http://www.samsungsales.co.kr"
						class="feature__location__item large-item set-bg"
						data-setbg="./resources/img/feature-location/samsung.PNG">
						<div class="feature__location__item__text">
							<h5>Samsung Digital Plaza</h5>
							<ul>
								<li>2045 Listings</li>
								<li>3648 Users</li>
							</ul>
						</div>
					</a>
				</div>
				<div class="col-lg-6">
					<div class="row">
						<div class="col-lg-6 col-md-6">
							<a href="http://www.lge.co.kr"
								class="feature__location__item set-bg"
								data-setbg="./resources/img/feature-location/lg_bestshop.jpg">
								<div class="feature__location__item__text">
									<h5>LG Best Shop</h5>
								</div>
							</a>
						</div>
						<div class="col-lg-6 col-md-6">
							<a href="http://www.e-himart.co.kr"
								class="feature__location__item set-bg"
								data-setbg="./resources/img/feature-location/hi_mart.PNG">
								<div class="feature__location__item__text">
									<h5>Lotte Himart</h5>
								</div>
							</a>
						</div>
					</div>
					<a href="http://m.etland.co.kr"
						class="feature__location__item set-bg"
						data-setbg="./resources/img/feature-location/E_Land.PNG">
						<div class="feature__location__item__text">
							<h5>Electronic Land</h5>
						</div>
					</a>
				</div>
			</div>
		</div>
	</section>
	<!-- Feature Location Section End -->

	<!-- Blog Section Begin -->
	<section class="news-post spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>News Post</h2>
						<p>Checkout Latest News And Articles From Our Blog</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="./resources/img/blog/news-1.PNG"></div>
						<div class="blog__item__text">
							<ul class="blog__item__tags">
								<li><i class="fa fa-tags"></i>Electronic</li>
								<li>store</li>
							</ul>
							<h5>
								<a href="https://news.samsung.com/kr/삼성전자-갤러리아-백화점-광교점에-더-월-체험"">Samsung
									Newsroom Latest Article</a>
							</h5>
							<ul class="blog__item__widget">
								<li><i class="fa fa-clock-o"></i> 20th May 31, 2020</li>
								<li><i class="fa fa-user"></i>Samsung Blog</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="./resources/img/blog/news-2.PNG"></div>
						<div class="blog__item__text">
							<ul class="blog__item__tags">
								<li><i class="fa fa-tags"></i> Electronic</li>
								<li>store</li>
							</ul>
							<h5>
								<a
									href="https://social.lge.co.kr/product/httpssocial-lge-co-krproductdrying-machine07/">
									All of the dryer ‘condenser automatic cleaning system’ that LG
									Electronics researchers say </a>
							</h5>
							<ul class="blog__item__widget">
								<li><i class="fa fa-clock-o"></i> 20th May 28, 2020</li>
								<li><i class="fa fa-user"></i> LG News Room</li>
							</ul>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="./resources/img/blog/news-3.PNG"></div>
						<div class="blog__item__text">
							<ul class="blog__item__tags">
								<li><i class="fa fa-tags"></i> Electronic</li>
								<li>store</li>
							</ul>
							<h5>
								<a href="https://blog.lotte.co.kr/37827"> Visit 7 Lotte
									Shopping Malls at once! Online shopping platform Lotte ON </a>
							</h5>
							<ul class="blog__item__widget">
								<li><i class="fa fa-clock-o"></i> 20th May 12, 2020</li>
								<li><i class="fa fa-user"></i> Lotte blog</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	<!-- Footer End -->
	<jsp:include page="footer.jsp"></jsp:include>

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
	<script src="./resources/js/categories.js"></script>
	<script src="./resources/js/getList.js"></script>

</body>
</html>