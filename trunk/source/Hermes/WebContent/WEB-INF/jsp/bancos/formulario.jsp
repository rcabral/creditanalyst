<%@ include file="/header.jsp" %> 
	<a class="linkVoltar" href="<c:url value="/bancos/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>
	<form <c:choose><c:when test='${banco.numero == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="get" >
		<fieldset>
			<legend>Banco</legend>
			<c:choose>
				<c:when test="${banco.numero == null}">
					<label for="banco.numero">Número:</label>
					<input id="banco.numero" type="text" name="banco.numero" value="${banco.numero}"  /><br /><br />
				</c:when>
				<c:otherwise>
					<input type="hidden" name="banco.numero"  value="${banco.numero}" />
				</c:otherwise>
			</c:choose>
			<label for="banco.nome">Nome:</label>
			<input id="banco.nome" type="text" name="banco.nome" value="${banco.nome}"  /><br /><br />
			<button type="button" onclick="javascript:window.location='<c:url value="/bancos/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %> 