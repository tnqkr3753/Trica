<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="description" content="Directing Template">
<meta name="keywords" content="Directing, unica, creative, html">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>productInsert.jsp</title>

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/font-awesome.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/elegant-icons.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/flaticon.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/nice-select.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/barfiller.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/magnific-popup.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/jquery-ui.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/owl.carousel.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/slicknav.min.css"
	type="text/css">
<link rel="stylesheet" href="./resources/css/style.css" type="text/css">
<link rel="stylesheet" href="./resources/css/productInsert.css"
	type="text/css">

</head>

<body>
	<!-- Page Preloder -->
	<div id="preloder">
		<div class="loader"></div>
	</div>

	<!-- Header 시작 -->
	<jsp:include page="../../../header.jsp"></jsp:include>
	<!-- Header 끝 -->

	<div class="breadcrumb-area set-bg"
		data-setbg="./resources/img/background_black.png">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>□ TRICA</h2>
						<div class="breadcrumb__option">
							<a href="#"><i class="fa fa-home"></i> 전자제품</a> <span> 상품
							</span>
						</div>
					</div>
				</div>
			</div> 
		</div> 
	</div>

	<div class="container" width="80%"> 
		<div class="row-fluid">
			<!--span-->
			<div class="span9" id="content">
				<c:choose>
					<c:when test="${empty result.pctNo}">
						<div class="row-fluid">
							<br />
							<div class="alert alert-warning">
								<h4>상품 등록</h4>
							</div> 
						</div>  
					</c:when> 
					<c:otherwise> 
						<div class="row-fluid">
							<br />
							<div class="alert alert-warning">
								<h4>상품 수정</h4>
							</div>
						</div> 
					</c:otherwise>
				</c:choose>
				<div>
					<form action="productModify.trc" method="post" name="form1"
						enctype='multipart/form-data'>
						<input type="hidden" name="pctNo" value="${result.pctNo }">
						<div class="table-responsive">
							<table class="table">   
								<c:choose>
									<c:when test="${empty result.pctNo}">
										<tr> 
											<th class="success">1차 분류 선택</th>
												<td colspan="5"><select id="category1" name="bigC">
													<option value="1">TV/냉장고/세탁기/건조기</option>
													<option value="2">카메라/게임/음향</option>
													<option value="3">주방가전</option>
													<option value="4">컴퓨터/휴대폰</option>
													<option value="5">계절가전</option>
												</select></td>
										</tr>  
									</c:when>
									<c:otherwise>   
										<tr>   
											<th class="success">1차 분류 선택</th> 
												<td colspan="5"><input type="hidden" id="bigC" value="${result.bigC}">
												<select id="category1" name="bigC">
													<option value="1">TV/냉장고/세탁기/건조기</option>
													<option value="2">카메라/게임/음향</option>  
													<option value="3">주방가전</option> 
													<option value="4">컴퓨터/휴대폰</option>
													<option value="5">계절가전</option>   
												</select></td> 
										</tr>       
									</c:otherwise>	
								</c:choose>
								 
								<c:choose>
									<c:when test="${empty result.pctNo}">
										<tr>
											<th class="success">2차 분류 선택</th> 
											<td colspan="5">
											<select id="category2" name="smallC">
											</select></td>
										</tr> 
									</c:when>     
									<c:otherwise>  
										<tr>
											<th class="success">2차 분류 선택</th>
											<td colspan="5"><input type="hidden" id="smallC" value="${result.smallC}">
											<select id="category2" name="smallC">
											</select></td>  
										</tr>   
									</c:otherwise>   
								</c:choose>  
								 
								<c:choose>
									<c:when test="${empty result.pctNo}">
										<tr>
											<th class="success">상품재고</th>
											<td colspan="5"><input type="text" name="pctStock"
												id="pct_cnt" style="width: 26%"></td>
										</tr>
									</c:when>
									<c:otherwise> 
										<tr> 
											<th class="success">상품재고</th>
											<td colspan="5"><input type="text" name="pctStock"
												id="pct_cnt" style="width: 26%" value="${result.pctStock}"></td>
										</tr>
									</c:otherwise>
								</c:choose>	 
								 
								<c:choose>
									<c:when test="${empty result.pctNo}">	
										<tr>
											<th class="success">상품명</th>
											<td colspan="5"><input type="text" name="pctName"
												id="pct_name" style="width: 26%"></td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr> 
											<th class="success">상품명</th>
											<td colspan="5"><input type="text" name="pctName"
												id="pct_name" style="width: 26%" value="${result.pctName}"></td>
										</tr>
									</c:otherwise>	  
								</c:choose>		 
									
								<c:choose>	
									<c:when test="${empty result.pctNo}">
										<tr>
											<th class="success">상품가격</th>
											<td colspan="5"><input type="text" name="pctPrice"
												id="pct_price" style="width: 26%"></td>
										</tr>
									</c:when>	 
									<c:otherwise>
										<tr>
											<th class="success">상품가격</th>
											<td colspan="5"><input type="text" name="pctPrice"
												id="pct_price" style="width: 26%" value="${result.pctPrice}"></td>
										</tr>
									</c:otherwise>		  
								</c:choose>	 
								
								<c:choose>	
									<c:when test="${empty result.pctNo}">	
										<tr> 
											<th class="success">상품소개</th>
											<td colspan="5"><input type="text" name="pctIntro"
												id="pct_intro" style="width: 98%"></td>
										</tr>
									</c:when>
									<c:otherwise>
											<tr> 
											<th class="success">상품소개</th>
											<td colspan="5"><input type="text" name="pctIntro"
												id="pct_intro" value="${result.pctIntro}" style="width: 98%"></td>
										</tr>
									</c:otherwise>	
								</c:choose>	 
								
								<c:choose>	 
									<c:when test="${empty result.pctNo}">
										<tr>
											<th>상세설명</th>
											<td colspan="5"><textarea id="pct_cont"
													style="width: 98%; height: 200px;" name="pctDetail"></textarea>
											</td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr> 
											<th>상세설명</th>
											<td colspan="5"><textarea id="pct_cont"
													style="width: 98%; height: 200px;" name="pctDetail">${result.pctDetail}</textarea>
											</td>
										</tr> 
									</c:otherwise>	 
								</c:choose>	
								   
								<c:choose>	 
									<c:when test="${empty result.pctNo}">
										<tr> 
											<th>상품 이미지</th>
											<td colspan="5"><input type="file" name="file"
												id="pct_img"></td>
										</tr>
									</c:when>
									<c:otherwise>
										<tr>  
											<th>상품 이미지</th>
											<td colspan="5"><input type="file" name="file"
												id="pct_img" value="file"></td>
										</tr>
										<tr>
											<th>이미지</th>
											<td>
											<img src="./resources/upload/product/img/${result.pctImgName }">
											</td>
										</tr>
										
									</c:otherwise>	 
								</c:choose>		
							</table> 
						</div>  
						
						<c:choose>  
							<c:when test="${empty result.pctNo}">
								<div class="text-center">
									<input type="submit" value="상품등록" class="btn_pct_insert">
									<input type="reset" value="초기화" class="btn_pct_reset">
								</div> 
							</c:when> 
							<c:otherwise> 
								<div class="text-center">
									<input type="button" value="상품수정" id="btnModify" class="btn_pct_insert">
									<input type="reset" value="초기화" class="btn_pct_reset">
									<input type="button" value="삭제" id="btnDelete" class="btn_pct_insert">  
								</div>
							</c:otherwise>
						</c:choose>    
					</form>    
				</div> 
			</div> 
		</div>  
	</div>


	<!-- Footer 시작 -->
	<jsp:include page="../../../footer.jsp"></jsp:include>
	<!-- Footer 끝 -->
  
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
	<script src="./resources/js/productInsert.js"></script>
	<script src="http://lab.alexcican.com/set_cookies/cookie.js"
		type="text/javascript"></script>
	<script src="./resources/js/productModify.js"></script>	 
</body>
</html>