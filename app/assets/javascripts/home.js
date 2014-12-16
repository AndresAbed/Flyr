$(document).ready(function(){
  $("#myCarousel").carousel({
    interval : 5000,
    pause:true
  });
});

$(document).ready(function(){

  var date = new Date();
	var day = date.getDay();

	if (day == 0) {
    $('#sunday').addClass("active");
    $('#sunday-mark').addClass("active");
	} 
	else {
		if (day == 1){
			$('#monday').addClass("active");
    	$('#monday-mark').addClass("active");
		}
		else{
			if (day == 2){
				$('#tuesday').addClass("active");
    		$('#tuesday-mark').addClass("active");
			}
			else{
				if (day == 3){
					$('#wednesday').addClass("active");
	    		$('#wednesday-mark').addClass("active");
    		}
    		else{
    			if (day == 4) {
    				$('#thursday').addClass("active");
    				$('#thursday-mark').addClass("active");
    			}
    			else{
    				if (day == 5) {
    					$('#friday').addClass("active");
    					$('#friday-mark').addClass("active");
    				}
    				else{
    					$('#saturday').addClass("active");
    					$('#saturday-mark').addClass("active");
    				}
    			}
    		}
			}
		}
	}

});

$(document).ready(function(){
  $('.edit-popover > .banner-btn').popover({
    html : true,
    title: function() {
      return $(this).parent().find('.head').html();
    },
    content: function() {
      return $(this).parent().find('.content').html();
    },
    container: 'body',
    placement: 'right'
  });
})