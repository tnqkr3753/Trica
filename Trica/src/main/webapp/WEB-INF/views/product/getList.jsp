<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:choose>
	<c:when test="${empty list }">
		최근 추가 상품이 없습니다.
	</c:when>
	<c:otherwise>
		<c:set var="count" value="1"></c:set>
		<c:forEach items="${list}" var="pct">
			
								<div class="col-lg-4 col-md-6">
									<div class="listing__item">
								
								
								<div class="listing__item__pic set-bg" data-setbg="./resources/upload/product/img/${pct.pctImgName}" style="background-image: url(&quot;./resources/upload/product/img/${pct.pctImgName}&quot;);">
											<img src="img/listing/list_icon-3.png" alt="">
											<div class="listing__item__pic__tag">Popular</div>
											<div class="listing__item__pic__btns">
												<a href="#"><span class="icon_zoom-in_alt"></span></a> <a
													href="#"><span class="icon_heart_alt"></span></a>
											</div>
										</div>
										<div class="listing__item__text">
											<div class="listing__item__text__inside">
												<h5>${pct.pctName}</h5>
												<div class="listing__item__text__rating">
													<div class="listing__item__rating__star">
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star"></span> <span class="icon_star"></span>
														<span class="icon_star-half_alt"></span>
													</div>
													<h6>${pct.pctPrice }</h6>
												</div>
												<ul>
													<li><span class="icon_pin_alt"></span> 
													${pct.pctIntro }
													</li>
													<li><span class="icon_phone"></span> (+12) 345-678-910</li>
												</ul>
											</div>
											<div class="listing__item__text__info">
												<div class="listing__item__text__info__left">
													<img src="img/listing/list_small_icon-1.png" alt="">
													<span>${pct.pctStock }</span>
												</div>
												<div class="listing__item__text__info__right">Open Now</div>
											</div>
										</div>
									</div>
								</div>
			</c:forEach>
		</c:otherwise>
		
		
</c:choose>