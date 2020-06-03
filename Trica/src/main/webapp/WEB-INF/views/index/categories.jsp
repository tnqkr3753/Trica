<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<c:forEach var="cate" items="${hash}">
	<div class="categories__item">
		<img src="./resources/img/categories/cat-${cate.BC_NO}.png" alt="">
		<h5>${cate.BC_NAME}</h5>
		<span>${cate.CNT}</span><span>개</span>
	</div>
</c:forEach>
