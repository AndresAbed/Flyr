$(document).ready(function(){
  $('#sign_in_btn').fadeIn()
  $(window).scroll(function(){
    if ($(this).scrollTop() > 10) {
      $('#sign_in_btn').fadeOut();
    } else {
      $('#sign_in_btn').fadeIn();
    };
  });
});