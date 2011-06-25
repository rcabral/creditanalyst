<%@ include file="/header.jsp" %> 
	<form <c:choose><c:when test='${banco.numero == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="get" >
		<fieldset>
			<legend><a class="linkVoltar" href="<c:url value="/bancos/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>Banco</legend>
			<c:choose>
				<c:when test="${banco.numero == null}">
					<hermes:campoNumeroInteiro label="Número:" value="${banco.numero}" id="banco.numero"></hermes:campoNumeroInteiro>
					<br /><br />
				</c:when>
				<c:otherwise>
					<input type="hidden" name="banco.numero"  value="${banco.numero}" />
				</c:otherwise>
			</c:choose>
			<hermes:campoTexto label="Nome:" id="banco.nome" value="${banco.nome}"></hermes:campoTexto><br /><br />
			<button type="button" onclick="javascript:window.location='<c:url value="/bancos/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %> 