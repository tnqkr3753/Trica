<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:forEach var="cate" items="${list}">
	<div class="categories__item">
		<img src="./resources/img/categories/cat-${cate.BC_NO}.png" alt="">
		<span>${cate.BC_NAME}</span> 
		<span>${cate.CNT}개</span>
	</div>
</c:forEach> 
            