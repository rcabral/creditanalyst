<%@ include file="/header.jsp" %> 
	<table>
		<thead>
			<th>N�mero</th>
			<th>Nome</th>
		</thead>
		<tbody>
			<c:forEach items="${bancoList}" var="banco">
				<tr>
					<td>${banco.numero}</td>
					<td>${banco.nome}</td>
					<td><a href="edita?id=${banco.numero}">Editar</a></td>
					<td><a href="remove?id=${banco.numero}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %> 