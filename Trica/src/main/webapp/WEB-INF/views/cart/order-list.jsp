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
 <link rel="stylesheet" href="./resources/css/searchView.css" type="text/css">
</head>
<body>

    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin --> 
		<jsp:include page="../../../header.jsp"></jsp:include>
    <!-- Header Section End --> 
	<div class="breadcrumb-area set-bg" data-setbg="./resources/img/breadcrumb/breadcrumb-orderlist.jpg">
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
      <div class="row">
        <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">

          <!-- Shopping cart table -->
<<<<<<< HEAD
					<div class="table-responsive">
						<table class="table">
							<thead>
								<tr>
									<th scope="col" class="border-0 bg-light">
										<div class="py-1 text-uppercase">ORDER NUMBER</div>
									</th>
									<th scope="col" class="border-0 bg-light">
										<div class="p-2 px-3 text-uppercase">PRODUCT</div>
									</th>
									<th scope="col" class="border-0 bg-light">
										<div class="py-2 text-uppercase">ORDER COUNT</div>
									</th>
									<th scope="col" class="border-0 bg-light">
										<div class="py-2 text-uppercase">ORDER PRICE</div>
									</th>
									<th scope="col" class="border-0 bg-light">
										<div class="py-2 text-uppercase">TOTAL PRICE</div>
									</th>
								</tr>
							</thead>
							<tbody>
=======
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
                    <div class="py-2 text-uppercase">Delivery status</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Report</div>
                  </th>
                </tr>
              </thead>
              <tbody>
                <tr>
                    <td class="border-0 align-middle" rowspan='3'>
                    	<div class="custom-control custom-checkbox">
							<input type="checkbox" id="jb-checkbox-1" class="custom-control-input">
							<label class="custom-control-label" for="jb-checkbox-1"></label>
						</div>
					</td>
                  <th scope="row" class="border-0">
                    <div class="p-2">
                      <img src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-1_zrifhn.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle">Timex Unisex Originals</a></h5><span class="text-muted font-weight-normal font-italic d-block">Category: Watches</span>
                      </div>
                    </div>
                  </th>
                  <td class="border-0 align-middle"><strong>$79.00</strong></td>
                  <td class="border-0 align-middle"><strong>3</strong></td>
                  <td class="align-middle"><strong>배송중</strong></td>
                  <td class="border-0 align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a></td>
                </tr>
                <tr>
                  <th scope="row">
                    <div class="p-2">
                      <img src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-3_cexmhn.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0"><a href="#" class="text-dark d-inline-block">Lumix camera lense</a></h5><span class="text-muted font-weight-normal font-italic">Category: Electronics</span>
                      </div>
                    </div>
                  </th>
                  <td class="align-middle"><strong>$79.00</strong></td>
                  <td class="align-middle"><strong>3</strong></td>
                  <td class="align-middle"><strong>배송중</strong></td>
                  <td class="align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a>
                  </td>
                </tr>
                <tr>
                  <th scope="row">
                    <div class="p-2">
                      <img src="https://res.cloudinary.com/mhmd/image/upload/v1556670479/product-2_qxjis2.jpg" alt="" width="70" class="img-fluid rounded shadow-sm">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block">Gray Nike running shoe</a></h5><span class="text-muted font-weight-normal font-italic">Category: Fashion</span>
                      </div>
                    </div>
                    <td class="align-middle"><strong>$79.00</strong></td>
                    <td class="align-middle"><strong>3</strong></td>
                    <td class="align-middle"><strong>배송중</strong></td>
                    <td class="align-middle"><a href="#" class="text-dark"><i class="fa fa-trash"></i></a>
                    </td>
                </tr>
              </tbody>
            </table>
          </div>
          <!-- End -->
        </div>
      </div>
>>>>>>> branch 'master' of https://github.com/tnqkr3753/Trica.git

								<!-- <h2>출력확인 ::::: ${list[0]}</h2>     -->
								<!-- <h2>출력확인 ::::: ${list[0].PCT_NAME}</h2> -->
								<!-- <h2>출력확인 ::::: ${list[1]}</h2> -->
								<!-- <h1>출력확인 ::::: ${totalPage}</h1> -->
								
								
								<!-- ***** 주문목록 Section Start ***** -->
								<c:set var="count" value="1"></c:set>
								<c:forEach var="list" items="${list}">
								<tr>
<%-- 									<tr <c:if test="${count eq list.CNT}"> style="border-bottom:1px solid black;" </c:if>> --%>
										<c:if test="${count eq 1 }">
											<!-- td는 주문번호가 같으면 한번만 나오게 -->
											<td class="border-0 align-middle" rowspan='${list.CNT}'>	<!-- CNT 수만큼 rowspan 생성 -->
												<div class="custom-control custom-checkbox" id="orderNo">
													<input type="checkbox" id="jb-checkbox-1"
														class="custom-control-input"> 주문번호 [ ${list.ORDER_NO}]
												</div>
											</td>
										</c:if>
										<!-- td -->

										<th scope="row" class="border-0">
											<div class="p-2">
												<img
													src="./resources/upload/product/img/${list.PCT_IMG_NAME}"
													alt="" width="70" class="img-fluid rounded shadow-sm">
												<div class="ml-3 d-inline-block align-middle">
													<h5 class="mb-0">
														<a href="#" class="text-dark d-inline-block align-middle">${list.PCT_NAME}</a>
													</h5>
												</div>
											</div>
										</th>
										<td class="border-0 align-middle"><strong>${list.ORDER_COUNT}개</strong></td>
										<td class="border-0 align-middle"><strong>${list.ORDER_PRICE}원</strong></td>
										<c:if test="${count eq list.CNT}">
										<td class="border-0 align-middle" style="color:red; font-size:20px;"><strong>${list.TOTAL_PRICE}원</strong></td>
										</c:if>
									</tr>
									<c:if test="${count eq list.CNT}"><tr><td></td><td></td><td></td><td></td><td></td></tr></c:if>
									<c:choose>
										<c:when test="${count eq list.CNT}">
											<c:set var="count" value="1"></c:set>
										</c:when>
										<c:otherwise>
											<c:set var="count" value="${count+1}"></c:set>
										</c:otherwise>
									</c:choose>
								</c:forEach>

								<!-- ***** 주문목록 Section End ***** -->
							</tbody>
						</table>
					</div>

					<div class="atag">
						<!-- ***** 페이징 Section Start ****** -->
						<c:forEach var="i" begin="1" end="${totalPage}">
							<a class="btn blue" href="orderPaging.trc?pNum=${i}">${i}</a>	<!--  페이지 번호 누르면 orderList의 i번째 페이지로 넘어감-->
						</c:forEach>
						<!-- ***** 페이징 Section End ***** -->
					</div>
				</div>
      </div>
    </div>
  </div>
  
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
<<<<<<< HEAD
    <script src="./resources/js/main.js"></script>
    
=======
    <script src="./resources/js/main.js"></script> 
    <script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
>>>>>>> branch 'master' of https://github.com/tnqkr3753/Trica.git
</body>
</html>