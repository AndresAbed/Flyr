$(document).ready(function(){
  $(".event-image-btns").mouseover(function(){
    $(".event-btns").addClass("event-btns-show");
  });
  $(".event-image-btns").mouseout(function(){
    $(".event-btns").removeClass("event-btns-show");
  });
})

$(document).ready(function(){
  $('.event-date').tooltip();
  $('.event-hour').tooltip();
  $('.event-age').tooltip();
})