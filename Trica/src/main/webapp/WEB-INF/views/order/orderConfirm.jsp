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
    <link rel="stylesheet" href="./resources/css/orderConfirm.css" type="text/css">
    
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
    <div class="breadcrumb-area set-bg" style="background:gray;">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>결제상세내역</h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    
    <!-- 결제상세내역 보여주기 -->
  
<div class="page-header">
  <h3><small>결제상세내역</small></h3>
</div>
 
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
                    <div class="p-2 px-3 text-uppercase">Product</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Price</div>
                  </th>
                  <th scope="col" class="border-0 bg-light">
                    <div class="py-2 text-uppercase">Quantity</div>
                  </th>
                </tr>
              </thead>
              <tbody>
              
              
            
        
            
                <!-- for문 시작 -->
                <c:forEach var="list" items="${cList }">
                
                  
                <tr>
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
                </tr>
              

                </c:forEach>
                <!-- for문 끝 -->
          
                
              </tbody>
            </table>
          </div>
          <!-- End -->
        </div>
      </div>




<!-- 주문자 정보 Start -->
<div class="order_view_info">


                    <div class="order_info">
                        <div class="order_zone_tit">
                            <h4>주문자 정보</h4>
                        </div>

                        <div class="order_table_type">
                            <table class="table_left">
                                <colgroup>
                                    <col style="width:15%;">
                                    <col style="width:85%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row"><span class="important">주문자</span></th>
                                    <td><input type="text" name="orderName" value="***" data-pattern="gdEngKor" maxlength="20" style="width:100px"></td>
                                </tr>
                                <tr>
                                    <th scope="row">주소</th>
                                    <td><input type="text" name="orderAddr" value="***" maxlength="100" style="width:400px">&nbsp;&nbsp;
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" id="phoneNum" name="orderPhone" value="***" maxlength="20">
                                        &nbsp;&nbsp;&nbsp;'-' 없이 입력해주세요.
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">휴대폰번호</span></th>
                                    <td>
                                        <input type="text" id="mobileNum" name="orderCellPhone" value="***" maxlength="20">
                                         &nbsp;&nbsp;&nbsp;'-' 없이 입력해주세요.
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">이메일</span></th>
                                    <td class="member_email">
                                        <input type="text" name="orderEmail" value="***">

                                        
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //order_info -->

                    <div class="delivery_info">
                        <div class="order_zone_tit">
                            <h4>배송정보</h4>
                        </div>

                        <div class="order_table_type shipping_info">
                            <table class="table_left shipping_info_table">
                                <colgroup>
                                    <col style="width:15%;">
                                    <col style="width:85%;">
                                </colgroup>
                                <tbody>
                               
                                <tr>
                                    <th scope="row"><span class="important">받으실분</span></th>
                                    <td><input type="text" name="receiverName" data-pattern="gdEngKor" maxlength="20"></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">받으실 곳</span></th>
                                    <td class="member_address">
                                        <input type="text" name="orderAddr" value="***" maxlength="100" style="width:400px">&nbsp;&nbsp;
                                    <button type="button" class="btn btn-primary" style="width:60px; height:30px; font-size:12px;">변경</button>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" id="receiverPhone" name="receiverPhone">
                                         &nbsp;&nbsp;&nbsp;'-' 없이 입력해주세요.
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">휴대폰번호</span></th>
                                    <td>
                                        <input type="text" id="mobileNum" name="orderCellPhone" value="***" maxlength="20">
                                         &nbsp;&nbsp;&nbsp;'-' 없이 입력해주세요.
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">요청사항</th>
                                    <td class="td_last_say"><input type="text" name="orderMemo" style="width:500px"></td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //delivery_info -->

                    <!-- //addition_info -->

                    <div class="payment_info">
                        <div class="order_zone_tit">
                            <h4>결제정보</h4>
                        </div>

                        <div class="order_table_type">
                            <table class="table_left">
                                <colgroup>
                                    <col style="width:15%;">
                                    <col style="width:85%;">
                                </colgroup>
                                <tbody>
                                <tr>
                                    <th scope="row">상품합계금액</th>
                                    <td>
                                        <strong id="totalGoodsPrice" class="order_payment_sum">***</strong>원
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">배송비</th>
                                    <td>
                                        <span id="totalDeliveryCharge">***</span>원
                                        <span class="multi_shipping_text"></span>
                                    </td>
                                </tr>
                                

                           
                                <tr>
                                    <th scope="row">최종결제금액</th>
                                    <td>
                                        <input type="hidden" name="settlePrice" value="9900">
                                        <input type="hidden" name="overseasSettlePrice" value="0">
                                        <input type="hidden" name="overseasSettleCurrency" value="KRW">
                                        <strong id="totalSettlePrice" class="order_payment_sum">***</strong>원
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //payment_info -->
<br/>
			<input type="checkbox" name="chk_info" value="chk_info">&nbsp;구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.
			&nbsp;&nbsp;&nbsp;
   <a href="" class="btn btn-danger" style="width:90px; height:35px;">결제하기</a>
                </div>
                <!-- 주문자 정보 End -->

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
    <script src="./resources/js/main.js"></script>
    <script src="/.resources/js/cart.js"></script>
</body>
</html>