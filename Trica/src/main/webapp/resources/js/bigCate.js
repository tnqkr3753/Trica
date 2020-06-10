/**
 * 
 */
$(function(){
	$('.categories__item').css({
		"cursor":"pointer"
	})
	$('.categories__item').click(function(){
		
		
		var cate = $(this).attr('id');
		
		
		location.href = "bigSearch.trc?bcNo="+cate;
	});
	
})