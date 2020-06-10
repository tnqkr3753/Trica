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
		var result = prompt("비밀번호를 입력하세요");
		var url = "deleteBoard.trc";
		var form = $(this).closest('form');
		var check = passCheck(result,form,url);

	});
	$('#btn-modify').click(function(){
		//글쓴이와 누른사람이 같은지 확인
		var result = prompt("비밀번호를 입력하세요");
		
		var url = "modifierBoard.trc";
		var form = $(this).closest('form');
		passCheck(result,form,url);
		
	});
	function passCheck(result,form,url){
		var id = $('#member-id').val();
		var obj = {
				"password":result,
				"memberId":id
		}
		var check = 0;
		var ajax = $.ajax({
			type : 'POST',                 //post방식으로 통신
			async : true,
			contentType : 'application/json; charset=UTF-8',
			url : "checkPass.trc",    //탭의 data-tab속성의 값으로 된 html파일로 통신
			data : JSON.stringify(obj),
			dataType : "text",            //text형식으로 값 읽기
			error : function(e) {          //통신 실패시
				alert("비밀번호 오류입니다.");
			},
			success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
				if(data==1){
					form.attr("action",url);
					form.submit();
				}else if(data==0){
					alert("비밀번호가 틀렸습니다.");
				}else{
					alert("게시자만 수정,삭제가 가능합니다.");
				}
			}
		});
		ajax.done();
	}
})