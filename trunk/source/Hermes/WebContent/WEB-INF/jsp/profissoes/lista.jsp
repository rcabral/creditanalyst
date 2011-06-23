<%@ include file="/header.jsp" %>
<a class="linkMais" href="<c:url value="/profissoes/novo"/>"><img alt="voltar" src="<c:url value="/images/mais.png"/>" /></a> 
	<hermes:formularioDeBusca></hermes:formularioDeBusca>
	<table>
		<thead>
			<th>Código CBO</th>
			<th>Descricao</th>
		</thead>
		<tbody>
			<c:forEach items="${profissaoList}" var="profissao">
				<tr>
					<td>${profissao.codigoCBO}</td>
					<td>${profissao.descricao}</td>
					<td><a href="edita?id=${profissao.codigoCBO}"><img class="btnEditarItem" alt="Editar" title="Editar" src="<c:url value="/images/btnEditar.png"/>" /></a></td>
					<td><a href="remove?id=${profissao.codigoCBO}"><img class="btnExcluirItem" alt="Excluir" title="Excluir" src="<c:url value="/images/btnExcluir.png"/>" /></a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %>