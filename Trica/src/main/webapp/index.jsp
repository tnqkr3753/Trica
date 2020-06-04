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
                                <c:if test="${not empty sessionScope.memberId}">  
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

	<!-- Categories Section Begin --> 
	<section class="categories spad"> 
		<div class="container">
		
			<div class="row"> 
				<div class="col-lg-12">
					<div class="section-title">
						<h2>CATEGORY</h2> 
						<p>Collect all the electronics in the world</p>
					</div> 
					<div class="categories__item__list"></div>
				</div> 
			</div> 
		</div>
	</section>
	<!-- Categories Section End -->

	<!-- Most Search Section Begin -->
	<section class="most-search spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>The Most Searched Services</h2>
						<p>Travelocity empowers travelers who are giving back on their
							trips in ways big and small</p>
					</div>
				</div>
			</div>

 
			<div class="row">  
				<div class="col-lg-12">
					<div class="most__search__tab">  
						<ul class="nav nav-tabs" role="tablist">
							<li class="nav-item">
								<a class="nav-link active" data-toggle="tab" href="#tabs-1" role="tab"> 
									<span class="flaticon-039-fork"></span> 
									전체상품
								</a> 
							</li>
							<li class="nav-item"> 
								<a class="nav-link" data-toggle="tab" href="#tabs-2" role="tab"> 
									<span class="flaticon-030-kebab"></span>
									인기상품 
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#tabs-3" role="tab"> 
									<span class="flaticon-032-food-truck"></span> 
									추천상품
								</a> 
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#tabs-4" role="tab"> 
									<span class="flaticon-017-croissant"></span> 
									최근 본 상품
								</a>
							</li>
							<li class="nav-item">
								<a class="nav-link" data-toggle="tab" href="#tabs-5" role="tab"> 
									<span class="flaticon-038-take-away"></span> 
									새로 만나는 신상품
								</a>
							</li> 
						</ul> 
					</div> 
					<div class="tab-content"> 
						<div class="tab-pane active" id="tabs-1" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0008096648__WF19T6000KV__M_450_450.jpg">
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<p class="prdName">삼성전자 *한정수량 최저가보장* *2020 NEW* 드럼세탁기
													WF19T6000KV [19KG／버블워시／무세제통세척／초강력워터샷／스마트컨트롤／블랙케비어]</p>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div> 
												<div class="priceInfo">
													<span class="discountPrice"><strong>1,049,000</strong>
														<span class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
												</div>
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>782,100</strong>
														<span class="priceUnit">원</span></span>

													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
													<!-- 25965 최대혜택가 0이하시 0으로 노출-->
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div> 
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0000875472__T18DT.AKOR__M_450_450.jpg">
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<p class="prdName">LG전자 일반세탁기 T18DT
													[18KG／대포물살／6모션손빨래／급속모드／터보샷／미드프리실버]</p>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>
												<div class="priceInfo">
													<span class="discountPrice"><strong>970,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
												</div>
												<div class="priceInfo priceBenefit">

													<span class="discountPrice"><strong>768,000</strong><span
														class="priceUnit">원</span></span>

													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
													<!-- 25965 최대혜택가 0이하시 0으로 노출-->
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0000801846__F14SQT.AKOR__M_450_450.jpg">
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<p class="prdName">LG전자&nbsp;드럼세탁기 F14SQT [14KG /
													3방향터보샷/ 6모션 DD모터 / 초강력터보샷 / 스마트씽큐 / 통살균기능 / 스톤실버]</p>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>
												<div class="priceInfo">
													<span class="discountPrice"><strong>1,040,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
												</div>
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>928,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0001082301__TR14BK1.AKOR__M_450_450.jpg">
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<p class="prdName">LG전자&nbsp;일반세탁기 TR14BK1
													[14KG/펀치물살/3모션 인버터모터/통세척/다이아몬드글래스/실버]</p>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>
												<div class="priceInfo">
													<span class="discountPrice"><strong>670,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
												</div>
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>595,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0000560693__F10WR.AKOR__M_450_450.jpg">
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<p class="prdName">LG전자&nbsp;드럼세탁기 F10WR
													[10KG/트루스팀/6모션/초강력터보샷/통살균/건조맞춤탈수/화이트]</p>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>
												<div class="priceInfo">
													<span class="discountPrice"><strong>900,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
												</div>
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>802,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0007949438__W16WS.AKOR__M_450_450.jpg">
										</div> 
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<p class="prdName">LG전자&nbsp;*2020 NEW* 워시타워 W16WS
													[세탁21KG+건조16KG/원바디 런드리 컨트롤/원바디 인공지능 세탁-건조/풀터치 디스플레이/ 화이트]</p>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>
												<div class="priceInfo">
													<span class="discountPrice"><strong>3,990,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">패키지가</span>
												</div>
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>3,715,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
									<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0001550974__HB8H80-HVK__M_450_450.jpg">
										</div> 
										<div class="listing__item__text">
											<div class="listing__item__text__inside"> 
												<p class="prdName">위닉스&nbsp;건조기 HB8H80-HVK [키트선택가능][ 8KG/실버/대용량건조/스마트센서/이지클린필터 ]</p>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div> 
												<div class="priceInfo">
													<span class="discountPrice"><strong>699,000</strong><span
														class="priceUnit">원</span></span> 
													<!-- 25118_옵션선택그룹형 가격 표시 개선 --> 
												</div>
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>576,100</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div> 
												<!-- 특별혜택 노출 --> 
											</div>
										</div>
									</div>
								</div>
									<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0003624206__RH14WNB.AKOR__M_450_450.jpg">
										</div> 
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<p class="prdName">LG전자&nbsp;*건조기 RH14WNB[스태킹키트주문가능][14KG／컨덴서기능개선／10년무상보증／화이트／화이트도어]</p>
												<div class="listing__item__text__rating"> 
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>
												<div class="priceInfo">
													<span class="discountPrice"><strong>1,390,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">패키지가</span> 
												</div>
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>1,228,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
									<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0001186291__HB8M80-HWK__M_450_450.jpg">
										</div> 
										<div class="listing__item__text">   
											<div class="listing__item__text__inside">
												<p class="prdName">위닉스&nbsp;건조기 HB8M80-HWK [키트선택가능][8KG／화이트／대용량건조／스마트 센서／대용량 이지클린 필터]</p>
												<div class="listing__item__text__rating"> 
													<div class="listing__item__rating__star"> 
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>
												<div class="priceInfo">
													<span class="discountPrice"><strong>740,000</strong><span
														class="priceUnit">원</span></span> 
													<!-- 25118_옵션선택그룹형 가격 표시 개선 --> 
												</div> 
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>613,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
									<div class="col-lg-4 col-md-6"> 
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0000954392__DH10433RX0__M_450_450.jpg">
										</div> 
										<div class="listing__item__text">  
											<div class="listing__item__text__inside"> 
												<p class="prdName">베코<br/> 
												베코 건조기 DH10433RX0 [10KG／화이트／인버터모터／저온제습／내부LED조명]</p>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span> 
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>   
												<div class="priceInfo">
													<span class="discountPrice"><strong>599,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 --> 
												</div> 
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>521,100</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
									<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0007300802__GDZ60-618E__M_450_450.PNG">
										</div>
										<div class="listing__item__text">  
											<div class="listing__item__text__inside">
												<p class="prdName">로퍼&nbsp;로퍼 의류건조기 6kg 택배발송(자가설치) ／ GDZ60-618E</p>
												<div class="listing__item__text__rating"> 
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>  
												</div>  
												<div class="priceInfo">
													<span class="discountPrice"><strong>269,000</strong><span
														class="priceUnit">원</span></span> 
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
												</div>
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>227,100</strong><span
														class="priceUnit">원</span></span> 
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
													<span class="priceTit">최대혜택가</span>
												</div>
												<!-- 특별혜택 노출 -->
											</div>
										</div>
									</div>
								</div>
									<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/0007509390__MW66307_163746__M_450_450.jpg">
										</div>
										<div class="listing__item__text">  
											<div class="listing__item__text__inside">
												<p class="prdName">블롬베르크&nbsp;독일 의류건조기 10KG (화이트) ／ DHP24412W</p>
												<div class="listing__item__text__rating"> 
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
												</div>
												<div class="priceInfo"> 
													<span class="discountPrice"><strong>590,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
												</div> 
												<div class="priceInfo priceBenefit">
													<span class="discountPrice"><strong>523,000</strong><span
														class="priceUnit">원</span></span>
													<!-- 25118_옵션선택그룹형 가격 표시 개선 -->
												</div>
												<!-- 특별혜택 노출 --> 
											</div>
										</div>
									</div>
								</div>  
							</div>
						</div> 
						<div class="tab-pane" id="tabs-2" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-1.jpg">
											<img src="img/listing/list_icon-1.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Chinese Sausage Restaurant</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 236 Littleton
														St. New Philadelphia, Ohio, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>Restaurant</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-2.jpg">
											<img src="img/listing/list_icon-2.png" alt="">
											<div class="listing__item__pic__tag top_rate">Top Rate</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Shrimp floured and fried</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 1012 Vesper Dr.
														Columbus, Georgia(GA), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-2.png" alt="">
													<span>Food & Drink</span>
												</div>
												<div class="listing__item__text__info__right closed">Closed</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-3.jpg">
											<img src="img/listing/list_icon-3.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Sweet and sour pork ribs</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 251 Wiley St.
														Forks, Washington(WA), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>Restaurant</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-4.jpg">
											<img src="img/listing/list_icon-4.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Crab fried with tamarind</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 14320 Keenes
														Mill Rd. Cottondale, Alabama(AL), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-3.png" alt="">
													<span>Hotel</span>
												</div>
												<div class="listing__item__text__info__right closed">Closed</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-5.jpg">
											<img src="img/listing/list_icon-5.png" alt="">
											<div class="listing__item__pic__tag hot_deal">Hot Deal</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Tortoise grilled on salt</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 236 Littleton
														St. New Philadelphia, Ohio, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-4.png" alt="">
													<span>Shopping</span>
												</div> 
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
							</div> 
						</div>
						<div class="tab-pane" id="tabs-3" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-3.jpg">
											<img src="img/listing/list_icon-3.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Sweet and sour pork ribs</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 251 Wiley St.
														Forks, Washington(WA), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>Restaurant</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-4.jpg">
											<img src="img/listing/list_icon-4.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Crab fried with tamarind</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 14320 Keenes
														Mill Rd. Cottondale, Alabama(AL), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-3.png" alt="">
													<span>Hotel</span>
												</div>
												<div class="listing__item__text__info__right closed">Closed</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-5.jpg">
											<img src="img/listing/list_icon-5.png" alt="">
											<div class="listing__item__pic__tag hot_deal">Hot Deal</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Tortoise grilled on salt</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 236 Littleton
														St. New Philadelphia, Ohio, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-4.png" alt="">
													<span>Shopping</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-6.jpg">
											<img src="img/listing/list_icon-6.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Fish cooked with fishsauce</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 2604 E Drachman
														St. Tucson, Arizona, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-3.png" alt="">
													<span>Hotel</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tabs-4" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-1.jpg">
											<img src="img/listing/list_icon-1.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Chinese Sausage Restaurant</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 236 Littleton
														St. New Philadelphia, Ohio, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>Restaurant</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-2.jpg">
											<img src="img/listing/list_icon-2.png" alt="">
											<div class="listing__item__pic__tag top_rate">Top Rate</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Shrimp floured and fried</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 1012 Vesper Dr.
														Columbus, Georgia(GA), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-2.png" alt="">
													<span>Food & Drink</span>
												</div>
												<div class="listing__item__text__info__right closed">Closed</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-3.jpg">
											<img src="img/listing/list_icon-3.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Sweet and sour pork ribs</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 251 Wiley St.
														Forks, Washington(WA), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>Restaurant</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-6.jpg">
											<img src="img/listing/list_icon-6.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Fish cooked with fishsauce</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 2604 E Drachman
														St. Tucson, Arizona, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-3.png" alt="">
													<span>Hotel</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tabs-5" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-1.jpg">
											<img src="img/listing/list_icon-1.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Chinese Sausage Restaurant</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 236 Littleton
														St. New Philadelphia, Ohio, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>Restaurant</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-2.jpg">
											<img src="img/listing/list_icon-2.png" alt="">
											<div class="listing__item__pic__tag top_rate">Top Rate</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Shrimp floured and fried</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 1012 Vesper Dr.
														Columbus, Georgia(GA), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-2.png" alt="">
													<span>Food & Drink</span>
												</div>
												<div class="listing__item__text__info__right closed">Closed</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-3.jpg">
											<img src="img/listing/list_icon-3.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Sweet and sour pork ribs</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 251 Wiley St.
														Forks, Washington(WA), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>Restaurant</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-4.jpg">
											<img src="img/listing/list_icon-4.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Crab fried with tamarind</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 14320 Keenes
														Mill Rd. Cottondale, Alabama(AL), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-3.png" alt="">
													<span>Hotel</span>
												</div>
												<div class="listing__item__text__info__right closed">Closed</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-6.jpg">
											<img src="img/listing/list_icon-6.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Fish cooked with fishsauce</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 2604 E Drachman
														St. Tucson, Arizona, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-3.png" alt="">
													<span>Hotel</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="tab-pane" id="tabs-6" role="tabpanel">
							<div class="row">
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-1.jpg">
											<img src="img/listing/list_icon-1.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Chinese Sausage Restaurant</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 236 Littleton
														St. New Philadelphia, Ohio, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>Restaurant</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-2.jpg">
											<img src="img/listing/list_icon-2.png" alt="">
											<div class="listing__item__pic__tag top_rate">Top Rate</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Shrimp floured and fried</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 1012 Vesper Dr.
														Columbus, Georgia(GA), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-2.png" alt="">
													<span>Food & Drink</span>
												</div>
												<div class="listing__item__text__info__right closed">Closed</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="listing__item__pic set-bg"
											data-setbg="img/listing/list-4.jpg">
											<img src="img/listing/list_icon-4.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Crab fried with tamarind</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 14320 Keenes
														Mill Rd. Cottondale, Alabama(AL), United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-3.png" alt="">
													<span>Hotel</span>
												</div>
												<div class="listing__item__text__info__right closed">Closed</div>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
										<div class="./resources/listing__item__pic set-bg"
											data-setbg="img/listing/list-5.jpg">
											<img src="./resources/img/listing/list_icon-5.png" alt="">
											<div class="listing__item__pic__tag hot_deal">Hot Deal</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>Tortoise grilled on salt</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>$40 - $70</h6>
												</div>  
												<ul> 
													<li><span class="icon_pin_alt"></span> 236 Littleton
														St. New Philadelphia, Ohio, United States</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>  
											</div> 
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="./resources/img/listing/list_small_icon-4.png" alt="">
													<span>Shopping</span> 
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
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
	</section> 
	<!-- Most Search Section End --> 

	<!-- Feature Location Section Begin --> 
	<section class="feature-location spad"> 
		<div class="container">
			<div class="row"> 
				<div class="col-lg-12">
					<div class="section-title">
						<h2>Top Featured Locations</h2>
						<p>Representative electronics store</p>
					</div>
				</div> 
			</div>
			<div class="row">
				<div class="col-lg-6">
					<a href="http://www.samsungsales.co.kr" class="feature__location__item large-item set-bg"
						data-setbg="./resources/img/feature-location/samsung.PNG">
						<div class="feature__location__item__text">
							<h5>Samsung Digital Plaza</h5>
							<ul>
								<li>2045 Listings</li>  
								<li>3648 Users</li> 
							</ul>  
						</div>   
					</a> 
				</div>
				<div class="col-lg-6">
					<div class="row">
						<div class="col-lg-6 col-md-6">
							<a href="http://www.lge.co.kr" class="feature__location__item set-bg"
								data-setbg="./resources/img/feature-location/lg_bestshop.jpg">
								<div class="feature__location__item__text"> 
									<h5>LG Best Shop</h5>   
								</div>  
							</a>    
						</div>  
						<div class="col-lg-6 col-md-6">
							<a href="http://www.e-himart.co.kr" class="feature__location__item set-bg"
								data-setbg="./resources/img/feature-location/hi_mart.PNG">
								<div class="feature__location__item__text">
									<h5>Lotte Himart</h5> 
								</div>   
							</a>    
						</div>  
					</div>
					<a href="http://m.etland.co.kr" class="feature__location__item set-bg"
						data-setbg="./resources/img/feature-location/E_Land.PNG">
						<div class="feature__location__item__text"> 
							<h5>Electronic Land</h5>
						</div> 
					</a>
				</div>   
			</div>
		</div>
	</section>
	<!-- Feature Location Section End -->

	<!-- Testimonial Section Begin -->
	<section class="testimonial spad set-bg"
		data-setbg="./resources/img/testimonial/testimonial-bg.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">  
						<h2>Trusted By Over 5000+ User</h2>
						<p>What people say about our site</p> 
					</div>
					<div class="testimonial__slider owl-carousel">
						<div class="testimonial__item" data-hash="review-1">
							<p>" Our site seeks convenience by linking it  
								 so that you can compare prices with other sites."</p>
							<div class="testimonial__item__author">
								<a href="#review-3"><img src="./resources/img/testimonial/author-3.png" 
									alt=""></a> <a href="#review-1" class="active"><img
									src="img/testimonial/author-1.png" alt=""></a> <a
									href="#review-2"><img src="./resources/img/testimonial/author-2.png"
									alt=""></a>
							</div>     
							<div class="testimonial__item__author__text">
								<h5>John Smith -</h5>
								<div class="testimonial__item__author__rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>   
							<span>Trica</span>
						</div>
						<div class="testimonial__item" data-hash="review-2">
							<p>" We have partnered with other companies. Our representative is very
								 Knowledgeable and helpful. Multiple products
								 Suggestions for system improvement. Product description and
								 Kindly answer how it works and why it helps."</p>
							<div class="testimonial__item__author">
								<a href="#review-1"><img src="./resources/img/testimonial/author-1.png" 
									alt=""></a> <a href="#review-2" class="active"><img
									src="img/testimonial/author-2.png" alt=""></a> <a
									href="#review-3"><img src="./resources/img/testimonial/author-3.png"
									alt=""></a>
							</div>
							<div class="testimonial__item__author__text"> 
								<h5>John Smith -</h5>
								<div class="testimonial__item__author__rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>  
							<span>Trica</span>  
						</div> 
						<div class="testimonial__item" data-hash="review-3">
							<p>" This site sells products, but it is convenient because 
								 it allows you to view product reorganization and service 
								 at a renowned company in Korea through a newspost."</p> 
							<div class="testimonial__item__author"> 
								<a href="#review-2"><img src="./resources/img/testimonial/author-2.png"
									alt=""></a> <a href="#review-3" class="active"><img
									src="./resources/img/testimonial/author-3.png" alt=""></a> <a
									href="#review-1"><img src="img/testimonial/author-1.png"
									alt=""></a>
							</div> 
							<div class="testimonial__item__author__text">
								<h5>John Smith -</h5>
								<div class="testimonial__item__author__rating">
									<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i> <i class="fa fa-star"></i> <i
										class="fa fa-star"></i>
								</div>
							</div>
							<span>Trica</span>
						</div> 
					</div> 
				</div>
			</div>
		</div>
	</section>
	<!-- Testimonial Section End -->

	<!-- Blog Section Begin -->
	<section class="news-post spad">
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="section-title">
						<h2>News Post</h2>
						<p>Checkout Latest News And Articles From Our Blog</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="./resources/img/blog/news-1.PNG">  
						</div>   
						<div class="blog__item__text"> 
							<ul class="blog__item__tags">
								<li><i class="fa fa-tags"></i>Electronic</li>
								<li>store</li>
							</ul> 
							<h5>
								<a href="https://news.samsung.com/kr/삼성전자-갤러리아-백화점-광교점에-더-월-체험"">Samsung Newsroom Latest Article</a>
							</h5>
							<ul class="blog__item__widget"> 
								<li><i class="fa fa-clock-o"></i> 20th May 31, 2020</li>
								<li><i class="fa fa-user"></i>Samsung Blog</li>
							</ul> 
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg"
							data-setbg="./resources/img/blog/news-2.PNG"></div>
						<div class="blog__item__text">
							<ul class="blog__item__tags"> 
								<li><i class="fa fa-tags"></i> Electronic</li>
								<li>store</li> 
							</ul> 
							<h5>  
								<a href="https://social.lge.co.kr/product/httpssocial-lge-co-krproductdrying-machine07/">
								All of the dryer ‘condenser automatic cleaning system’ that LG Electronics researchers say
								</a> 
							</h5>   
							<ul class="blog__item__widget"> 
								<li><i class="fa fa-clock-o"></i> 20th May 28, 2020</li>
								<li><i class="fa fa-user"></i> LG News Room</li>
							</ul> 
						</div>   
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="blog__item">
						<div class="blog__item__pic set-bg" 
							data-setbg="./resources/img/blog/news-3.PNG"></div>
						<div class="blog__item__text"> 
							<ul class="blog__item__tags">
								<li><i class="fa fa-tags"></i> Electronic</li>
								<li>store</li>
							</ul>
							<h5> 
								<a href="https://blog.lotte.co.kr/37827">
								Visit 7 Lotte Shopping Malls at once! Online shopping platform Lotte ON
								</a> 
							</h5> 
							<ul class="blog__item__widget">
								<li><i class="fa fa-clock-o"></i> 20th May 12, 2020</li>
								<li><i class="fa fa-user"></i> Lotte blog</li>
							</ul>
						</div> 
					</div> 
				</div>
			</div>
		</div>
	</section>
	<!-- Blog Section End -->

	<!-- Footer Section Begin --> 
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.jsp"><img src="./resources/img/footer-logo.png" alt=""></a>
						</div>
						<p>Challenging the way things have always been done can lead
							to creative new options that reward you.</p>
					</div>
				</div> 
				<div class="col-lg-4 offset-lg-1 col-md-6">
					<div class="footer__address">
						<ul>
							<li><span>Call Us:</span>
								<p>(+12) 345-678-910</p></li>
							<li><span>Email:</span>
								<p>info.colorlib@gmail .com</p></li>
							<li><span>Fax:</span>
								<p>(+12) 345-678-910</p></li>
							<li><span>Connect Us:</span>
								<div class="footer__social">
									<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
										class="fa fa-instagram"></i></a> <a href="#"><i
										class="fa fa-twitter"></i></a> <a href="#"><i
										class="fa fa-skype"></i></a>
								</div></li>
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
						<div class="footer__copyright__text">
							<p>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;
								<script>
									document.write(new Date().getFullYear());
								</script>
								All rights reserved | This template is made with <i
									class="fa fa-heart" aria-hidden="true"></i> by <a
									href="https://colorlib.com" target="_blank">Colorlib</a>
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</p>
						</div>
						<div class="footer__copyright__links">
							<a href="#">Terms</a> <a href="#">Privacy Policy</a> <a href="#">Cookie
								Policy</a>
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
	<script src="./resources/js/categories.js"></script>  
</body>  
</html>