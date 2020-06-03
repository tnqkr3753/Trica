<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<% String projectName = "Trica"; %>
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
                    <!-- <div class="header__logo">
                        <a href="./index.jsp"><img src="img/Logo.png" alt=""></a>
                    </div> --> 
                </div>
                <div class="col-lg-9 col-md-9">
                    <div class="header__nav">
                        <nav class="header__menu mobile-menu">
                            <ul>
                                <li class="active"><a href="./index.jsp">Home</a></li>
                                <li><a href="#">Shop</a></li>
                                <li><a href="#">Pages</a> 
                                    <ul class="dropdown">
                                        <li><a href="boardList.trc">Board</a></li>
                                        <li><a href="./listing-details.html">Listing Details</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./contact.html">Contact</a></li>
                                    </ul>
                                </li>  
                                <li><a href="boardList.trc">Board</a></li>
                                <li><a href="#">Cart</a>
                                	 <ul class="dropdown">
                                        <li><a href="cart.trc">Shopping Cart</a></li>
                                        <li><a href="favorite.trc">Favorite</a></li>
                                        <li><a href="orderList.trc">OrderList</a></li>
                                    </ul> 
                                </li>   
                                  <li><a href="#">User</a>
                                	 <ul class="dropdown">
                                        <li><a href="Modifier.trc">Information</a></li>
                                        <li><a href="logout.trc">LogOut</a></li>
                                    </ul> 
                                </li>    
                                       
                             </ul>    
                        </nav>    
                        <div class="header__menu__right">
                             
                            <c:choose>
	                            <c:when test="${empty sessionScope.memberId}">
	                            	<a href="LoginPage.trc" class="login-btn"><i class="fa fa-user"></i></a>
	                            </c:when> 
	                            <c:otherwise>
	                            	<a href="#" class="primary-btn"><i class="fa fa-plus"></i>Add Listing</a>
	                            </c:otherwise>
                            </c:choose> 
                        </div>    
                    </div>         
                </div>  
            </div> 
            <div id="mobile-menu-wrap"></div> 
        </div>
    </header>
    <!-- Header Section End --> 
 
    <!-- Hero Section Begin -->
    <section class="hero set-bg" data-setbg="./resources/img/background_black.png">
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
                        <ul class="hero__categories__tags">
                            <li><a href="#"><img src="./resources/img/hero/cat-1.png" alt=""> TV</a></li>
                            <li><a href="#"><img src="./resources/img/hero/cat-2.png" alt=""> 냉장고</a></li>
                            <li><a href="#"><img src="./resources/img/hero/cat-3.png" alt=""> 카메라</a></li>
                            <li><a href="#"><img src="./resources/img/hero/cat-4.png" alt=""> 전자레인지</a></li>
                            <li><a href="#"><img src="./resources/img/hero/cat-5.png" alt=""> 노트북</a></li>
                            <li><a href="#"><img src="./resources/img/hero/cat-6.png" alt=""> All Categories</a></li>
                        </ul>

                    </div>    
                </div>    
            </div> 
        </div>
    </section>
    <!-- Hero Section End -->

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
</body>  
</html>