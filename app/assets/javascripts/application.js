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
//= require underscore
//= require gmaps/google
//= require_tree .

/* Scroll to top */ 

$(document).ready(function(){
	//Check to see if the window is top if not then display button
	$(window).scroll(function(){
		if ($(this).scrollTop() > 300) {
			$('#scrollToTop').fadeIn();
		} else {
			$('#scrollToTop').fadeOut();
		}
	});
	
	//Click event to scroll to top
	$('#scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},700);
		return false;
	});
	
});

/* Share counters */

$(document).ready(function(){
	var countUp, setCount, url;

	url = window.location.href;

	$.getJSON("https://urls.api.twitter.com/1/urls/count.json?url=" + url + "&callback=?", function(json) {
		return setCount($(".twCount"), json.count);
	});

	$.getJSON("https://graph.facebook.com/" + url, function(json) {
		return setCount($(".fbCount"), json.shares);
	});

	countUp = function($item) {
		return setTimeout(function() {
			var current, newCount, target;
			current = $item.attr("data-current-count") * 1;
			target = $item.attr("data-target-count") * 1;
			newCount = current + Math.ceil((target - current) / 2);
			$item.attr("data-current-count", newCount);
			$item.html(newCount);
			if (newCount < target) {
				return countUp($item);
			}
		}, 100);
	};

	setCount = function($item, count) {
		if (count === null) {
			count = null;
		}
		$item.attr("data-target-count", count);
		$item.attr("data-current-count", 0);
		return countUp($item);
	};

})

$(document).ready(function(){
  $(".facebook-share").hover(function(){
    $(".fbCount").fadeIn();
    },function(){
    $(".fbCount").fadeOut();
  });
  
  $(".twitter-share").hover(function(){
    $(".twCount").fadeIn();
    },function(){
    $(".twCount").fadeOut();
  });
});