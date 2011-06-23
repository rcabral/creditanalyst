<%@ include file="/header.jsp" %>
	<a class="linkMais" href="<c:url value="/clientes/formulario"/>"><img alt="voltar" src="<c:url value="/images/mais.png"/>" /></a> 
	<hermes:formularioDeBusca></hermes:formularioDeBusca>
	<table>
		<thead>
			<th>&nbsp;</th>
			<th>Nome</th>
			<th>CPF</th>
			<th>RG</th>
			<th>Data de Nascimento</th>
			<th>Sexo</th>
			<th>&nbsp;</th>
			<th>&nbsp;</th>
		</thead>
		<tbody>
			<c:forEach items="${clienteList}" var="cliente">
				<tr>
					<td><a href="novaProposta?id=${cliente.id}"><img class="btnNovaProposta" alt="Nova Proposta" title="Nova Proposta" src="<c:url value="/images/btnFazerProposta.png"/>" /></a></td>
					<td>${cliente.nome}</td>
					<td>${cliente.cpf}</td>
					<td>${cliente.rg}</td>
					<td><fmt:formatDate value="${cliente.dataDeNascimento.time}" pattern="dd/MM/yyyy"/></td>
					<td>${cliente.sexo}</td>
					<td><a href="edita?id=${cliente.id}"><img class="btnEditarItem" alt="Editar" title="Editar" src="<c:url value="/images/btnEditar.png"/>" /></a></td>
					<td><a href="remove?id=${cliente.id}"><img class="btnExcluirItem" alt="Excluir" title="Excluir" src="<c:url value="/images/btnExcluir.png"/>" /></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %>