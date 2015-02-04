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
			$('#scrollToTop').fadeIn()
		} else {
			$('#scrollToTop').fadeOut()
		}
	})
	
	//Click event to scroll to top
	$('#scrollToTop').click(function(){
		$('html, body').animate({scrollTop : 0},700)
		return false
	})
	
})

/* Share counters */

$(document).ready(function(){
	var countUp, setCount, url

	url = window.location.href

	$.getJSON("https://urls.api.twitter.com/1/urls/count.json?url=" + url + "&callback=?", function(json) {
		return setCount($(".twCount"), json.count)
	})

	$.getJSON("https://graph.facebook.com/" + url, function(json) {
		return setCount($(".fbCount"), json.shares)
	})

	countUp = function($item) {
		return setTimeout(function() {
			var current, newCount, target
			current = $item.attr("data-current-count") * 1
			target = $item.attr("data-target-count") * 1
			newCount = current + Math.ceil((target - current) / 2)
			$item.attr("data-current-count", newCount)
			$item.html(newCount)
			if (newCount < target) {
				return countUp($item)
			}
		}, 100)
	}

	setCount = function($item, count) {
		if (count === null) {
			count = null
		}
		$item.attr("data-target-count", count)
		$item.attr("data-current-count", 0)
		return countUp($item)
	}

})

/* Footer colors */

$(document).ready(function(){

  /* Facebook */
  $(".social i.fa-facebook").mouseover(function(){
    $("#footer").css({
      "background-color":"rgb(59,89,152)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(this).css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright .container").css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright").css({
      "background-color":"rgb(59,89,152)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(".social-text").text('Seguinos en Facebook')
    $(".social-text").css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
  })
  $(".social i.fa-facebook").mouseout(function(){
    $("#footer").css({
      "background-color":"rgba(20,20,20,1)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(this).css({
      "color":"#777",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright .container").css({
      "color":"#777",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright").css({
      "background-color":"rgba(20,20,20,1)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(".social-text").text('Seguinos en nuestras redes sociales')
    $(".social-text").css({
      "color":"#333",
      "transition":"color .5s ease-in-out",
    })
  })

  /* Google plus */
  $(".social i.fa-google-plus").mouseover(function(){
    $("#footer").css({
      "background-color":"rgb(211, 72, 54)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(this).css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright .container").css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright").css({
      "background-color":"rgb(211, 72, 54)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(".social-text").text('Seguinos en Google+')
    $(".social-text").css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
  })
  $(".social i.fa-google-plus").mouseout(function(){
    $("#footer").css({
      "background-color":"rgba(20,20,20,1)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(this).css({
      "color":"#777",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright .container").css({
      "color":"#777",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright").css({
      "background-color":"rgba(20,20,20,1)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(".social-text").text('Seguinos en nuestras redes sociales')
    $(".social-text").css({
      "color":"#333",
      "transition":"color .5s ease-in-out",
    })
  })

  /* Instagram */
  $(".social i.fa-instagram").mouseover(function(){
    $("#footer").css({
      "background-color":"#3f729b", 
      "transition":"background-color .5s ease-in-out"
    })
    $(this).css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright .container").css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright").css({
      "background-color":"#3f729b", 
      "transition":"background-color .5s ease-in-out"
    })
    $(".social-text").text('Mirá nuestras fotos en Instagram')
    $(".social-text").css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
  })
  $(".social i.fa-instagram").mouseout(function(){
    $("#footer").css({
      "background-color":"rgba(20,20,20,1)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(this).css({
      "color":"#777",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright .container").css({
      "color":"#777",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright").css({
      "background-color":"rgba(20,20,20,1)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(".social-text").text('Seguinos en nuestras redes sociales')
    $(".social-text").css({
      "color":"#333",
      "transition":"color .5s ease-in-out",
    })
  })

  /* Twitter */
  $(".social i.fa-twitter").mouseover(function(){
    $("#footer").css({
      "background-color":"#4099ff", 
      "transition":"background-color .5s ease-in-out"
    })
    $(this).css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright .container").css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright").css({
      "background-color":"#4099ff", 
      "transition":"background-color .5s ease-in-out"
    })
    $(".social-text").text('Seguinos en Twitter')
    $(".social-text").css({
      "color":"white",
      "transition":"color .5s ease-in-out",
    })
  })
  $(".social i.fa-twitter").mouseout(function(){
    $("#footer").css({
      "background-color":"rgba(20,20,20,1)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(this).css({
      "color":"#777",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright .container").css({
      "color":"#777",
      "transition":"color .5s ease-in-out",
    })
    $(".copyright").css({
      "background-color":"rgba(20,20,20,1)", 
      "transition":"background-color .5s ease-in-out"
    })
    $(".social-text").text('Seguinos en nuestras redes sociales')
    $(".social-text").css({
      "color":"#333",
      "transition":"color .5s ease-in-out",
    })
  })
})