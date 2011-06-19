$(document).ready(function() {
	$('#valor,#quantidadeDeParcelas,#dataDoPrimeiroVencimento').keyup(function() {
		calculaProposta();
	});

	function calculaProposta(){
		var auxValor = $("#valor").val();
		moedaToDouble("valor");
		moedaToDouble("valorDaPrestacao");
		var calculaPrestacaoUrl = $("#calculaPrestacaoUrl").val();
		$('#valorDaPrestacao').val('');
		$.post(calculaPrestacaoUrl,$("#formularioDeProposta").serialize() ,function(data) {
			if(data!='?'){
				$('#valorDaPrestacao').val(data);
			}	
		});
		$("#valor").val(auxValor);
	}
	
	$('#formularioDeProposta').submit(function() {
		moedaToDouble("valor");
		moedaToDouble("valorDaPrestacao");
	});
});