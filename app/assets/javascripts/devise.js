/* Sign_in form */

$(document).ready(function(){
  animationClick('#sign_in', '#sign_in_btn', 'fadeInDownBig')

  function animationClick(element, element2, animation){
    $element = $(element);
    $element2 = $(element2);
    $element2.click(
      function() {
        $element.addClass('animated ' + animation);
        $element.css({
          "position":"absolute", 
          "display":"block", 
          "margin-top":"100px", 
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

$(document).ready(function(){
  if (location.href == "http://localhost:3000/sessions/user"){
    $('#sign_in').css({
          "position":"absolute", 
          "display":"block", 
          "margin-top":"100px", 
          "margin-left":"auto", 
          "margin-right":"auto", 
          "left":"0", 
          "right":"0"
        });
  }
})

/* Sign_in button*/

$(document).ready(function(){
  if (location.href == "http://localhost:3000/" 
    || location.href == "http://localhost:3000/sessions/user"
    || location.href == "http://localhost:3000/#"
    || location.href == "http://localhost:3000/users/sign_in"){
    $('#sign_in_btn').show();
  }
  else{
    $('#sign_in_btn').hide();
  }
})

$(document).ready(function(){
    
  $('#sign_in_btn').fadeIn();
  //Check to see if the window is top if not then display button
  $(window).scroll(function(){
    if ($(this).scrollTop() > 10) {
      $('#sign_in_btn').fadeOut();
    } else {
      $('#sign_in_btn').fadeIn();
    }
  });
})

$(document).ready(function(){
  $('.navbar-collapse').on('shown.bs.collapse', function(){
    $('#sign_in_btn').fadeOut();
  })
})

