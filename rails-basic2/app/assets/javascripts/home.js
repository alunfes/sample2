$(function() {
    $( "#draggable" ).draggable();

    $('#draggable')
    .mouseover(function(){
    	$(this).css('background', 'green');
    	$(this).fadeOut( "slow", function(){
    	$(this).fadeIn("slow");
    	});
    })
    .mouseout(function(){
    	$(this).css('background', 'red');
    });
  });


$("test").hover(overFunc, outFunc);
function overFunc(){
	$("test").css("background-color", "#FC6");
}
function outFunc(){
	$("test").css("background-color", "#09C");
}
