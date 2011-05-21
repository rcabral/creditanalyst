<%@ include file="/header.jsp" %> 
	<table>
		<thead>
			<th>ID</th>
			<th>Nome</th>
			<th>Tipo de Resposta</th>
		</thead>
		<tbody>
			<c:forEach items="${regraList}" var="regra">
				<tr>
					<td>${regra.id}</td>
					<td>${regra.nome}</td>
					<td>${regra.tipoDeResposta}</td>
					<td><a href="edita?id=${regra.id}">Editar</a></td>
					<td><a href="remove?id=${regra.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %> 
</html>