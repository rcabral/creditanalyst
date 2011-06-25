<%@ include file="/header.jsp" %> 
	<form action="altera" method="post" >
		<fieldset>
			<legend><a class="linkVoltar" href="<c:url value="/profissoes/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>Profissão ${logica}</legend>
			<input type="hidden" name="profissao.codigoCBO"  value="${profissao.codigoCBO}" />
			<hermes:campoTexto label="Descrição:" id="profissao.descricao" value="${profissao.descricao}"></hermes:campoTexto><br /><br />
			<button type="button" onclick="javascript:window.location='<c:url value="/profissoes/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>