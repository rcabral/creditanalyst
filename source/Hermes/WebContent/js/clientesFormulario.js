$(document).ready(function() {
	$('#formularioDeCliente').submit(function() {
		retiraFormatacaoDasModas();
		retiraFormatacaoDoCPF("clienteCPF");
		retiraFormatacaoDoCEP("clienteCEP");
	});
});