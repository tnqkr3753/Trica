/**
 * 
 */
$(function(){
	var boardNo = $('.card-footer input[name=boardNo]').val();
	var boardType = $('.card-footer input[name=boardType]').val();
	$('.card-footer input').hover(function(){
		$(this).css('cursor','pointer');
	})
	$('#btn-list').click(function(){
		location.href="boardList.trc";
	});
	$('#btn-reply').click(function(){
		location.href="insertBoard.trc?boardNo="+boardNo+"&boardType="+boardType;
	});
	$('#btn-delete').click(function(){
		if(confirm(boardNo+"번 글을 삭제하시겠습니까?")){
			location.href="deleteBoard.trc?boardNo="+boardNo;
		}
	});
	$('#btn-modify').click(function(){
		location.href="insertBoard.trc?boardNo="+boardNo;
	});
})