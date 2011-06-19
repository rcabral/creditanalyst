<%@ include file="/header.jsp" %> 
	<table>
		<thead>
			<th>N�mero da Proposta</th>
			<th>CPF</th>
			<th>Nome</th>
			<th>Data da Proposta</th>
			<th>Valor</th>
			<th>Status</th>
			<th>Data de Aprova��o</th>
		</thead>
		<tbody>
			<c:forEach items="${propostaList}" var="proposta">
				<tr>
					<td>${proposta.id}</td>
					<td>${proposta.cliente.cpf}</td>
					<td>${proposta.cliente.nome}</td>
					<td><fmt:formatDate value="${proposta.data.time}" pattern="dd/MM/yyyy"/></td>
					<td>${proposta.valor}</td>
					<td>${proposta.status.nome}</td>
					<td><fmt:formatDate value="${proposta.dataDeAprovacao.time}" pattern="dd/MM/yyyy"/></td>
					<td><a href="<c:url value="/propostas/edita"/>?id=${proposta.id}">Editar</a></td>
					<td><a href="<c:url value="/propostas/remove"/>?id=${proposta.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %>