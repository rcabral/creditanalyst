<%@ include file="/header.jsp" %> 
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
					<td><a href="edita?id=${escoragem.id}">Editar</a></td>
					<td><a href="remove?id=${escoragem.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<%@ include file="/footer.jsp" %> 
</html>