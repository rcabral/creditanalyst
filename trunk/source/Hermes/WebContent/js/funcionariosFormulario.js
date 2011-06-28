$(document).ready(function() {
		
	$('#formFuncionario').validate();
	
	$('#formFuncionario').submit(function() {
		retiraFormatacaoDoCPF("funcionarioCpf");
		retiraFormatacaoDoCEP("funcionarioCEP");
	});
	
});