$(document).ready(function() {
	$('#formFuncionario').submit(function() {
		retiraFormatacaoDoCPF("funcionarioCpf");
		retiraFormatacaoDoCEP("funcionarioCEP");
	});
});