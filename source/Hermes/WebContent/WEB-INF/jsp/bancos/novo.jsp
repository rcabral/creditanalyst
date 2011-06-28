<%@ include file="/header.jsp" %> 
	<form action="adiciona" method="get" >
		<fieldset>
			<legend><a class="linkVoltar" href="<c:url value="/bancos/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>Banco</legend>
			<hermes:campoNumeroInteiro label="Número:" value="${banco.numero}" id="banco.numero"></hermes:campoNumeroInteiro><br /><br />
			<hermes:campoTexto label="Nome:" id="banco.nome" value="${banco.nome}"></hermes:campoTexto><br /><br />
			<button type="button" onclick="javascript:window.location='<c:url value="/bancos/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>
		</fieldset>
		<hermes:campoObrigatorio></hermes:campoObrigatorio>
	</form>
<%@ include file="/footer.jsp" %> 