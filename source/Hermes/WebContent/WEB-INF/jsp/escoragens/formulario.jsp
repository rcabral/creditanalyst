<%@ include file="/header.jsp" %>
<script type="text/javascript" src="<c:url value="/js/funcionariosFormulario.js"/>"  ></script> 
	<form id="formFuncionario" <c:choose><c:when test='${funcionario.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<input type="hidden" name="funcionario.id"  value="${funcionario.id}" />
		<fieldset>
			<legend>Escoragem</legend>
			<fieldset>
				<legend>Amostragem de Propostas</legend>
				<fieldset>
				<legend>Data de Início</legend>
				<hermes:campoCheckBox label="Intervalo Aberto" id=""></hermes:campoCheckBox>
				<hermes:campoData label="Data: " id=""></hermes:campoData>
				</fieldset>
				<fieldset>
				<legend>Data Fim</legend>
				<hermes:campoCheckBox label="Intervalo Aberto" id=""></hermes:campoCheckBox>
				<hermes:campoData label="Data: " id=""></hermes:campoData>
				</fieldset>
			</fieldset>	
			<fieldset>
				<legend>Regras</legend>
				<hermes:campoTexto label="Nome:" id=""></hermes:campoTexto>
				<br /><br />
				<hermes:campoTexto label="Descrição:" id=""></hermes:campoTexto>
			</fieldset>
			<button type="submit">Enviar</button>	
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>