/**
 * 
 */
$(function(){
	
	$('.product-item').click(function(){
		
		$('#next_go').submit();
	});
	
	var pctBcNo = $('#pct_bcNo').val(); // big 카테고리 선택하면 sc_no 값 저장
	
	// alert(pctBcNo);
	
	var pctBcNo2 = (pctBcNo.substring(0, 1)*1)-1;	// 저장한 sc_no에서 앞자리 추출해서 bc_no 값 저장
	
		$('#bc_no > option:eq('+pctBcNo2+')').attr('selected','selected');
		$('#bc_no').niceSelect('update');

	
	
})