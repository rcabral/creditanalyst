<%@ include file="/header.jsp" %>
	<form>
		<fieldset>
			<legend>&nbsp;Lista de Propostas:</legend>
			<hermes:formularioDeBusca></hermes:formularioDeBusca> 
			<table>
				<thead>
					<th>Número da Proposta</th>
					<th>CPF</th>
					<th>Nome</th>
					<th>Data da Proposta</th>
					<th>Valor</th>
					<th>Status</th>
					<th>Data de Aprovação</th>
					<th>&nbsp;</th>
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
							<c:choose>
								<c:when test="${proposta.status=='ANALISE'}">
									<td><a href="<c:url value="/propostas/visualiza"/>?id=${proposta.id}"><img class="btnVisualizarItem" alt="Visualizar" title="Visualizar" src="<c:url value="/images/btnVisualizar.png"/>" /></a></td>
									<td><a href="<c:url value="/propostas/edita"/>?id=${proposta.id}"><img class="btnEditarItem" alt="Editar" title="Editar" src="<c:url value="/images/btnEditar.png"/>" /></a></td>
									<td><a href="<c:url value="/propostas/remove"/>?id=${proposta.id}"><img class="btnExcluirItem" alt="Excluir" title="Excluir" src="<c:url value="/images/btnExcluir.png"/>" /></a></td>
								</c:when>
								<c:otherwise>
									<td><a href="<c:url value="/propostas/visualiza"/>?id=${proposta.id}"><img class="btnVisualizarItem" alt="Visualizar" title="Visualizar" src="<c:url value="/images/btnVisualizar.png"/>" /></a></td>
									<td>&nbsp;</td>
									<td>&nbsp;</td>
								</c:otherwise>							
							</c:choose>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>