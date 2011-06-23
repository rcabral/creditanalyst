$(document).ready(function() {
	$('#formularioDeCliente').submit(function() {
		retiraFormatacaoDoCPF("clienteCPF");
		retiraFormatacaoDoCEP("clienteCEP");
	});
});