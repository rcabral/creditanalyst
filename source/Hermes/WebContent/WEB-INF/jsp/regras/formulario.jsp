<%@ include file="/header.jsp" %>
<script type="text/javascript" src="<c:url value="/js/escoragensFormulario.js"/>"  ></script> 
	<form id="formRegra" <c:choose><c:when test='${regra.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<input type="hidden" name="regra.id"  value="${regra.id}" />
		<fieldset>
			<legend>Regra</legend>
			<hermes:campoTexto label="Nome:" id="regra.nome" value="${regra.nome}"></hermes:campoTexto>
			<br/><br/>
			<hermes:campoTexto label="Pergunta:" id="regra.pergunta" value="${regra.pergunta}"></hermes:campoTexto>
			<br/><br/>
			<hermes:campoCheckBox label="Possui Resposta:" id="regra.possuiResposta" value="${regra.possuiResposta}"></hermes:campoCheckBox>
			<br/><br/>
			<div id="divAtributosDeResposta">
				<label for="regra.tipo">Tipo de Resposta:</label>
				<select name="regra.tipoDeResposta" id="regra.tipoDeResposta">
					<option value=""></option>
					<c:forEach items="${tipoDeRespostaList}" var="tipo">
						<option value="${tipo}" <c:if test="${regra.tipoDeResposta==tipo}">selected="selected"</c:if> >${tipo.nome}</option>
					</c:forEach>
				</select>
				<br/><br/>
			<div>
			<button type="submit">Gravar</button>	
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>