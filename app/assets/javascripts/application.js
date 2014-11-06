// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

/* Sign_in form */

$(document).ready(function(){
	animationClick('#sign_in', '#li', 'fadeInDownBig')

	function animationClick(element, element2, animation){
	  $element = $(element);
	  $element2 = $(element2);
	  $element2.click(
	    function() {
	      $element.addClass('animated ' + animation);
	      $element.css({
	      	"position":"absolute", 
	      	"display":"block", 
	      	"margin-top":"90px", 
	      	"margin-left":"auto", 
	      	"margin-right":"auto", 
	      	"left":"0", 
	      	"right":"0"
	      });
	      //wait for animation to finish before removing classes
	      window.setTimeout( function(){
	          $element.removeClass('animated ' + animation);
	      }, 1000);
	    }
	  );
	};
})

$(document).ready(function(){
	animationClick('#sign_in', '#close', 'fadeOutUp')

	function animationClick(element, element2, animation){
	  $element = $(element);
	  $element2 = $(element2);
	  $element2.click(
	    function() {
	      $element.addClass('animated ' + animation);
	      $element.css({
	      	"position":"absolute", 
	      	"display":"block",  
	      	"margin-left":"auto", 
	      	"margin-right":"auto", 
	      	"left":"0", 
	      	"right":"0",
	      });
	      //wait for animation to finish before removing classes
	      window.setTimeout( function(){
	          $element.removeClass('animated ' + animation);
	          $element.hide();
	      }, 1000);
	    }
	  );
	};
})

/* Sign_in button*/

$(document).ready(function(){
	$('#li').addClass('animated zoomIn');
	window.setTimeout( function(){
	    $('#li').removeClass('animated zoomIn');
	}, 1000);
})

$(document).ready(function(){
	$('.navbar-collapse').on('shown.bs.collapse', function(){
		$('#li').hide(1000);
	})
	$('.navbar-toggle').click(function() {
        $("#li").show();
        $('#li').addClass('animated zoomIn');
    });
    window.setTimeout( function(){
	    $('#li').removeClass('animated zoomIn');
	}, 1000);
})


/* Scroll to top */ 

$(document).ready(function(){
	
	//Check to see if the window is top if not then display button
	$(window).scroll(function(){
		if ($(this).scrollTop() > 100) {
			$('#scrollToTop').fadeIn();
		} else {
			$('#scrollToTop').fadeOut();
		}
	});
	
	//Click event to scroll to top
	$('#scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},1000);
		return false;
	});
	
});