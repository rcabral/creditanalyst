<%@ include file="/header.jsp" %>
	<a class="linkMais" href="<c:url value="/clientes/formulario"/>"><img alt="voltar" src="<c:url value="/images/mais.png"/>" /></a> 
	<table>
		<thead>
			<th>Nome</th>
			<th>CPF</th>
			<th>RG</th>
			<th>Data de Nascimento</th>
			<th>Sexo</th>
		</thead>
		<tbody>
			<c:forEach items="${clienteList}" var="cliente">
				<tr>
					<td>${cliente.nome}</td>
					<td>${cliente.cpf}</td>
					<td>${cliente.rg}</td>
					<td><fmt:formatDate value="${cliente.dataDeNascimento.time}" pattern="dd/MM/yyyy"/></td>
					<td>${cliente.sexo}</td>
					<td><a href="novaProposta?id=${cliente.id}">Nova Proposta</a></td>
					<td><a href="edita?id=${cliente.id}">Editar</a></td>
					<td><a href="remove?id=${cliente.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %>