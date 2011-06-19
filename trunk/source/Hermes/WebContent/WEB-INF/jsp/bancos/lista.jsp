<%@ include file="/header.jsp" %> 
	<a class="linkMais" href="<c:url value="/bancos/formulario"/>"><img alt="voltar" src="<c:url value="/images/mais.png"/>" /></a>
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
					<td><a href="edita?id=${banco.numero}">Editar</a></td>
					<td><a href="remove?id=${banco.numero}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %> 