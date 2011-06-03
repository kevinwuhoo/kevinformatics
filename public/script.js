$(function() {

	$('#bioinf').hover(function() {
		$('#photo').addClass("hide");
		$('#code').addClass("hide");
	});
			
	$('#coding').hover(function() {
		$('#photo').addClass("hide");
		$('#code').removeClass("hide");
	});
			
	$('#photography').hover(function() {
		$('#code').addClass("hide")
		$('#photo').removeClass("hide");
	});

  $("#name").lettering(); 
});
