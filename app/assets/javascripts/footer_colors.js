
/* Footer colors */

$(document).ready(function(){

  var makeTransition = function (isBackground) {
    return "color .4s ease-in-out";
  };

  var makeBackgroundTransition = function() {
    return "background-"+makeTransition();
  };

  var resetFooter = function(){
    $("#footer").css({
      "background-color":"#1b354c", 
      "transition":makeBackgroundTransition()
    })
    $(".social i").css({
        "color": "rgb(118, 134, 148)",
        "transition": makeTransition(),
      })
    $(".social-text").text('Seguinos en nuestras redes sociales')
    $(".social-text").css({
      "color":"rgb(118, 134, 148)",
      "transition":makeTransition(),
    })
    var $copy = $(".copyright");
    $copy.css({
      "background-color":"#1b354c", 
      "transition":makeBackgroundTransition()
    })
    $copy.find(".container").css({
      "color":"rgb(118, 134, 148)",
      "border-color": "rgb(118, 134, 148)",
      "transition":makeTransition()
    })
  };

  var makeStyle = function(network){
    return function () {
      $("#footer").css({
        "background-color": network.color, 
        "transition": makeBackgroundTransition()
      })
      $(".social i").css({
        "color": "rgb(169, 168, 168)",
        "transition": makeTransition()
      })
      $(".social i.fa-"+network.name).css({
        "color": "#fff",
        "transition": makeTransition()
      })
      $(".social-text")
        .text(network.text)
        .css({
          "color": "#fff",
          "transition":makeTransition()
        });
      var $copy = $(".copyright");
      $copy.css({
        "background-color": network.color, 
        "transition":makeBackgroundTransition()
      })
      $copy.find(".container").css({
        "color": "#fff",
        "border-color": "rgba(255,255,255,.6)",
        "transition":makeTransition()
      })
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