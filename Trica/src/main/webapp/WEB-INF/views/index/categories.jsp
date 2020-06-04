<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:set value="1" var="id"></c:set>
<c:forEach var="cate" items="${list}" >
	<div class="categories__item" id="${id }">
		<img src="./resources/img/categories/cat-${cate.BC_NO}.png" alt="">
		<span>${cate.BC_NAME}</span> 
		<span>${cate.CNT}개</span>
	</div> 
	<c:set var="id" value="${id +1 }"></c:set>
</c:forEach> 
             <script src="./resources/js/bigCate.js"></script>