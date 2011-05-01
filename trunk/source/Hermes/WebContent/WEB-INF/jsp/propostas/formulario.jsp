<%@ include file="/header.jsp" %>
<script type="text/javascript" src="<c:url value="/js/propostasFormulario.js"/>"  ></script> 
	<form id="formularioDeProposta" <c:choose><c:when test='${cliente.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<input type="hidden" id="calculaPrestacaoUrl" value="<c:url value='/propostas/calculaPrestacao'/>" />
		<fieldset>
			<legend>Proposta</legend>
			<fieldset>
				<legend>Cliente</legend>
				<input type="hidden" name="proposta.cliente.id"  value="${proposta.cliente.id}" />
				<hermes:campoCPF label="CPF:" id="proposta.cliente.cpf" value="${proposta.cliente.cpf}"></hermes:campoCPF>
				<br /><br />
				<hermes:campoTexto label="Nome:" id="proposta.cliente.nome" value="${proposta.cliente.nome}"></hermes:campoTexto>
			</fieldset>
			<fieldset>
				<legend>Dados do Crédito</legend>
				<hermes:campoMoeda label="Valor:" id="valor" name="proposta.valor" value="${proposta.valor}"></hermes:campoMoeda>
				<br /><br />
				<hermes:campoNumeroInteiro label="Quantidade de Parcelas:" value="${proposta.quantidadeDeParcelas}" id="quantidadeDeParcelas" name="proposta.quantidadeDeParcelas"></hermes:campoNumeroInteiro>
				<br /><br />
				<hermes:campoData label="Primeiro Vencimento:" id="dataDoPrimeiroVencimento" name="proposta.dataDoPrimeiroVencimento" ></hermes:campoData>
				<br /><br />
				<hermes:campoMoeda label="Valor da Prestação:" id="valorDaPrestacao" value="${proposta.valorDaPrestacao}" name="proposta.valorDaPrestacao"></hermes:campoMoeda>
			</fieldset>
			<br />	
			<button type="submit">Enviar</button>	
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>