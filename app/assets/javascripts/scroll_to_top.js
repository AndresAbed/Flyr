/* Scroll to top */ 
$(document).ready(function(){
	$(window).scroll(function(){
		if ($(this).scrollTop() > 300) {
			$('#scrollToTop').fadeIn();
		} else {
			$('#scrollToTop').fadeOut();
		}
	});
	$('#scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},900);
		return false;
	});
});