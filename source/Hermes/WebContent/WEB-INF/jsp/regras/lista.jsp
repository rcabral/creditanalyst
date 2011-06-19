<%@ include file="/header.jsp" %> 
	<a class="linkMais" href="<c:url value="/regras/formulario"/>"><img alt="voltar" src="<c:url value="/images/mais.png"/>" /></a>
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
					<td><a href="edita?id=${regra.id}">Editar</a></td>
					<td><a href="remove?id=${regra.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %> 
</html>