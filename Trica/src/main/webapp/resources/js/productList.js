$(function(){
	$('tr').css({
		'cursor':'pointer'
	})  
	$('tr').click(function(){
		$(this).find('form').submit();
	})
})   