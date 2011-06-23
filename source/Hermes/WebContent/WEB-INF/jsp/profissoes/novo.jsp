<%@ include file="/header.jsp" %> 
	<a class="linkVoltar" href="<c:url value="/profissoes/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>
	<form action="adiciona" method="post" >
		<fieldset>
			<legend>Profiss�o</legend>
			<hermes:campoNumeroInteiro label="C�digo CBO:" value="${profissao.codigoCBO}" id="profissao.codigoCBO"></hermes:campoNumeroInteiro><br /><br />
			<label for="profissao.descricao">Descri��o:</label>
			<input id="profissao.descricao" type="text" name="profissao.descricao" value="${profissao.descricao}"  /><br /><br />
			<button type="button" onclick="javascript:window.location='<c:url value="/profissoes/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>