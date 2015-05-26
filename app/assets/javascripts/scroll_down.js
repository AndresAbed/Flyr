$(document).ready(function(){
	$(".arrow-down").click(function() {
	    $('html,body').animate({
	        scrollTop: $("#steps").offset().top},1200);
	});
})