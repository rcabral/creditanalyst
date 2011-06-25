<%@ include file="/header.jsp" %>
	<form>
		<fieldset>
			<legend>&nbsp;Lista de Métodos de Escoragem:<a class="linkMais" href="<c:url value="/escoragens/formulario"/>"><img class="btnMais" alt="mais" title="mais" src="<c:url value="/images/mais.png"/>" /></a></legend>
			<hermes:formularioDeBusca></hermes:formularioDeBusca>
			<table>
				<thead>
					<th>Id</th>
					<th>Nome</th>
					<th>Descrição</th>
					<th>Ativo</th>
				</thead>
				<tbody>
				<c:forEach items="${escoragemList}" var="escoragem">
						<tr>
							<td>${escoragem.id}</td>
							<td>${escoragem.nome}</td>
							<td>${escoragem.descricao}</td>
							<td>
								<c:choose>
									<c:when test="${escoragem.ativo}"><span class="textoVerde">Sim</span></c:when>
									<c:otherwise><span class="textoLaranja">Não</span></c:otherwise>
								</c:choose>
							</td>
							<td><a href="edita?id=${escoragem.id}"><img class="btnEditarItem" alt="Editar" title="Editar" src="<c:url value="/images/btnEditar.png"/>" /></a></td>
							<td><a href="remove?id=${escoragem.id}"><img class="btnExcluirItem" alt="Excluir" title="Excluir" src="<c:url value="/images/btnExcluir.png"/>" /></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %> 
</html>