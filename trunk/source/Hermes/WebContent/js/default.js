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
		,onSelect: function() {
			var calculaPrestacaoUrl = $("#calculaPrestacaoUrl").val();
			$('#valorDaPrestacao').val('');
			$.post(calculaPrestacaoUrl,$("#formularioDeProposta").serialize() ,function(data) {
				if(data!='?'){
					$('#valorDaPrestacao').val(data);
				}	
			});
		}	
	});
	
	function calculaProposta(){
		$('#valorDaPrestacao').val('');
		$.post(calculaPrestacaoUrl,$("#formularioDeProposta").serialize() ,function(data) {
			if(data!='?'){
				$('#valorDaPrestacao').val(data);
			}	
		});
	}
	
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
	
	 //$(".cpf").mask("999.999.999-99");
	 
	
	 //$(".moeda").maskMoney({symbol:'R$ ', showSymbol:true, thousands:'.', decimal:',', symbolStay: true}); 


	
});