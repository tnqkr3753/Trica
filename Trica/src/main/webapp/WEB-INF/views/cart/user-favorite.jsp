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
    <div class="breadcrumb-area set-bg" data-setbg="./resources/img/breadcrumb/breadcrumb-favorite.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Favorite</h2>
                        <div class="breadcrumb__option">
                            <a href="#"><i class="fa fa-home"></i> Home</a>
                            <span>Favorite</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <div class="pb-5">
    <div class="container">
      <!-- 찜목록 시작 -->
	  <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
          <!-- Shopping cart table -->
          <div class="table-responsive">
            <table class="table">
              <thead>
                <tr>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Select</div>
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
              <c:forEach var="list" items="${wList }">
              <!-- for 끝 -->
              <tr>
                    <td class="border-0 align-middle">
                    <input type="hidden" id="list-like-no" value=${list.LIKE_NO }>
                    <input type="hidden" id="like-pct-no" value=${list.PCT_NO }> 
                    	<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox-${list.RNUM }" class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox-${list.RNUM }"></label>
						</div>
					</td>
                  <th scope="row" class="border-0">
                    <div class="p-2">
                      <img src="./resources/upload/product/img/${list.PCT_IMG_NAME }" alt="" width="70" class="img-fluid rounded shadow-sm" src-name="${list.PCT_IMG_NAME }">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle">${list.PCT_NAME }</a></h5>
                      </div>
                    </div>
                  </th>
                  <td class="border-0 align-middle"><strong id="like-pct-price">${list.PCT_PRICE }</strong></td>
                  <td class="border-0 align-middle"><input type="number" id="pctCount" max="${list.PCT_STOCK }" min="1" value="1"></td>
                  <td class="border-0 align-middle"><a href="#" class="text-dark delete-wish"><i class="fa fa-trash"></i></a></td>
                </tr>
                <!-- for끝 -->
                </c:forEach>
              </tbody>
            </table>
          </div>
          <!-- End -->
          <div id="favorite-btn">
          	<form action="wishToCart.trc">
          	<button type="button" id='add-cart' class="btn btn-outline-secondary">장바구니에 담기</button>
          	</form>
          </div>
        </div>
      </div>
      
		<!-- 찜목록 끝 -->

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
    <script src="./resources/js/favorite.js"></script>
</body>
</html>