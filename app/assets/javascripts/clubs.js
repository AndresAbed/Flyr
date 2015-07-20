$(document).ready(function(){
  $(".cover-container").fancybox({
    maxWidth: 1400,
    maxHeight: 1400,
    openEffect: 'elastic',
    closeEffect: 'elastic',
    helpers:{
      title:{type: 'inside'}
    }
  });
  $(".club-logo").fancybox({
    maxWidth: 1400,
    maxHeight: 1400,
    openEffect: 'elastic',
    closeEffect: 'elastic',
    helpers:{
      title:{type: 'inside'}
    }
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
  $(".club-logo-info").mouseover(function(){
    $(".club-logo-info .buttons").addClass("club-buttons-show");
  });
  $(".club-logo-info").mouseout(function(){
    $(".club-logo-info .buttons").removeClass("club-buttons-show");
  });
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