<%@ include file="/header.jsp" %> 
	<div id="erros">
		<ul>
		<c:forEach items="${errors}" var="error">
		<li>${error.category } - ${error.message }</li>
		</c:forEach>
		</ul>
	</div>
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
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %> 