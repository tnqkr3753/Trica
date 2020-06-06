$(function(){
	$('#aaa').hover(function() {
		$('.hoverpopup').css("visibility", "Visible");
		$(".hoverpopup").css("top", event.target.offsetTop - 15);
		$(".hoverpopup").css("left", event.target.offsetLeft + 30);
		$(".hoverpopup").css("display", "block");  
	}, function() {
		// alert("ok");
		$('.hoverpopup').css("visibility", "hidden");
	});
	$('#cnt').on("propertychange keyup paste input",function(){
		var cnt = $(this).val();
		var stock=$('#stock').val();
		if(cnt*1<0 || cnt*1>stock*1){
			alert("재고가 부족합니다. 재고가 "+stock+"개 남았습니다.");
			$(this).val('1');
		}
		$('.total_price').text(($('#pctPrice').val()*1)*$(this).val());
	})
	$('#increase-cnt').click(function(){ 
		$('#cnt').val($('#cnt').val()*1+1)
		$('#cnt').trigger("input");
		});
	$('#decrease-cnt').click(function(){
		$('#cnt').val($('#cnt').val()*1-1)
		$('#cnt').trigger("input");
	});
	$('.btn_choice_box input').click(function(){
		//장바구니 or 찜하기 누를 때 맞는 action 걸어주기
		$('#pctStock').val($('#cnt').val());
		var type=$(this).attr('act');
		var obj = {"pctNo" : $.trim($('#pctNo').val()),
					"pctStock":$('#cnt').val(),
					"totalPrice":$('#totalPrice').text(),
					"pctImgName":$('#pctImgName').val(),
					"pctName":$('.detailHeader h3').text()
						};
		$.ajax({
			type : 'POST',                 //post방식으로 통신
			async : true,
			contentType : 'application/json',
			url : type,    //탭의 data-tab속성의 값으로 된 html파일로 통신
			data : JSON.stringify(obj),
			dataType : "text",            //text형식으로 값 읽기
			error : function(e) {          //통신 실패시
				alert("오류입니다.");
			},
			success : function(data) {    //통신 성공시 탭 내용담는 div를 읽어들인 값으로 채운다.
				alert(data);
			}
		});
	});
});