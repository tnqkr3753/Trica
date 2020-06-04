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

</head>

<body>
       <!-- Page Preloder -->
   <div id="preloder">
      <div class="loader"></div>
   </div>

   <!-- Header Section Begin -->
   <header class="header">
      <div class="container-fluid">
         <div class="row">
            <div class="col-lg-3 col-md-3">
               <div class="header__logo">
                  <a href="./index.html"><img src="./resources/img/logo.png" alt=""></a>
               </div>
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
         
    <!-- Most Search Section Begin -->
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
                                
                                
                                
                                
                              <select name="bc_no">
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
								<c:forEach var='list' items="${sList }" begin='0' end='6'> 
                                <div class="col-lg-4 col-md-6 product-item">
                                 	<form name='next_go'  id='next_go'  action="productDetail.trc" method="get">    
                                 	<input type="hidden" name="pctNo" value="${list.PCT_NO }">                       		 	
                                    <div class="listing__item">
                                        	<div class="listing__item__pic set-bg" data-setbg="./resources/upload/product/img/${list.PCT_IMG_NAME}" ><!-- 이미지  -->
                                            <img src="./resources/img/추천상품/BSTE_상품.png" alt=""> <!-- 이미지 -->
                                            <div class="listing__item__pic__tag top_rate"> ${list.SC_NAME } </div> <!--단어  -->
                                            <div class="listing__item__pic__btns">                          
                                            </div>
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
                                                </div>
                                                <ul>
                                                    <li><span class="icon_id"></span> 삼성디지털프라자</li> <!-- 업체 -->
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
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="./index.jsp"><img src="./resources/img/footer-logo.png" alt=""></a>
                        </div>
                        <p>Challenging the way things have always been done can lead to creative new options that reward
                            you.</p>
                    </div>
                </div>
                <div class="col-lg-4 offset-lg-1 col-md-6">
                    <div class="footer__address">
                        <ul>
                            <li>
                                <span>Call Us:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Email:</span>
                                <p>info.colorlib@gmail .com</p>
                            </li>
                            <li>
                                <span>Fax:</span>
                                <p>(+12) 345-678-910</p>
                            </li>
                            <li>
                                <span>Connect Us:</span>
                                <div class="footer__social">
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a>
                                    <a href="#"><i class="fa fa-skype"></i></a>
                                </div>
                            </li>
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
                        <div class="footer__copyright__text"><p><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
  Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
  <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                        </div>
                        <div class="footer__copyright__links">
                            <a href="#">Terms</a>
                            <a href="#">Privacy Policy</a>
                            <a href="#">Cookie Policy</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
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