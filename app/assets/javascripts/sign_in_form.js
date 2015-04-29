$(document).ready(function(){
  animationClick('.sign_in_container', '#sign_in_btn', 'fadeInDownBig');

  function animationClick(form, btn, animation){
    var form = $(form);
    var btn = $(btn);
    btn.click(function() {
      form.addClass('animated ' + animation);
      form.css({
        "position":"absolute", 
        "display":"block", 
        "margin-top":"200px", 
        "margin-left":"auto", 
        "margin-right":"auto", 
        "left":"0", 
        "right":"0"
      });
      window.setTimeout( function(){
        form.removeClass('animated ' + animation);
      }, 1000);
    });
  };
});

$(document).ready(function(){
  animationClick('.sign_in_container', '#close', 'fadeOutUp');

  function animationClick(form, closeBtn, animation){
    var form = $(form);
    var closeBtn = $(closeBtn);
    closeBtn.click(function() {
      form.addClass('animated ' + animation);
      window.setTimeout( function(){
        form.removeClass('animated ' + animation);
        form.hide();
      }, 1000);
    });
  };
});