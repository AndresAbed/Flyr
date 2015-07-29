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

/* Gmaps autocomplete */

$(document).ready(function(){
  $(function() {
    var completer = new GmapsCompleter({
      inputField: '#new-event-address',
      errorField: '#gmaps-error'
    });
    completer.autoCompleteInit({
      region: "AR"
    });
  });

  $(function() {
    var completer = new GmapsCompleter({
      inputField: '#edit-event-address',
      errorField: '#gmaps-error'
    });
    completer.autoCompleteInit({
      region: "AR"
    });
  });
})