/**
 * 
 */
$(function(){
	//삭제버튼 누를 때
	$('.delete-order').click(function(){
		var delPctIndex =$(this).closest('tr').find('#list-pct-index').val();
		if(confirm("정말 "+delPctIndex+"번 상품을 장바구니에서 삭제하시겠습니까?")){
			var obj = {"delPctIndex":delPctIndex};
			$.ajax({
				type : 'POST',                 //post방식으로 통신
				async : true,
				contentType : 'application/json',
				url : "deleteCookie.trc",    //탭의 data-tab속성의 값으로 된 html파일로 통신
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
	});
	//체크 선택, 취소할때
	$('.custom-control-input').change(function(){
		var price = $(this).closest('tr').find('.each-price').html();
        if($(this).is(":checked")){ //체크함
        	calcul('+',price);
        }else{ //체크해제
        	calcul('-', price);
        }
	});
	function calcul(cal,price){
		var totalPrice=$('#totalOrderPrice').html()*1;
		if(cal=='+'){
			totalPrice +=price*1;
		}else{
			totalPrice -= price*1;
		}
		$('#totalOrderPrice').html(totalPrice);
    	$('#texPrice').html(parseInt(totalPrice*0.1));
    	$('#total-condition-price').html(($('#totalOrderPrice').html()*1+$('#deliveryPrice').html()*1+$('#texPrice').html()*1));
	}
});