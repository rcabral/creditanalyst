<%@ include file="/header.jsp" %>
<script type="text/javascript" src="<c:url value="/js/escoragensFormulario.js"/>"  ></script> 
	<form id="formRegra" <c:choose><c:when test='${regra.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<input type="hidden" name="regra.id"  value="${regra.id}" />
		<fieldset>
			<legend><a class="linkVoltar" href="<c:url value="/regras/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>Regra</legend>
			<hermes:campoTexto label="Nome:" id="regra.nome" value="${regra.nome}"></hermes:campoTexto>
			<br/><br/>
			<hermes:campoTexto label="Pergunta:" id="regra.pergunta" value="${regra.pergunta}"></hermes:campoTexto>
			<br/><br/>
			<hermes:campoCheckBox label="Possui Resposta:" id="regra.possuiResposta" value="${regra.possuiResposta}"></hermes:campoCheckBox>
			<br/><br/>
			<div id="divAtributosDeResposta">
				<label for="regra.metodo">Campo:<span class="fieldRequired">*</span></label>
				<select name="regra.metodo" id="regra.metodo">
					<option value=""></option>
					<c:forEach items="${campoList}" var="campo">
						<option value="${campo.metodo}" <c:if test="${campo.metodo==regra.metodo}">selected="selected"</c:if> >${campo.nome}</option>
					</c:forEach>
				</select>
				<br/><br/>
			<div>
			<button type="button" onclick="javascript:window.location='<c:url value="/regras/lista"/>'">Voltar</button>
			<button type="submit">Gravar</button>	
		</fieldset>
		<hermes:campoObrigatorio></hermes:campoObrigatorio>
	</form>
<%@ include file="/footer.jsp" %>