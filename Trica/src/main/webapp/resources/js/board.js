/**
 * 
 */
$(function(){
	$('.nav-item').click(function() {
		$(".nav-item .active").removeClass("active");
		var a = $(this).find('a');
		var activeTab = a.attr('data-tab');
		a.addClass("active");
		$.ajax({
			type : 'POST',                 //get방식으로 통신
			async : true,
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			url : "board/getBoardList.trc?bType="+activeTab,    //탭의 data-tab속성의 값으로 된 html파일로 통신
			dataType : "html",            //html형식으로 값 읽기
			error : function() {          //통신 실패시
				alert('통신실패!');
			},
			success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
				$('#tabContent').html(data);
			}
		});
	});
});