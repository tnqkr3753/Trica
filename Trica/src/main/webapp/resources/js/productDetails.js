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
		//장바구니 or 찜하기 누를 때
	});
})