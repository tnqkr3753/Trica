/**
 * 
 */
$(function(){
	var totalPrice= 0;
	$('.each-price').each(function(){
		totalPrice += $(this).text()*1;
	})
	$('#totalGoodsPrice').text(totalPrice);
	$('#totalDeliveryCharge').text('2500');
	$('#totalTaxCharge').text(Math.floor(totalPrice*0.1));
	$('#totalSettlePrice').text($('#totalGoodsPrice').text()*1+$('#totalDeliveryCharge').text()*1+$('#totalTaxCharge').text()*1);
	$('#inputTotalPrice').val($('#totalSettlePrice').text());
	$('.order-btn').click(function(){
		if($('#confirm-check').is(':checked')){
			var addr1 = $('#sample6_postcode').val()+"_"+$('#sample6_address').val()+"_"+$('#sample6_detailAddress').val()+"_"+$('#sample6_extraAddress').val();
			$('#address-del').val(addr1);
			var addr2 = $('#sample5_postcode').val()+"_"+$('#sample5_address').val()+"_"+$('#sample5_detailAddress').val()+"_"+$('#sample5_extraAddress').val();
			$('#address-rec').val(addr2);
		}else{
			alert("구매진행 동의에 체크해주세요.");
		}
	});
});