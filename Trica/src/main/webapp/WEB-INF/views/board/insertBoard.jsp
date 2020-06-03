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
                                <li ><a href="../index.jsp">Home</a></li>
                                <li><a href="#">Shop</a></li>
                                <li><a href="#">Pages</a>
                                    <ul class="dropdown">
                                        <li><a href="./about.html">About</a></li>
                                        <li><a href="./listing-details.html">Listing Details</a></li>
                                        <li><a href="./blog-details.html">Blog Details</a></li>
                                        <li><a href="./contact.html">Contact</a></li>
                                    </ul>
                                </li> 
                                <li><a href="./blog.html">Blog</a></li>
                                <li class="active"><a href="#">Cart</a>
                                	 <ul class="dropdown">
                                        <li><a href="./cart.trc">Shopping Cart</a></li>
                                        <li><a href="./favorite.trc">Favorite</a></li>
                                        <li><a href="./orderList.trc">OrderList</a></li>
                                    </ul>
                                </li>
                             </ul> 
                        </nav>
                        <div class="header__menu__right">
                            <a href="#" class="login-btn"><i class="fa fa-user"></i></a>
                        </div> 
                    </div>   
                </div> 
            </div>
            <div id="mobile-menu-wrap"></div>
        </div>
    </header>
    <!-- Header Section End --> 
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-area set-bg" data-setbg="./resources/img/breadcrumb/breadcrumb-orderlist.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Board Insert</h2>
                        <div class="breadcrumb__option">
                            <a href="#"><i class="fa fa-home"></i> Home</a>
                            <span>Board Insert</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb End -->
    <!-- Board Start -->
    <div class="pb-5">
    <div class="container">
	<div class="row">
	<div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
		<div class="col-md-12">
			<div class="tabbable" id="tabs-367706">
				<div class="pb-5"> 
      <div class="container"> 
         <div class="row ">
            <div class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
               <div class="page-header">
                   <div class="col-md-12 col-md-offset-3 text-center">
                     <h3>글 등록</h3>
                  </div>
               </div>
               <div class="col-sm-12 col-md-offset-3">
                  <form method="post" action="registBoard.trc" enctype="multipart/form-data">
                  	 <div class="row form-group">
                  	 <select id="inputType" name="boardType" class="selectpicker">
                  	 	<c:choose>
		                  	 <c:when test='${boardNo eq ""}' >
		                        	<option value="Free">자유게시판</option>
		                        	<option value="Inquiry">문의게시판</option>
		                        	<option value="Review">상품리뷰</option>
		                     </c:when>
		                     <c:otherwise>
		                     		<option value="${boardType}">
		                     			<c:choose>
		                     				<c:when test='${boardType eq "Free" }'>자유게시판</c:when>
		                     				<c:when test='${boardType eq "Inquiry" }'>문의게시판</c:when>
		                     				<c:when test='${boardType eq "Review" }'>상품리뷰</c:when>
		                     			</c:choose>
		                     		</option>
		                     </c:otherwise>
	                     </c:choose>
                     </select>
                     </div>
                     <c:if test='${boardNo ne "" }'>
	                     <div class="form-group">
	                        <label for="inputTitle" >${boardNo}번글의 답글</label>
	                        <input id="inputTitle" type="hidden" name="parentBoardNo" value="${boardNo }">
	                     </div>
                     </c:if>
                     <div class="form-group">
                        <label for="inputTitle" >제목</label>
                        <input id="inputTitle" type="text" class="form-control" name="boardTitle" placeholder="제목을 입력해주세요">
                     </div>
                     <input type="hidden" name="memberId" value="aaarirang"/>
                     <!-- 벨류 빼기 -->
                     <div class="form-group">
                        <label for="inputContent">글 내용</label> 
                        <textarea class="form-control" id="inputContent" name="boardContent" placeholder="내용을 입력해주세요"></textarea>
                     </div> 
                     <div class="form-group">
                        <label for="inputContent">첨부파일</label> 
                        <input type="file" class="form-control" maxlength="60" size="40" name='file'>
                     </div> 
                     
                     <input class="btn btn-primary " type="submit"	value=" 새글 등록 " />
                     
                  </form>
               </div> 
            </div>
         </div>
      </div>
   </div>
			</div>
			
		</div>
	</div>
	</div>
</div>
</div>
    <!-- Board End -->
        <!-- Footer Section Begin -->
    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="footer__about">
                        <div class="footer__about__logo">
                            <a href="../index.jsp"><img src="./resources/img/footer-logo.png" alt=""></a>
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
    <script src="./resources/js/boardInsert.js"></script>
</body>
</html>