<%@ include file="/header.jsp" %> 
	<form <c:choose><c:when test='${profissao.codigoCBO == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<fieldset>
			<legend>Profissão</legend>
			<c:choose>
				<c:when test="${profissao.codigoCBO == null}">
					<label for="profissao.codigoCBO">Código CBO:</label>
					<input id="profissao.codigoCBO" type="text" name="profissao.codigoCBO" value="${profissao.codigoCBO}"  /><br /><br />
				</c:when>
				<c:otherwise>
					<input type="hidden" name="profissao.codigoCBO"  value="${profissao.codigoCBO}" />
				</c:otherwise>
			</c:choose>
			<label for="profissao.descricao">Descrição:</label>
			<input id="profissao.descricao" type="text" name="profissao.descricao" value="${profissao.descricao}"  /><br /><br />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>