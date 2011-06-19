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
							,yearRange: '1900:3000'
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
	
	
	$(".autocomplete").combobox();
		
		
	 //$(".cpf").mask("999.999.999-99");
	 
	
	 $("#formularioDeProposta .moeda").maskMoney({symbol:'R$ ', showSymbol:true, thousands:'.', decimal:',', symbolStay: true}); 


	
});

function moedaToDouble(id){
	var valor =  $("#" + id).val();
	var valor =  valor.toString();
	while (valor.indexOf(".") != -1) {
		valor = valor.replace(".", "");
	}
	valor = valor.replace(",", ".");
	valor = valor.replace("R$ ", "");
	$("#" + id).val(valor);
}

(function( $ ) {
	$.widget( "ui.combobox", {
		_create: function() {
			var self = this,
				select = this.element.hide(),
				selected = select.children( ":selected" ),
				value = selected.val() ? selected.text() : "";
			var input = this.input = $( "<input>" )
				.insertAfter( select )
				.val( value )
				.autocomplete({
					delay: 0,
					minLength: 0,
					source: function( request, response ) {
						var matcher = new RegExp( $.ui.autocomplete.escapeRegex(request.term), "i" );
						response( select.children( "option" ).map(function() {
							var text = $( this ).text();
							if ( this.value && ( !request.term || matcher.test(text) ) )
								return {
									label: text.replace(
										new RegExp(
											"(?![^&;]+;)(?!<[^<>]*)(" +
											$.ui.autocomplete.escapeRegex(request.term) +
											")(?![^<>]*>)(?![^&;]+;)", "gi"
										), "<strong>$1</strong>" ),
									value: text,
									option: this
								};
						}) );
					},
					select: function( event, ui ) {
						ui.item.option.selected = true;
						self._trigger( "selected", event, {
							item: ui.item.option
						});
					},
					change: function( event, ui ) {
						if ( !ui.item ) {
							var matcher = new RegExp( "^" + $.ui.autocomplete.escapeRegex( $(this).val() ) + "$", "i" ),
								valid = false;
							select.children( "option" ).each(function() {
								if ( $( this ).text().match( matcher ) ) {
									this.selected = valid = true;
									return false;
								}
							});
							if ( !valid ) {
								// remove invalid value, as it didn't match anything
								$( this ).val( "" );
								select.val( "" );
								input.data( "autocomplete" ).term = "";
								return false;
							}
						}
					}
				})
				.addClass( "ui-widget ui-widget-content ui-corner-left" );

			input.data( "autocomplete" )._renderItem = function( ul, item ) {
				return $( "<li></li>" )
					.data( "item.autocomplete", item )
					.append( "<a>" + item.label + "</a>" )
					.appendTo( ul );
			};

			this.button = $( "<button type='button'>&nbsp;</button>" )
				.attr( "tabIndex", -1 )
				.attr( "title", "Show All Items" )
				.insertAfter( input )
				.button({
					icons: {
						primary: "ui-icon-triangle-1-s"
					},
					text: false
				})
				.removeClass( "ui-corner-all" )
				.addClass( "ui-corner-right ui-button-icon" )
				.click(function() {
					// close if already visible
					if ( input.autocomplete( "widget" ).is( ":visible" ) ) {
						input.autocomplete( "close" );
						return;
					}

					// work around a bug (likely same cause as #5265)
					$( this ).blur();

					// pass empty string as value to search for, displaying all results
					input.autocomplete( "search", "" );
					input.focus();
				});
		},

		destroy: function() {
			this.input.remove();
			this.button.remove();
			this.element.show();
			$.Widget.prototype.destroy.call( this );
		}
	});
})( jQuery );