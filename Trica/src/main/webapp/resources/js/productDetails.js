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
})