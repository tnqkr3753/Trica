<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<% String projectName = "TricaProject"; %>
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

   <!-- Blog Hero Begin -->

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
         
    <!-- 상단 검색 부분 -->
    <section class="most-search spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>□ TRICA</h2>
                        <p> TRICA 전자제품의 모든것</p> 
                        
                        
                        
                        
                        
                    </div>
                </div>
            </div>
            <div class="hero__search__form">
                            <form action="search.trc">
                                <input type="text" name="title" placeholder="검색어를 입력해주세요">
                                <div class="select__option fir">
                                
                                
                         
                              <select name="bc_no" id="bc_no">
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
                                                         
                        <div class="tab-pane active" id="tabs-1" role="tabpanel">
                            <div class="row">
                            
                            
                            
                            
                       
                            
                            
                            
                            
                            <!-- for문 시작 -->
								<c:forEach var='list' items="${sList }"> 
                                <div class="col-lg-4 col-md-6 product-item">
                                 	<form name='next_go'  id='next_go'  action="productDetail.trc" method="get">    
                                 	<input type="hidden" name="pctNo" value="${list.PCT_NO}"> 
                                 	<input type='hidden' id='pct_bcNo' value="${list.SC_NO}">                 		 	
                                    <div class="listing__item">
                                        	<div class="listing__item__pic set-bg" data-setbg="./resources/upload/product/img/${list.PCT_IMG_NAME}" ><!-- 이미지  -->
                                            <img src="./resources/img/추천상품/BSTE_상품.png" alt=""> <!-- 이미지 -->
                                            <div class="listing__item__pic__tag top_rate"> ${list.SC_NAME } </div> <!--단어  -->
                                            <c:choose>
                                            <c:when test="${list.PCT_STOCK<= 15 and list.PCT_STOCK ne 0}"> <!-- 마감임박 -->                                                  
													<span><img src="./resources/img/soldout.gif" height='50'  width='50'></span>
													</c:when>
													<c:when test="${list.PCT_STOCK == 0}">
													<span><img src="./resources/img/soldout2.png" height='50'  width='100'></span>
													</c:when>
											</c:choose>
                                        </div>
                                        <div class="listing__item__text">
                                            <div class="listing__item__text__inside">
                                                <h5>${list.PCT_NAME }</h5> <!-- 헤더 -->
                                                <div class="listing__item__text__rating">
                                                    <div class="listing__item__rating__star"> <!-- 평점에 따라 별 숫자 다르게 -->
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                        <span class="icon_star"></span>
                                                    </div>
                                                    <h6>${list.PCT_PRICE }</h6> <!-- 가격 -->
                                                <div class="listing__item__text__info__right">			
												</div>
                                                </div>                                              
                                                <ul>                                                   	                                                 
                                                    <li><span class="icon_pencil"></span>${list.PCT_INTRO }</li> <!-- 짧은 설명 -->
                                                </ul>                                              
                                            </div>
                                        </div>
                                    </div>
                                    </form>
                                </div>
                                </c:forEach>                                
                                <!-- for문 끝 -->
                            </div>
                        </div>
                        </div>                  
    		</section>
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
    <script src="./resources/js/searchView.js"></script>
    
    


</body>

</html>