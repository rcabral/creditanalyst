<%@ include file="/header.jsp" %> 
	<form>
		<fieldset>
			<legend>&nbsp;Lista de Regras:<a class="linkMais" href="<c:url value="/regras/formulario"/>"><img class="btnMais" alt="mais" title="mais" src="<c:url value="/images/mais.png"/>" /></a></legend>
			<hermes:formularioDeBusca></hermes:formularioDeBusca>
			<table>
				<thead>
					<th>ID</th>
					<th>Nome</th>
					<th>Pergunta</th>
					<th>Possui Resposta</th>
				</thead>
				<tbody>
					<c:forEach items="${regraList}" var="regra">
						<tr>
							<td>${regra.id}</td>
							<td>${regra.nome}</td>
							<td>${regra.pergunta}</td>
							<td>
								<c:choose>
									<c:when test="${regra.possuiResposta}">Sim</c:when>
									<c:otherwise>Não</c:otherwise>
								</c:choose>
							</td>
							<td><a href="edita?id=${regra.id}"><img class="btnEditarItem" alt="Editar" title="Editar" src="<c:url value="/images/btnEditar.png"/>" /></a></td>
							<td><a href="remove?id=${regra.id}"><img class="btnExcluirItem" alt="Excluir" title="Excluir" src="<c:url value="/images/btnExcluir.png"/>" /></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %> 
</html>