<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<c:choose>
	<c:when test="${empty list }">	<!-- list가 비어있을 때  -->
		상품이 존재하지 않습니다.
	</c:when>
	<c:otherwise> 
		<c:set var="count" value="1"></c:set>
		
		<c:forEach items="${list}" var="pct">
		
			<div class="col-lg-4 col-md-6">
				<div class="listing__item">
					<div class="listing__item__pic set-bg"
						data-setbg="./resources/upload/product/img/${pct.pctImgName}"
						style="background-image: url(&quot;./resources/upload/product/img/${pct.pctImgName}&quot;);">	<!-- 이미지 출력 -->
						 
						<c:choose>
							<c:when test="${tabName eq 'all'}"><div  class="listing__item__pic__tag top_rate"></c:when>
							<c:when test="${tabName eq 'popular'}"><div  class="listing__item__pic__tag popular"></c:when>
							<c:when test="${tabName eq 'recommend'}"><div  class="listing__item__pic__tag recommend"></c:when>
							<c:when test="${tabName eq 'new'}"><div  class="listing__item__pic__tag new"></c:when>
						</c:choose>
						${tabName }</div>
 
						
					</div>
					<div class="listing__item__text">
						<div class="listing__item__text__inside">
							<h5>${pct.pctName}</h5>
							<div class="listing__item__text__rating">
								<h6>${pct.pctPrice }원</h6>
							</div>
								<span class="arrow_carrot-right"></span> ${pct.pctIntro}
							
						</div>
						<div class="listing__item__text__info">
							<div class="listing__item__text__info__left">
							<span>현재 재고 : ${pct.pctStock }개</span> 
							</div>
						</div>
					</div>
				</div>
			</div>
		</c:forEach>
	</c:otherwise>


</c:choose>