$(document).ready(function(){
	setInterval(function(){
		$.get( "/clubevents/pending", function( data ) {
		  $("#pendingEvents").html("");
		  data.clubevents.forEach(function(data){
		  	$("<li><a href="+data.url+">"+data.name+"</a></li>").appendTo("#pendingEvents");
        $("<li class= divider></li>").appendTo("#pendingEvents");
		  });
		  $("#pendingCount").text(data.clubevents.length)
		  if (data.clubevents.length == 0) {
		  	$("<li>No hay eventos</li>").appendTo("#pendingEvents");
		  };
		});
	}, 30000);
})