/**
 * 
 */
$(function(){
	$('.listing__item').click(function(){
		var no =$(this).find('#list-pctno').val();
		location.href="productDetail.trc?pctNo="+no;
	})
});
