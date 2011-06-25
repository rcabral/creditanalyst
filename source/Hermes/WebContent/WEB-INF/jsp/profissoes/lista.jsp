<%@ include file="/header.jsp" %>
	<form>
		<fieldset>
		<legend>&nbsp;Lista de Profissões:<a class="linkMais" href="<c:url value="/profissoes/novo"/>"><img class="btnMais" alt="mais" title="mais" src="<c:url value="/images/mais.png"/>" /></a></legend>
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
			</fieldset>
	</form>
<%@ include file="/footer.jsp" %>