$(document).ready(function(){

	$('input').click(function(){
		$(this).select();
	});

	$('.datepicker').datepicker({
		format: 'yyyy-mm-dd'
	});

	$('.input-daterange').datepicker({
		format: 'yyyy-mm-dd'
	});