
/* Footer colors */

$(document).ready(function(){

  var makeTransition = function (isBackground) {
    return "color .3s ease-in-out";
  };

  var makeBackgroundTransition = function() {
    return "background-"+makeTransition();
  };

  var resetFooter = function(){
    $("#footer").css({
      "background-color":"rgba(255,255,255,1)", 
      "transition":makeBackgroundTransition()
    })
    $(this).css({
      "color":"#777",
      "transition":makeTransition(),
    })
    $(".copyright .container").css({
      "color":"#777",
      "transition":makeTransition(),
    })
    $(".copyright").css({
      "background-color":"rgba(255,255,255,1)", 
      "transition":makeBackgroundTransition()
    })
    $(".social-text").text('Seguinos en nuestras redes sociales')
    $(".social-text").css({
      "color":"#333",
      "transition":makeTransition(),
    })
  };

  var makeStyle = function(network){
    return function () {
      $("#footer").css({
        "background-color": network.color, 
        "transition": makeBackgroundTransition()
      })
      $(".social i.fa-"+network.name).css({
        "color": "white",
        "transition": makeTransition(),
      })
      var $copy = $(".copyright");
      $copy.find(".container").css({
        "color": "white",
        "transition":makeTransition(),
      })
      $copy.css({
        "background-color": network.color, 
        "transition":makeBackgroundTransition()
      })
      $(".social-text")
        .text(network.text)
        .css({
          "color": "white",
          "transition":makeTransition(),
        });
    };
  };

  var networks = [{
    name: "twitter",
    color: "#4099ff",
    text: "Seguinos en Twitter"
  }, {
     name: "instagram",
     color: "#3f729b",
     text: "Mirá nuestras fotos en Instagram"
  }, {
    name: "facebook", 
    color: "rgb(59,89,152)",
    text: 'Seguinos en Facebook'
  }, {
    name: "google-plus",
    color: "rgb(211, 72, 54)",
    text: 'Seguinos en Google+'
  }];

  networks.forEach(function (network) {
    var $el = $(".social i.fa-"+network.name);
    $el.mouseover(makeStyle(network));
    $el.mouseout(resetFooter);
  });
})