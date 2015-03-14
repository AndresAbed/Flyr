$(document).ready(function(){
  $(".cover-container").fancybox({
    maxWidth: 1400,
    maxHeight: 1400,
    openEffect: 'elastic',
    closeEffect: 'elastic',
    helpers:{
      title:{
        type: 'inside'
      }
    }
  });

  $(".logo-container").fancybox({
    maxWidth: 1400,
    maxHeight: 1400,
    openEffect: 'elastic',
    closeEffect: 'elastic',
    helpers:{
      title:{
        type: 'inside'
      }
    }
  });
});

$(document).ready(function(){
  $(".features-list").mouseenter(function(){
    $('.feature-delete').fadeIn();
  });
  $(".features-list").mouseleave(function(){
    $('.feature-delete').fadeOut();
  });
});

$(document).ready(function(){
  $("#music-edit").on("click", function() {
    var text = $(this).text();
    if (text == "Editar"){
      $(this).text("Aceptar");
      $("#music-pencil").removeClass('fa fa-pencil');
      $("#music-pencil").addClass('fa fa-check');
      $("#music-add").fadeIn();
      $(".fa-times").fadeIn();
    }
    else{
      $(this).text("Editar");
      $("#music-pencil").removeClass('fa fa-check');
      $("#music-pencil").addClass('fa fa-pencil');
      $("#music-add").fadeOut();
      $(".fa-times").fadeOut();
    };
  });
});