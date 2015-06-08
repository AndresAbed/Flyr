$(document).ready(function(){
  var notificationsIcon = $(".ion-ios-bell");
  var $pending = $("#pendingEvents");
  var $pendingsCount = $("#pendingsCount");
  var notificationsCount;
  var arrayLength;
  $.get( "/clubevents/pending", function(data){
      $("#pendingEvents").html("<h3>Eventos pendientes</h3>");
      arrayLength = data.clubevents.length;
      var dividerFlag = 0;
      data.clubevents.forEach(function(data){
        dividerFlag = dividerFlag + 1;
        $("<li><a href="+data.url+"><p>"+data.name+"</p></a></li>")
        .appendTo("#pendingEvents");
        if (arrayLength > dividerFlag) {
          $("<li class= divider></li>").appendTo("#pendingEvents");
        };
      });
      $pendingsCount.text(arrayLength)
      if (arrayLength == 0) {
        notificationsIcon.css({"color":"#fff"});
        $("<li>No hay eventos</li>").appendTo("#pendingEvents");
      }else{
        notificationsIcon.css({"color":"#00F5FF"});
      };
    });
  setInterval(function(){
    $.get( "/clubevents/pending", function(data){
      $("#pendingEvents").html("<h3>Eventos pendientes</h3>");
      arrayLength = data.clubevents.length;
      var dividerFlag = 0;
      data.clubevents.forEach(function(data){
        dividerFlag = dividerFlag + 1;
        $("<li><a href="+data.url+"><p>"+data.name+"</p></a></li>")
        .appendTo("#pendingEvents");
        if (arrayLength > dividerFlag) {
          $("<li class= divider></li>").appendTo("#pendingEvents");
        };
      });
      $pendingsCount.text(arrayLength)
      if (arrayLength == 0) {
        notificationsIcon.css({"color":"#fff"});
        $("<li>No hay eventos</li>").appendTo("#pendingEvents");
        notificationsCount = arrayLength;
      }else{
        notificationsIcon.css({"color":"#00F5FF", "transition":"color .3s ease-in-out"});
        if (arrayLength > notificationsCount){
          var sound = document.getElementById('notificationSound');
          sound.load();
          sound.play();
          notificationsIcon.addClass("animated swing");
          window.setTimeout( function(){
            notificationsIcon.removeClass("animated swing");
          }, 1000);
          notificationsCount = arrayLength;
        }
        else{
          notificationsCount = arrayLength;
        };
      };
    });
  }, 30000);
})