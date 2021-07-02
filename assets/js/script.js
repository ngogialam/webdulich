$(document).ready(function(){
	$("#login").click(function () {
		$('#form-log').show();
		$("#overlay").show();
	});
	$("#overlay").click(function () {
		$('#form-log').hide();
		$("#overlay").hide();
	});

	$('#dk').click(function () {
		$("#form-login").hide();
		$("#form-reg").show();
	});
	$('#dn').click(function () {
		$("#form-reg").hide();
		$("#form-login").show();
	});
})