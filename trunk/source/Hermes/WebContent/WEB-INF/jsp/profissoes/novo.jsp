<%@ include file="/header.jsp" %> 
	<form action="adiciona" method="post" >
		<fieldset>
			<legend><a class="linkVoltar" href="<c:url value="/profissoes/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>Profiss�o</legend>
			<hermes:campoNumeroInteiro label="C�digo CBO:" value="${profissao.codigoCBO}" id="profissao.codigoCBO"></hermes:campoNumeroInteiro><br /><br />
			<hermes:campoTexto label="Descri��o:" id="profissao.descricao" value="${profissao.descricao}"></hermes:campoTexto><br /><br />
			<button type="button" onclick="javascript:window.location='<c:url value="/profissoes/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>
		</fieldset>
		<hermes:campoObrigatorio></hermes:campoObrigatorio>
	</form>
<%@ include file="/footer.jsp" %>