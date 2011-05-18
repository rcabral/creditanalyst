$(document).ready(function() {
	var calculaPrestacaoUrl = $("#calculaPrestacaoUrl").val();
	
	$('#valor,#quantidadeDeParcelas,#dataDoPrimeiroVencimento').keyup(function() {
		$('#valorDaPrestacao').val('');
		$.post(calculaPrestacaoUrl,$("#formularioDeProposta").serialize() ,function(data) {
			if(data!='?'){
				$('#valorDaPrestacao').val(data);
			}	
		});
	});
});