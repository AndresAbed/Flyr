$(document).ready(function(){
  var navbar = $(".welcomeNav");
	var offset = $(navbar).offset();
	$(this).scroll(function(){
    if ($(this).scrollTop() > offset.top) {
      navbar.addClass('affix');
    } else {
    	navbar.removeClass("affix");
    };
  });
})