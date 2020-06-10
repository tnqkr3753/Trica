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
                                <li><a href="getaList.trc">Shop</a></li>
                                <li><a href="boardList.trc">Board</a></li> 
                                <li><a href="#">Cart</a> 
                                	 <ul class="dropdown">
                                        <li><a href="cart.trc">Shopping Cart</a></li>
                                        <li><a href="favorite.trc">Favorite</a></li>
                                        <li><a href="orderPaging.trc">OrderList</a></li>
                                    </ul>   
                                </li>
                                <li><a href="#">Chart</a>     
                                    <ul class="dropdown">   
                                        <li><a href="chart.trc">Chart</a></li>
                                    </ul>
                                </li>           
                               	<c:if test="${1 eq sessionScope.memberType}"> <!-- 관리자일 때  value='1' -->
                               		<li><a href="#">User</a>  
                               			<ul class="dropdown">  
                                       		<li><a href="goChk.trc">Information</a></li>
                                       		<li><a href="productList.trc">Product management</a></li>
                                       		<li><a href="goChk.trc">Statistics management</a></li> 
                                       		<li><a href="logout.trc">LogOut</a></li>
                                   		</ul>         
                               		</li>                   
                               	</c:if>  
                               	<c:if test="${!empty sessionScope.memberId and 0 eq sessionScope.memberType}"> <!-- 구매자일 때  value='0' -->
                               		<li><a href="#">User</a>  
                               			<ul class="dropdown">  
                                       		<li><a href="goChk.trc">Information</a></li> 
                                       		<li><a href="logout.trc">LogOut</a></li>
                                   		</ul>    
                               		</li>            
                               	</c:if>       
                             </ul>         
                        </nav>        
                        <div class="header__menu__right">
	                        <c:choose>	 
	                        	<c:when test="${empty sessionScope.memberId}">
	                        		<a href="LoginPage.trc" class="login-btn"><i class="fa fa-user"></i></a>
	                        	</c:when> 
								<c:when test="${1 eq sessionScope.memberType}">	
	                       			<li><a href="productInsert.trc" class="primary-btn"><i class="fa fa-plus"></i>Add Listing</a></li>
                            	</c:when>  
                            </c:choose>	             
                        </div>           
                    </div>               
                </div>       
            </div> 
            <div id="mobile-menu-wrap"></div>  
        </div>  
    </header>
    <!-- Header Section End -->  
    
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
	<script src="./resources/js/jquery.cookie.js"></script>
</body>    
</html>