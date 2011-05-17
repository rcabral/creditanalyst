<%@ include file="/header.jsp" %> 
	<table>
		<thead>
			<th>Nome</th>
			<th>CPF</th>
			<th>RG</th>
			<th>Data de Nascimento</th>
			<th>Sexo</th>
			<th>Matrícula</th>
		</thead>
		<tbody>
			<c:forEach items="${funcionarioList}" var="funcionario">
				<tr>
					<td>${funcionario.nome}</td>
					<td>${funcionario.cpf}</td>
					<td>${funcionario.rg}</td>
					<td><fmt:formatDate value="${funcionario.dataDeNascimento.time}" pattern="dd/MM/yyyy"/></td>
					<td>${funcionario.sexo}</td>
					<td>${funcionario.matricula}</td>
					<td><a href="edita?id=${funcionario.id}">Editar</a></td>
					<td><a href="remove?id=${funcionario.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %> 
</html>