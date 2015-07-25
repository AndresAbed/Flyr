$(document).ready(function(){
  var showForm = function(){
    var form = $('.sign-in-container');
    form.addClass('animated fadeInDownBig');
    form.addClass('sign-in-container-show');
    window.setTimeout( function(){
      form.removeClass('fadeInDownBig');
    }, 1000);
  };
  var hideForm = function(){
    var form = $('.sign-in-container');
    form.addClass('animated fadeOutUp');
    window.setTimeout( function(){
      form.removeClass('animated fadeOutUp');
      form.removeClass('sign-in-container-show');
    }, 1000);
  }
  $('#sign-in-btn').click(showForm);
  $('#close-btn').click(hideForm);
})