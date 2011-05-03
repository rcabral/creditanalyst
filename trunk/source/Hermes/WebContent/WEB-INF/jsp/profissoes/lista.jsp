<%@ include file="/header.jsp" %> 
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
					<td><a href="edita?id=${profissao.codigoCBO}">Editar</a></td>
					<td><a href="remove?id=${profissao.codigoCBO}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %>