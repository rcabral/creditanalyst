<%@ include file="/header.jsp" %>
<script type="text/javascript" src="<c:url value="/js/escoragensFormulario.js"/>"  ></script> 
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
				<label>Incluir Regra:</label> <input type="button" id="btnIncluiRegra" value="+" />
				<br /><br />
				<dir id="divRegras">
				</dir>
			</fieldset>
			<button type="submit">Treinar Rede e Salvar</button>	
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>