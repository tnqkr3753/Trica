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
    <jsp:include page="../../../header.jsp"></jsp:include>
    <!-- Header Section End --> 
    <!-- Breadcrumb Begin -->
    <div class="breadcrumb-area set-bg" data-setbg="./resources/img/breadcrumb/breadcrumb-orderlist.jpg">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <div class="breadcrumb__text">
                        <h2>Board Modify</h2>
                        <div class="breadcrumb__option">
                            <a href="#"><i class="fa fa-home"></i> Home</a>
                            <span>Board Modify</span>
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
                  <form method="post" action="modifyBoard.trc" enctype="multipart/form-data">
                  	 <div class="row form-group">
                  	 	<c:choose>
                  	 	<c:when test="${empty board.parentBoardNo}">
                  	 	<select id="inputType" name="boardType" class="selectpicker" >
		                        	<option <c:if test="${board.boardType eq 'Free' }">selected</c:if> value="Free">자유게시판</option>
		                        	<option <c:if test="${board.boardType eq 'Inquiry' }">selected</c:if> value="Inquiry">문의게시판</option>
		                        	<option <c:if test="${board.boardType eq 'Review' }">selected</c:if> value="Review">상품리뷰</option>
                     	</select>
                     	</c:when>
                     	<c:otherwise>
                     		<input type="hidden" name="boardType" value="${board.boardType }"/>
                     	</c:otherwise>
                     	</c:choose>
                     </div>
                     <c:if test='${not empty board.parentBoardNo}'>
	                     <div class="form-group">
	                        <label for="inputTitle" >${board.parentBoardNo}번글의 답글</label>
	                        <input id="inputTitle" type="hidden" name="parentBoardNo" value="${board.parentBoardNo }">
	                     </div>
                     </c:if>
                     <div class="form-group">
                        <label for="inputTitle" >제목</label>
                        <input id="inputTitle" type="text" class="form-control" name="boardTitle" placeholder="제목을 입력해주세요" value="${board.boardTitle }">
                     </div>
                     <input type="hidden" name="memberId" value="aaarirang"/>
                     <input type="hidden" name="boardNo" value="${board.boardNo }"/>
                     <!-- 벨류 빼기 -->
                     <div class="form-group">
                        <label for="inputContent">글 내용</label> 
                        <textarea class="form-control" id="inputContent" name="boardContent" placeholder="내용을 입력해주세요">${board.boardContent }</textarea>
                     </div> 
                     <div class="form-group">
                        <label for="inputContent">첨부파일</label> 
                        <input type="file" class="form-control" maxlength="60" size="40" name='file'>
                     </div> 
                     
                     <input class="btn btn-primary " type="submit"	value="글 수정 " />
                     
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
    <jsp:include page="../../../footer.jsp"></jsp:include>
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
    <script src="http://lab.alexcican.com/set_cookies/cookie.js" type="text/javascript" ></script>
</body>
</html>