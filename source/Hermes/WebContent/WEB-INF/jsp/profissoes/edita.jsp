<%@ include file="/header.jsp" %> 
	<a class="linkVoltar" href="<c:url value="/profissoes/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>
	<form action="altera" method="post" >
		<fieldset>
			<legend>Profissão ${logica}</legend>
			<input type="hidden" name="profissao.codigoCBO"  value="${profissao.codigoCBO}" />
			<label for="profissao.descricao">Descrição:</label>
			<input id="profissao.descricao" type="text" name="profissao.descricao" value="${profissao.descricao}"  /><br /><br />
			<button type="button" onclick="javascript:window.location='<c:url value="/profissoes/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>