/**
 * 
 */
$(document).ready(function() {
	
	$("#dataDoPrimeiroVencimento").datepicker({	
		dateFormat:"dd/mm/yy"
		,monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'] 
		,yearRange: '1900:2011'
		,dayNamesMin: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb']	
		,maxDate: '+50d'
		,minDate: '0d'	
	});
	
	$(".data").datepicker({	
							dateFormat:"dd/mm/yy"
							,monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro'] 
							,changeYear: true
							,yearRange: '1900:2011'
							,dayNamesMin: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb']	
	});
			
	$('#btnIncluiBemImovel').click(function() {
		
		var indice = $('.divBemImovel').length;
		
		var bensImoveisHTML = "";
		bensImoveisHTML += '<div class="divBemImovel">';
		bensImoveisHTML += 		'<label for="cliente.perfilDoCliente.bensImoveis['+indice+'].valor">Valor:</label>';
		bensImoveisHTML += 		'<input type="text" id="cliente.perfilDoCliente.bensImoveis['+indice+'].valor" name="cliente.perfilDoCliente.bensImoveis['+indice+'].valor"  class="moeda" />';
		bensImoveisHTML += 		'<label for="cliente.perfilDoCliente.bensImoveis['+indice+'].possuiOnus">Possui Ônus:</label>';
		bensImoveisHTML += 		'<input type="checkbox" id="cliente.perfilDoCliente.bensImoveis['+indice+'].possuiOnus" name="cliente.perfilDoCliente.bensImoveis['+indice+'].possuiOnus" class="checkbox" />';
		bensImoveisHTML += 		'<input type="button" class="btnRemoveBemImovel" value="-" />';
		bensImoveisHTML += '</div>';
		$("#divBensImoveis").append(bensImoveisHTML);
		
		$(".btnRemoveBemImovel").click(function() {
			$(this).parent().remove();
		});
		
	});
	
	$(".btnRemoveBemImovel").click(function() {
		$(this).parent().remove();
	});
	
	
	
	
	
});