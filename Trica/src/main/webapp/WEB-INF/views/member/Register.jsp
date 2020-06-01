<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- Google Font -->
<link
	href="https://fonts.googleapis.com/css2?family=Open+Sans:wght@400;600;700;800&display=swap"
	rel="stylesheet">

<!-- Css Styles -->
<link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
<link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
<link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
<link rel="stylesheet" href="css/flaticon.css" type="text/css">
<link rel="stylesheet" href="css/nice-select.css" type="text/css">
<link rel="stylesheet" href="css/barfiller.css" type="text/css">
<link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
<link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
<link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
<link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
<link rel="stylesheet" href="css/style.css" type="text/css">
<link rel="stylesheet" href="css/register.css" type="text/css">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" 
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>Register</title> 
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script type="text/javascript">
function sample6_execDaumPostcode() {
    new daum.Postcode({ 
        oncomplete: function(data) {
            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분. 

            // 각 주소의 노출 규칙에 따라 주소를 조합한다.
            // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
            var addr = ''; // 주소 변수
            var extraAddr = ''; // 참고항목 변수

            //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
            if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                addr = data.roadAddress;
            } else { // 사용자가 지번 주소를 선택했을 경우(J)
                addr = data.jibunAddress;
            }

            // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
            if(data.userSelectedType === 'R'){
                // 법정동명이 있을 경우 추가한다. (법정리는 제외) 
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                    extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraAddr !== ''){
                    extraAddr = ' (' + extraAddr + ')';
                }
                // 조합된 참고항목을 해당 필드에 넣는다.
                document.getElementById("sample6_extraAddress").value = extraAddr;
            
            } else {
                document.getElementById("sample6_extraAddress").value = '';
            }

            // 우편번호와 주소 정보를 해당 필드에 넣는다.
            document.getElementById('sample6_postcode').value = data.zonecode;
            document.getElementById("sample6_address").value = addr;
            // 커서를 상세주소 필드로 이동한다.
            document.getElementById("sample6_detailAddress").focus();
        }
    }).open();
} 
 
</script>
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
								<li><a href="#">Categories</a></li>
								<li><a href="#">Pages</a>
									<ul class="dropdown">
										<li><a href="./about.html">About</a></li>
										<li><a href="./listing-details.html">Listing Details</a></li>
										<li><a href="./blog-details.html">Blog Details</a></li>
										<li><a href="./contact.html">Contact</a></li>
									</ul></li>
								<li><a href="./blog.html">Blog</a></li>
								<li><a href="#">Shop</a></li>
								<li><a href="./Register.jsp">Register</a></li>
							</ul>
						</nav>
						<div class="header__menu__right">
							<a href="#" class="login-btn"><i class="fa fa-user"></i></a>
						</div>
					</div>
				</div> 
				<div id="mobile-menu-wrap"></div>
			</div> 
		</div>	
	</header>  
	<!-- Header Section End --> 
  
	<!-- Breadcrumb Begin -->
	<div class="breadcrumb-area set-bg" 
		data-setbg="img/breadcrumb/breadcrumb-blog.jpg">
		<div class="container">
			<div class="row">
				<div class="col-lg-12 text-center">
					<div class="breadcrumb__text">
						<h2>Register</h2>
						<div class="breadcrumb__option">
							<a href="#"><i class="fa fa-home"></i> Home</a> <span>Our
								Register</span>
						</div>
					</div>
				</div>
			</div>
		</div> 
	</div>
	<!-- Breadcrumb End -->  
	<div class="pb-5">     
		<div class="container">  
			<div class="row"> 
				<div  class="col-lg-12 p-5 bg-white rounded shadow-sm mb-5">
					<div id="formhead" class="page-header">
			 			<div class="col-md-12 col-md-offset-3">
							<h3>회원가입</h3>  
						</div>  
					</div>       
					<div id="formtab" class="col-sm-12 col-md-offset-3"> 
						<form>     
							<div class="form-group"> 
								<label for="memberName" >성명</label> 
								<input type="text" class="form-control" id="memberName" placeholder="이름을 입력해 주세요"> 
							</div>  
  
							<div class="form-group"> 
								<label for="gender">성별</label><br/> 
								<input type="checkbox" name="gender" id="gender" value="남"/>남자 &nbsp;&nbsp;
								<input type="checkbox" name="gender" id="gender" value="여"/>여자 
							</div>   
        
							<div class="form-group">  
								<label for="regNumber">주민번호</label> 
								<input type="text" class="form-control" id="regNumber" placeholder="주민번호를 입력해 주세요">
							</div> 
							
							<div class="form-group">  
								<label for="memberId">아이디</label> 
								<input type="text" class="form-control" id="memberId" placeholder="아이디를 입력해 주세요">
							</div>   
      
			 				<div class="form-group">
								<label for="password">비밀번호</label> 
								<input type="password" class="form-control" id="password" placeholder="비밀번호를 입력해주세요">
							</div>  
   
							<div class="form-group"> 
								<label for="tel">휴대폰 번호</label> 
								<input type="tel" class="form-control" id="tel"	placeholder="휴대폰번호를 입력해 주세요">
							</div>  
          
							<div>  
								<div class="form-group">
									<label for="address">주소</label><br/>
									<input type="text" class="form-control" id="sample6_postcode" placeholder="우편번호">
									<input type="button" id="addbtn" class="form-control btn btn-secondary" onclick="sample6_execDaumPostcode()" value="우편번호 찾기">
									<input type="text" class="form-control" id="sample6_address" placeholder="주소">
									<input type="text" class="form-control" id="sample6_detailAddress" placeholder="상세주소">
									<input type="text" class="form-control" id="sample6_extraAddress" placeholder="참고항목">
								</div>
							</div>         
                 
							<div class="form-group">  
								<label>약관 동의</label> 
								<div data-toggle="buttons">
									<label class="btn btn-secondary active"> 
									<input id="agree" type="checkbox" autocomplete="off">
									</label>    
									<a href="#">이용약관</a>에 동의합니다.    
								</div>  
							</div>           
   
							<div class="form-group"> 
								<label>회원유형</label><br/>
								<div class="form-check">  
								<input type="checkbox" class="form-check-input" name="memberType" id="yuhyeong" v="일반회원" value="0">일반회원 &nbsp;&nbsp;
								<input type="checkbox" class="form-check-input" name="memberType" id="seller" v="판매회원" value="1">판매회원
								</div> 
							</div>      
     
							<div class="form-group text-center">   
								<button type="submit" id="join-submit" class="btn btn-primary"> 
									회원가입<i class="fa fa-check spaceLeft"></i>
								</button>
								<button type="submit" class="btn btn-warning">
									가입취소<i class="fa fa-times spaceLeft"></i>
								</button>
							</div>
						</form> 
					</div>  
				</div>
			</div> 
		</div>
	</div>
   
	<!-- Footer Section Begin -->
	<footer class="footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-6">
					<div class="footer__about">
						<div class="footer__about__logo">
							<a href="./index.jsp"><img src="img/footer-logo.png" alt=""></a>
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
	<script src="js/jquery-3.3.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery.nicescroll.min.js"></script>
	<script src="js/jquery.barfiller.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/jquery.slicknav.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/main.js"></script>
	<script src="js/register.js"></script>
	
</body>
</html>