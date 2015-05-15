$(document).ready(function(){
	var offset = $(".steps").offset();
	var $numbers = $(".numbers")
	$(this).scroll(function(){
		if ($(this).scrollTop() > (offset.top)-300) {
			$numbers.each(function(index) {
			  var that = this;
			  setTimeout(function() {
			  	$(that).css({"opacity":"1"})
			    $(that).addClass('animated fadeInUp');
			  }, 100 * index);
			});
		};
	});
})