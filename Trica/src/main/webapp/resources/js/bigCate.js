/**
 * 
 */
$(function(){
	
	$('.categories__item').click(function(){
		
		
		var cate = $(this).attr('id');
		
		
		location.href = "bigSearch.trc?bcNo="+cate;
	});
	
})