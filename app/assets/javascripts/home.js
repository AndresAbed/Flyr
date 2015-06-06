/* Carrousel conf */
$(document).ready(function(){
  $("#BannerCarousel").carousel({
    interval : 8000,
    pause:true
  });
});

/* Day tabs conf */
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
            };
          };
        };
      };
    };
  };
});

/* Banner button tooltip */
$(document).ready(function(){
  $('#modal-banner').tooltip()
})

/* Events ajax search and animation */
$(document).ready(function() {
  var timer;
  $("#events_search input").keyup(function() {
    if(timer){clearTimeout(timer)};
    timer = setTimeout(function() { 
      $.get($("#events_search").attr("action"), $("#events_search").serialize(), null, "script");
      $('#events-partial').addClass('animated fadeIn');
      window.setTimeout( function(){
        $('#events-partial').removeClass('animated fadeIn');
      }, 600);
      return false;
    }, 1000);
  });
});