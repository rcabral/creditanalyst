<%@ include file="/header.jsp" %> 
	<table>
		<thead>
			<th>Número da Proposta</th>
			<th>CPF</th>
			<th>Nome</th>
			<th>Data da Proposta</th>
			<th>Valor</th>
			<th>Status</th>
			<th>Data de Aprovação</th>
		</thead>
		<tbody>
			<c:forEach items="${propostaList}" var="proposta">
				<tr>
					<td>${proposta.id}</td>
					<td>${proposta.cliente.cpf}</td>
					<td>${proposta.cliente.nome}</td>
					<td><fmt:formatDate value="${proposta.data.time}" pattern="dd/MM/yyyy"/></td>
					<td>${proposta.status}</td>
					<td><fmt:formatDate value="${proposta.dataDeAprovacao.time}" pattern="dd/MM/yyyy"/></td>
					<td><a href="edita?id=${cliente.id}">Editar</a></td>
					<td><a href="remove?id=${cliente.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %>