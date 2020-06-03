<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>productDetails.jsp</title>

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
<link rel="stylesheet" href="./resources/css/productDetails.css" type="text/css">


</head>

<body>
	<!-- Header 시작 -->
	<header class="header">
		<div class="container-fluid">
			<div class="row">
				<div class="header__logo">
					<a href="./index.html"><img src="" alt=""></a>
				</div>
				<div class="col-lg-9 col-md-9">
					<div class="header__nav">
						<nav class="header__menu mobile-menu">
							<ul>
								<li><a href="./index.html">Home</a></li>
								<li><a href="./listing.html">Listing</a></li>
								<li><a href="#">Categories</a></li>
								<li><a href="#">Pages</a>
									<ul class="dropdown">
										<li><a href="./about.html">About</a></li>
										<li><a href="./listing-details.html">Listing Details</a></li>
										<li><a href="./blog-details.html">Blog Details</a></li>
										<li><a href="./contact.html">Contact</a></li>
									</ul></li>
								<li class="active"><a href="./blog.html">Blog</a></li>
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
	<!-- 상단 이미지 -->
       <div class="breadcrumb-area set-bg" data-setbg="./resources/img/background_black.png">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>□ TRICA</h2>
                        <div class="breadcrumb__option">
                            <a href="#"><i class="fa fa-home"></i> 전자제품</a>
                            <span> 상품 </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
	<!-- 상세페이지 시작 -->
	<div class="content">
		<section class="product_details">
			<br />

			<!-- 상품 큰 제목 -->
			<div class="detailHeader">
				<h3>${vo.pctName }</h3>
			</div>

			<div class="container">
				<br />
				<!-- 상품 이미지 출력 -->
				<div class="img" style="float: left;">
					<img src="./resources/upload/product/img/${vo.pctImgName }" width="500" height="500">
				</div>

				<!-- 오른쪽 상품상세정보 rightSec 출력 -->
				<div class="rightSec" style="float: left;">

					<dl>
						<dt>소개</dt>
						<dd>${vo.pctIntro }</dd>
					</dl>
					<dl>
						<dt>정가</dt>
						<dd>
							<del>
								<span>${vo.pctPrice }</span>원
							</del>
						</dd>
					</dl>
					<dl class="item_price">
						<dt>판매가</dt>
						<dd>
							<strong>${vo.pctPrice }</strong>원
						</dd>
					</dl>
					<dl class="item_delivery">
						<dt>배송비</dt>
						<dd>
							업체배송 <img src="./resources/img/detail/btnTip.gif" id="aaa" /></a>
							<div id="hoverpopup" class="hoverpopup" runat="server"
								style="border: solid 2px black; border-radius: 10px; visibility: hidden; position: absolute; background: #F5F5F5; width: 550px;">
								<h3>업체배송 상세정보</h3>
								<p class="txt">
									본 상품은 업체에서 배송/발송하는 상품입니다.<br> 대형상품은 업체에서 직접 배송/설치하나, 소형상품은
									업체에서 택배로 발송합니다.
								</p>
								<p class="tit">직접 배송 상품</p>
								<p class="df">- TV/냉장고/세탁기/김치냉장고/에어컨 등 대형상품 대상</p>
								<p class="df">- 업체 보유 물량 부족이나 도서산간지역의 경우 배송이 지연될 수 있습니다.</p>
								<p class="tit">택배배송 상품</p>
								<p class="df">- 택배배송 상품은 결제 후 영업일 기준 2~3일의 배송기간이 소요됩니다.</p>
								<p class="df">- 도서산간지역의 경우 배송기간이 지연될 수 있습니다.</p>
							</div>
						</dd>
					</dl>

					<dl class="pct_code">
						<dt>상품코드</dt>
						<dd>${vo.pctNo }</dd>
					</dl>
					<td class="cart_prdt_name">
						<div class="item_choice_list">
							<table class="option_display_area" border="0" cellpadding="0" cellspacing="0">
								<colgroup>
									<col width="330px">
									<col width="80px">
									<col width="40px">
								</colgroup>
								<tbody id="option_display_item_0">
									<tr class="check optionKey_0">
									<tr>
										<span class="count"> <span class="goods_qty">
												<td><strong><span>수량</span></strong></td>
												<td><input id="cnt" type="text" class="goodsCnt_0" title="수량" value="1">
														<input id="stock" type="hidden" value="${vo.pctStock }">
												</td>
												<td><input id="increase-cnt" type="button" class="up_goods_cnt" title="증가" value="▲"></td>
												<td><input id="decrease-cnt" type="button" class="down_goods_cnt" title="감소" value="▼"></td>
										</span></span>
									</tr>
								</tbody>
							</table>
							</div>
							<br />
							
							<div class="total">
								<dt>총 금액</dt>
								<dd>
									<input type="hidden" id="pctPrice" value="${vo.pctPrice }"> 
									<strong class="total_price">${vo.pctPrice }</strong>
								</dd>
							</div>
							<br />
							<form name="addForm" action="addCart.trc" method="POST">
							<div class="btn_choice_box">
								<input type="button" class="btn_add_cart" value="장바구니">
								<input type="submit" class="btn_add_wish" value="찜하기">
								<input type="button" class="btn_add_order" value="구매하기">
								<input type="hidden" name="pctStock">
								<input type="hidden" value="${vo.pctNo }" name="pctNo">
							</div>
							</form>	
							<br /> <br /> <br /> <br /> <br /> <br /> <br />
					</td>
				</div>
				<!-- rightSec 끝 -->
			</div>

			<!-- 상세정보 시작 -->
			<!-- *********** detailTab : 스크롤 내려도 고정되게 수정해야함 *********** -->
				<div class="detailTab"
					style="position: absolute; top: 630px; left: 0px; width: 1090px; margin-left: 0px; z-index: 1;">
					<a href="#detail_cont" class="active" style="margin-left: 33px; margin-right: 33px;">상품상세설명</a>
	<!-- 				<a href="#nece_cont" style="margin-left: 33px; margin-right: 33px;">필수정보</a> -->
					<a href="#refund_cont" style="margin-left: 33px; margin-right: 33px;">교환/환불정보</a>
				</div>
			
			<div class="detail_cont" id="detail_cont">
				<h3>상품상세정보</h3>
				<div class="detail_explain_box">

					<p style="text-align: center;" align="center">
						${vo.pctDetail }
					</p>
				</div>
			</div>
			
<!-- 			<div class="nece_cont" id="nece_cont"> -->
<!-- 				<h3>필수정보</h3> -->
<!-- 				<div class="nece_explain_box"> -->

<!-- 					<p style="text-align: center;" align="center"> -->
<!-- 						<img src="./resources/img/details/nece1.PNG"> -->
<!-- 					</p> -->
<!-- 				</div> -->
<!-- 			</div> -->
			
			<div class="refund_cont" id="refund_cont">
				<h3>교환 및 반품 안내</h3>
				<div class="refund_explain_box">
					<p style="text-align: center;" align="center">
						<img src="./resources/img/detail/notice.png">
					</p>
				</div>
			</div>
			
		</section>
		<!-- 상세정보 끝 -->
	</div>
	<!-- Footer 시작 -->
	<footer class="footer">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-md-6">
						<div class="footer__about">
							<div class="footer__about__logo">
								<a href="./index.html"><img src="./resources/img/footer-logo.png" alt=""></a>
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
										document
												.write(new Date().getFullYear());
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
		<script type="text/javascript" src="./resources/js/productDetails.js"></script>
</body>
</html>