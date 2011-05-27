$(document).ready(function() {
	
	$('#btnIncluiRegra').click(function() {
		
		
		var indice = $('.divRegra').length;
		
		var regraHTML  = '<div class="divRegra">'; 
		regraHTML     += 	'<input type="button" class="btnRemoveRegra" value="-" />';
		regraHTML     += 	'<label for="escoragem.regrasDeInferencia['+indice+'].regra.id">Regra:</label>';
		regraHTML     += 	'<select name="escoragem.regrasDeInferencia['+indice+'].regra.id" id="escoragem.regrasDeInferencia['+indice+'].regra.id" class="comboRegra">';
		regraHTML     += 		$('#divOptionsRegras').html();
		regraHTML     += 	'</select>';
		regraHTML     += 	'<div class="atrivutosDeResposta">';
		regraHTML     += 		'<label for="escoragem.regrasDeInferencia['+indice+'].comparador">Comparador:</label>';
		regraHTML     += 		'<select name="escoragem.regrasDeInferencia['+indice+'].comparador" id="escoragem.regrasDeInferencia['+indice+'].comparador">';
		regraHTML     += 			$('#divOptionsComparador').html();
		regraHTML     += 		'</select>';
		regraHTML     += 		'<label for="">Resposta:</label>';
		regraHTML     += 		'<input type="text" id="escoragem.regrasDeInferencia['+indice+'].resposta" name="escoragem.regrasDeInferencia['+indice+'].resposta" class="texto" value="" />';
		regraHTML     += 	'</div>';
		regraHTML     += '</div>';
		
		
		$("#divRegras").append(regraHTML);
		$(".btnRemoveRegra").click(function() {
			$(this).parent().remove();
		});
		$(".comboRegra").change(function() {
			var possuiResposta = $("option:selected",this).attr("possuiResposta") == "true";
			var parent = $(this).parent();
			var atrivutosDeResposta = $(".atrivutosDeResposta",parent);
			if(possuiResposta){
				atrivutosDeResposta.css("display","inline");
			}else{
				atrivutosDeResposta.css("display","none");
			}
		});
	});
	
	$(".btnRemoveRegra").click(function() {
		$(this).parent().remove();
	});
	
});