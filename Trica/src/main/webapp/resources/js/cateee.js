/**
 * 
 */
$(function(){
	
	$('.categories__item').click(function(){
		
		var cate = $(this).attr('id');
		
		// alert(cate);
		
		location.href = "bigSearch.trc?bcNo="+cate;
	});
})