/**
 * 
 */
$(function(){
	/* $('#new').click(function() {
		location.href="getNewList.trc";
	}) */
	var tabName = $('.most__search__tab .nav-item .active').attr('data-tab');
	$.ajax({
		type : 'POST',                 // 통신방법 : get
		async : true,
		contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
		url : "getNewList.trc?tabName="+tabName,    // 가져올 페이지
		dataType : "html",            // html형식으로 값 읽기
		error : function() {          // 통신 실패시
			alert('통신실패!!!!!!');
		},
		success : function(data) {    // 통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
			$('#tabContent > div').html(data);
		}
	});
	$('.most__search__tab a').click(function(){
		tabName=$(this).attr('data-tab');
		$.ajax({
			type : 'POST',                 // 통신방법 : get
			async : true,
			contentType : 'application/x-www-form-urlencoded;charset=UTF-8',
			url : "getNewList.trc?tabName="+tabName,    // 가져올 페이지
			dataType : "html",            // html형식으로 값 읽기
			error : function() {          // 통신 실패시
				alert('통신실패!!!!!!');
			},
			success : function(data) {    // 통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
				$('#tabContent > div').html(data);
			}
		});
	});
});