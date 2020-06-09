<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<%
	String projectName = "Trica";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>EVENT ! PROMOTION</title>
<script src="./resources/js/jquery-3.3.1.min.js"></script>
<script src="./resources/js/jquery.cookie.js"></script>
<script type="text/javascript">
	$(function() { 
		$('#closeWin').click(function() {
			// 만일 체크되었다면 쿠키에 저장
			// cookie-name : Promotion, cookie-value : NO, expired-date : 1
			if ($('input[type=checkbox]').is(':checked')) {
				$.cookie('Promotion', 'NO', {
					expires : 1
				});//expires :1 하루동안 쿠키에 보관 숫자가 바뀌면 일수가 증가		
			}
			window.close();
		});
	})
</script>
</head>
<body>
	<div class="testimonial__slider owl-carousel">
		<div class="testimonial__item">
			<p>
				<img src="./resources/img/event/event1.png">
			</p>
		</div>
		<div class="testimonial__item">
			<p>
				<img src="./resources/img/event/event2.jpg">
			</p>
		</div>
		<div class="testimonial__item">
			<p>
				<img src="./resources/img/event/event3.jpg">
			</p>
		</div>
		<div class="testimonial__item">
			<p>
				<img src="./resources/img/event/event4.jpg">
			</p>
		</div>
		<div class="testimonial__item">
			<p>
				<img src="./resources/img/event/event5.jpg">
			</p>
		</div>
	</div> 
	이 페이지를 오늘 하루 열지 않겠습니다.
	<input type="checkbox">
	<input type='button' id='closeWin' name='closeWin' value='닫기' />
</body>
</html>
