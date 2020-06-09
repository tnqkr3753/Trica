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
	   <jsp:include page="../../../header.jsp"></jsp:include>
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
					<input type="hidden" value="${vo.pctImgName }" id="pctImgName">
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
									<strong id="totalPrice" class="total_price">${vo.pctPrice }</strong>
								</dd>
							</div>
							<br />
							<div class="btn_choice_box">
								<input type="button" class="btn_add_cart" value="장바구니" act="addCart.trc">
								<input type="button" class="btn_add_wish" value="찜하기" act="addWish.trc">
								<input type="button" class="btn_add_order" value="구매하기" act="addBuy.trc">
								<input type="hidden" value="${vo.pctNo }" id="pctNo" name="pctNo">
							</div>
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
		<script type="text/javascript" src="./resources/js/productDetails.js"></script>
		<script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
</body>
</html>