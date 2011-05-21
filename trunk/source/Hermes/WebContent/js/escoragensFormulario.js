$(document).ready(function() {
	
	$('#btnIncluiRegra').click(function() {
		
		var indice = $('.divRegra').length;
		
		var regraHTML = "";
		regraHTML += '<div class="divRegra">';
		regraHTML += 	'<label for="">Campo:</label>';
		regraHTML += 	'<select name="" id="">';
		regraHTML += 		'<option value=""></option>';
		regraHTML += 	'</select>';
		regraHTML += 	'<label for="">Comparador:</label>';
		regraHTML += 	'<select name="" id="">';
		regraHTML += 		'<option value=""></option>';
		regraHTML += 		'<option value="=">= (IGUAL À)</option>';
		regraHTML += 		'<option value="<">< (MENOR QUE)</option>';
		regraHTML += 		'<option value=">">> (MAIOR QUE)</option>';
		regraHTML += 		'<option value="<>"><>(DIFERENTE DE)</option>';
		regraHTML += 	'</select>';
		regraHTML += 	'<label for="">Resposta:</label>';
		regraHTML += 	'<input type="text" value="" id="" name="" />';
		regraHTML += 	'<input type="button" class="btnRemoveRegra" value="-" />';
		regraHTML += '</div>';
		$("#divRegras").append(regraHTML);
		
		$(".btnRemoveRegra").click(function() {
			$(this).parent().remove();
		});
		
	});
	
	 
	
});