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
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function sample6_execDaumPostcode() {
    new daum.Postcode({ 
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외) 
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
}
function sample5_execDaumPostcode() {
    new daum.Postcode({ 
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외) 
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample5_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample5_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample5_postcode').value = data.zonecode;
            document.getElementById("sample5_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample5_detailAddress").focus();
        }
    }).open();
} 
 
</script>
    
</head>
<body>
<form action="orderSuccess.trc" method="post">
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
                <c:set value="0" var="count"></c:set>
                <c:forEach var="list" items="${oList }">
                <tr>
                  <th scope="row" class="border-0">
                  <input type="hidden" name="indexList[${count }]" value="${list[0] }">
                  <input type="hidden" name="pvoList[${count}].pctNo" value="${list[1] }">
                  <input type="hidden" name="pvoList[${count}].orderCount" value="${list[3] }">
                  <input type="hidden" name="pvoList[${count}].orderPrice" value="${list[4] }">
                    <div class="p-2">
                      <img src="./resources/upload/product/img/${list[5] }" alt="" width="70" class="img-fluid rounded shadow-sm">
                      <div class="ml-3 d-inline-block align-middle">
                        <h5 class="mb-0"> <a href="#" class="text-dark d-inline-block align-middle">${list[2] }</a></h5><span class="text-muted font-weight-normal font-italic d-block">${list[1] }</span>
                      </div>
                    </div>
                  </th>
                  <td class="border-0 align-middle"><strong class="each-price">${list[4] }</strong><strong>원</strong></td>
                  <td class="border-0 align-middle"><strong>${list[3] }</strong></td>
                </tr>
                <c:set value="${count+1 }" var="count"></c:set>
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
                                    <td><input type="text" name="dvo.deliverName" value="${vo.memberName }" data-pattern="gdEngKor" maxlength="20" style="width:100px"></td>
                                </tr>
                                <tr>
                                    <th scope="row">주소</th>
                                    <td><input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호" readonly>
											<input type="button" id="addbtn" class="form-control btn btn-secondary" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
											<input type="text" class="form-control" id="sample6_address" placeholder="주소" readonly>
											<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
											<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목" readonly>
											<input type="hidden" name="dvo.deliverAddress" id="address-del"
											<c:if test="${not empty vo.address }"> 
											value="${vo.address }"
											</c:if>
											/>
									</td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" id="phoneNum" name="dvo.deliverSubTel" value="" maxlength="20" >
                                        &nbsp;&nbsp;&nbsp;'-' 없이 입력해주세요.
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">휴대폰번호</span></th>
                                    <td>
                                        <input type="text" id="mobileNum" name="dvo.deliverTel" value="${vo.tel }" maxlength="20">
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
                                    <td><input type="text" name="dvo.recipientName" data-pattern="gdEngKor" maxlength="20"></td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">받으실 곳</span></th>
                                    <td class="member_address">
                                        <input type="text" class="form-control" id="sample5_postcode" placeholder="우편번호" readonly>
											<input type="button" id="addbtn" class="form-control btn btn-secondary" onclick="sample5_execDaumPostcode()" value="우편번호 찾기">
											<input type="text" class="form-control" id="sample5_address" placeholder="주소" readonly>
											<input type="text" class="form-control" id="sample5_detailAddress" placeholder="상세주소">
											<input type="text" class="form-control" id="sample5_extraAddress" placeholder="참고항목" readonly>
											<input type="hidden" name="dvo.recipientAddress" id="address-rec" value=""/>
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">전화번호</th>
                                    <td>
                                        <input type="text" id="dvo.receiverPhone" name="dvo.recipientSubTel">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row"><span class="important">휴대폰번호</span></th>
                                    <td>
                                        <input type="text" id="dvo.receiverCellPhone" name="dvo.recipientTel">
                                    </td>
                                </tr>
                                <tr>
                                    <th scope="row">요청사항</th>
                                    <td class="td_last_say"><input type="text" name="ovo.orderRequest" style="width:500px"></td>
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
                                    <th scope="row">부가세</th>
                                    <td>
                                        <span id="totalTaxCharge">***</span>원
                                        <span class="multi_shipping_text"></span>
                                    </td>
                                </tr>
                                

                           
                                <tr>
                                    <th scope="row">최종결제금액</th>
                                    <td>
                                        <input id="inputTotalPrice" type="hidden" name="ovo.totalPrice" value="KRW">
                                        <strong id="totalSettlePrice" class="order_payment_sum">***</strong>원
                                        <input type="hidden" name="ovo.memberId" value="${sessionScope.memberId }">
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <!-- //payment_info -->
<br/>
			<input id="confirm-check" type="checkbox" name="chk_info" value="chk_info">&nbsp;구매하실 상품의 결제정보를 확인하였으며, 구매진행에 동의합니다.
			&nbsp;&nbsp;&nbsp;
   			<input type="submit" class="btn btn-danger order-btn" style="width:90px; height:35px;" value='결제하기'>
                </div>
                <!-- 주문자 정보 End -->

    </div>
  </div>
    
    
</form>
    
    
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
    <script src="./resources/js/orderConfirm.js"></script>
</body>
</html>