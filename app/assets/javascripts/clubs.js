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
})