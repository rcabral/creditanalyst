<%@ include file="/header.jsp" %> 
	<a class="linkVoltar" href="<c:url value="/profissoes/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>
	<form action="adiciona" method="post" >
		<fieldset>
			<legend>Profissão</legend>
			<label for="profissao.codigoCBO">Código CBO:</label>
			<input id="profissao.codigoCBO" type="text" name="profissao.codigoCBO" value="${profissao.codigoCBO}"  /><br /><br />
			<label for="profissao.descricao">Descrição:</label>
			<input id="profissao.descricao" type="text" name="profissao.descricao" value="${profissao.descricao}"  /><br /><br />
			<button type="button" onclick="javascript:window.location='<c:url value="/profissoes/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>