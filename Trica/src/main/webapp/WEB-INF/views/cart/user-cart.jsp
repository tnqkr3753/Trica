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
    <div class="breadcrumb-area set-bg" data-setbg="./resources/img/breadcrumb/breadcrumb-cart.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Cart</h2>
                        <div class="breadcrumb__option">
                            <a href="#"><i class="fa fa-home"></i> Home</a>
                            <span>Cart</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <div class="pb-5">
    <div class="container">
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-1 text-uppercase">Select</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="p-2 px-3 text-uppercase">Product</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Price</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Quantity</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Remove</div>
                  </th>
                </tr>
              </thead>
              <tbody>
                <!-- for문 시작 -->
                <c:forEach var="list" items="${cList }">
                <tr>
                    <td class="border-0 align-middle">
                    	<input id="list-pct-index" type="hidden" value="${list[0] }">
                    	<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox-${list[0] }" class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox-${list[0] }"></label>
						</div>
					</td>
                  <th scope="row" class="border-0">
                    <div class="p-2">
                      <img src="./resources/upload/product/img/${list[4] }" alt="" width="70" class="img-fluid rounded shadow-sm">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle">${list[1] }</a></h5><span class="text-muted font-weight-normal font-italic d-block">Category: Watches</span>
                      </div>
                    </div>
                  </th>
                  <td class="border-0 align-middle"><strong class="each-price">${list[3] }</strong><strong>원</strong></td>
                  <td class="border-0 align-middle"><strong>${list[2] }</strong></td>
                  <td class="border-0 align-middle"><a href="cart.trc" class="text-dark delete-order"><i class="fa fa-trash"></i></a></td>
                </tr>
                </c:forEach>
                <!-- for문 끝 -->
              </tbody>
            </table>
          </div>
          <!-- End -->
        </div>
      </div>

      <div class="row py-5 p-4 bg-white rounded shadow-sm">
        <div class="col-lg-6">
          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">쿠폰 번호</div>
          <div class="p-4">
            <p class="font-italic mb-4">만약 쿠폰이 있다면, 이 칸에 쿠폰 번호를 입력해주세요.</p>
            <div class="input-group mb-4 border rounded-pill p-2">
              <input type="text" placeholder="쿠폰 적용" aria-describedby="button-addon3" class="form-control border-0">
              <div class="input-group-append border-0">
                <button id="button-addon3" type="button" class="btn btn-dark px-4 rounded-pill"><i class="fa fa-gift mr-2"></i>적용 쿠폰</button>
              </div>
            </div>
          </div>
          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">판매자에게 하고싶은 말</div>
          <div class="p-4">
            <p class="font-italic mb-4">만약 판매자에게 하고 싶은 말이나 필요한 옵션이 있다면 여기에 적어주세요.</p>
            <textarea name="" cols="30" rows="2" class="form-control"></textarea>
          </div>
        </div>
        <div class="col-lg-6">
          <div class="bg-light rounded-pill px-4 py-3 text-uppercase font-weight-bold">주문 </div>
          <div class="p-4">
            <p class="font-italic mb-4">체크 표시한 상품들이 주문 목록에 들어갑니다.</p>
            <ul class="list-unstyled mb-4">
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">주문 합계 </strong><strong id="totalOrderPrice">0</strong><strong>원</strong></li>
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">배송비</strong><strong id="deliveryPrice">2500</strong><strong>원</strong></li>
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">부가세</strong><strong id="texPrice">0</strong><strong>원</strong></li>
              <li class="d-flex justify-content-between py-3 border-bottom"><strong class="text-muted">합계</strong>
                <h5 class="font-weight-bold" id="total-condition-price">0</h5><h5>원</h5>
              </li>
            </ul><a href="orderConfirm.trc" class="btn btn-dark rounded-pill py-2 btn-block">결제</a>
          </div>
        </div>
      </div>

    </div>
  </div>
    <!-- Most Search Section End -->
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
    <script src="./resources/js/cart.js"></script>
</body>
</html>