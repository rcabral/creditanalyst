$(document).ready(function() {
	$('#valor,#quantidadeDeParcelas,#dataDoPrimeiroVencimento').keyup(function() {
		calculaProposta();
	});

	function calculaProposta(){
		var calculaPrestacaoUrl = $("#calculaPrestacaoUrl").val();
		$('#valorDaPrestacao').val('');
		$.post(calculaPrestacaoUrl,$("#formularioDeProposta").serialize() ,function(data) {
			if(data!='?'){
				$('#valorDaPrestacao').val(data);
			}	
		});
	}
});