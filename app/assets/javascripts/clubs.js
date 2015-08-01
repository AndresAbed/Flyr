$(document).ready(function(){
  $(".club-logo").fancybox({
    maxWidth: 500,
    maxHeight: 500,
    openEffect: 'elastic',
    closeEffect: 'elastic',
  });
  $(".club-image").fancybox({
    maxWidth: 1400,
    maxHeight: 1400,
    openEffect: 'elastic',
    closeEffect: 'elastic',
  });
  $(".fancybox").fancybox({
    maxWidth: 1400,
    maxHeight: 1400,
    openEffect  : 'fade',
    closeEffect : 'fade'
  });
});

/* Features & Music */

var editFeature = function() {
  $("#feature-edit-text").text("Terminar");
  $("#feature-pencil").removeClass('fa fa-pencil');
  $("#feature-pencil").addClass('fa fa-check');
  $("#feature-add").fadeIn();
  $(".features-list .fa-times").fadeIn();
};

var finishFeatureEdition = function() {
  $("#feature-edit-text").text("Editar");
  $("#feature-pencil").removeClass('fa fa-check');
  $("#feature-pencil").addClass('fa fa-pencil');
  $("#feature-add").fadeOut();
  $(".features-list .fa-times").fadeOut();
}

var editMusic = function() {
  $("#music-edit-text").text("Terminar");
  $("#music-pencil").removeClass('fa fa-pencil');
  $("#music-pencil").addClass('fa fa-check');
  $("#music-add").fadeIn();
  $(".music-list .fa-times").fadeIn();
};

var finishMusicEdition = function() {
  $("#music-edit-text").text("Editar");
  $("#music-pencil").removeClass('fa fa-check');
  $("#music-pencil").addClass('fa fa-pencil');
  $("#music-add").fadeOut();
  $(".music-list .fa-times").fadeOut();
}

$(document).ready(function(){
  $(".music").mouseover(function(){
    $(".music-btns").addClass("music-btns-show");
  });
  $(".music").mouseout(function(){
    var text = $("#music-edit-text").text();
    if (text == "Editar") {
      $(".music-btns").removeClass("music-btns-show");
    };
  });
  $("#music-edit").on("click", function() {
    var text = $("#music-edit-text").text();
    if (text == "Editar"){editMusic();}
    else{finishMusicEdition();};
  });

  $(".features").mouseover(function(){
    $(".features-btns").addClass("features-btns-show");
  });
  $(".features").mouseout(function(){
    var text = $("#feature-edit-text").text();
    if (text == "Editar") {
      $(".features-btns").removeClass("features-btns-show");
    };
  });
  $("#feature-edit").on("click", function() {
    var text = $("#feature-edit-text").text();
    if (text == "Editar"){editFeature();}
    else{finishFeatureEdition();};
  });
})

/* Profile buttons */

$(document).ready(function(){
  $(".sub-container").mouseover(function(){
    $(".sub-container .buttons").addClass("club-buttons-show");
  });
  $(".sub-container").mouseout(function(){
    $(".sub-container .buttons").removeClass("club-buttons-show");
  });
})

$(document).ready(function(){
  $('#new-gallery').tooltip();
  $('#edit-gallery').tooltip();
})

/* Events */

$(document).ready(function(){
  $(".club-event-item").mouseover(function(){
    $(this).find("span").addClass("club-event-span-up");
  });
  $(".club-event-item").mouseout(function(){
    $(this).find("span").removeClass("club-event-span-up");
  });
})

/* Gmaps autocomplete */

$(document).ready(function(){
  $(function() {
    var completer = new GmapsCompleter({
      inputField: '#new-club-address',
      errorField: '#gmaps-error'
    });
    completer.autoCompleteInit({
      region: "AR"
    });
  });

  $(function() {
    var completer = new GmapsCompleter({
      inputField: '#edit-club-address',
      errorField: '#gmaps-error'
    });
    completer.autoCompleteInit({
      region: "AR"
    });
  });
})