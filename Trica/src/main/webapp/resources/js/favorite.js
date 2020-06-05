/**
 * 
 */
$(function(){
	$('.delete-wish').click(function(){
		var delLikeNo =$(this).closest('tr').find('#list-like-no').val();
		if(confirm("이 상품을 찜목록에서 삭제하시겠습니까?")){
			var obj = {"delLikeNo":delLikeNo};
			$.ajax({
				type : 'POST',                 //post방식으로 통신
				async : true,
				contentType : 'application/json',
				url : "deleteWish.trc",    //탭의 data-tab속성의 값으로 된 html파일로 통신
				data : JSON.stringify(obj),
				dataType : "text",            //text형식으로 값 읽기
				error : function(e) {          //통신 실패시
					alert("오류입니다.");
				},
				success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
					alert(data);
				}
			});
		}
		location.reload();
	});
})