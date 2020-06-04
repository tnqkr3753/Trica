/*
 * 
 */


//follow quick menu
$(window).scroll(function(){
var scrollTop = $(document).scrollTop();
if (scrollTop < 180) {
 scrollTop = 180;
}
$("#followquick").stop();
$("#followquick").animate( { "top" : scrollTop });
});