<%@ include file="/header.jsp" %> 
	<form>
		<fieldset>
			<legend>&nbsp;Lista de Bancos:<a class="linkMais" href="<c:url value="/bancos/novo"/>"><img class="btnMais" alt="mais" title="mais" src="<c:url value="/images/mais.png"/>" /></a></legend>
			<hermes:formularioDeBusca></hermes:formularioDeBusca>
			<table>
				<thead>
					<th>Número</th>
					<th>Nome</th>
				</thead>
				<tbody>
					<c:forEach items="${bancoList}" var="banco">
						<tr>
							<td>${banco.numero}</td>
							<td>${banco.nome}</td>
							<td><a href="edita?id=${banco.numero}"><img class="btnEditarItem" alt="Editar" title="Editar" src="<c:url value="/images/btnEditar.png"/>" /></a></td>
							<td><a href="remove?id=${banco.numero}"><img class="btnExcluirItem" alt="Excluir" title="Excluir" src="<c:url value="/images/btnExcluir.png"/>" /></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</fieldset>
	</form>	
<%@ include file="/footer.jsp" %> 