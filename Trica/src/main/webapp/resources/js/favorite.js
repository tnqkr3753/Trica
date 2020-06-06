/**
 * 
 */
$(function(){
	//찜목록에서 삭제하기 누를 떄
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
	
	//장바구니에 담기 누를 때
	$('#add-cart').click(function(){
		$('tbody > tr input[type=checkbox]').each(function(){
			//만약 체크상품이면
			if($(this).is(':checked')){
				var tr = $(this).closest('tr');
				var obj = {"pctNo" : $.trim(tr.find('#like-pct-no').val()),
						"pctStock":tr.find('#pctCount').val(),
						"totalPrice":tr.find('#pctCount').val()*tr.find('#like-pct-price').text(),
						"pctImgName":tr.find('th img').attr('src-name'),
						"pctName":tr.find('th h5 > a').text()
							};
				//장바구니(쿠키)에 추가
				$.ajax({
					type : 'POST',                 //post방식으로 통신
					async : true,
					contentType : 'application/json',
					url : "addCart.trc",    //탭의 data-tab속성의 값으로 된 html파일로 통신
					data : JSON.stringify(obj),
					dataType : "text",            //text형식으로 값 읽기
					error : function(e) {          //통신 실패시
						alert("추가오류입니다.");
					},
					success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
						alert(data);
					}
				});
				//찜목록에서 삭제
				var obj2 = {"delLikeNo":tr.find('#list-like-no').val()}; 
				$.ajax({
					type : 'POST',                 //post방식으로 통신
					async : true,
					contentType : 'application/json',
					url : "deleteWish.trc",    //탭의 data-tab속성의 값으로 된 html파일로 통신
					data : JSON.stringify(obj2),
					dataType : "text",            //text형식으로 값 읽기
					error : function(e) {          //통신 실패시
						alert("삭제오류입니다.");
					},
					success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
					}
				});
				location.reload();
			}
		})
	})
})