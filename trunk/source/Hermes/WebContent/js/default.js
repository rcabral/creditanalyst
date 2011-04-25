/**
 * 
 */
$(document).ready(function() {
	$(".data").datepicker({	
							dateFormat:"dd/mm/yy"
							,monthNames: ['Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julio','Agosto','Setembro','Outubro','Novembro','Dezembro'] 
							,changeYear: true
							,yearRange: '1900:2011'
							,dayNamesMin: ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sáb']	
							});
});