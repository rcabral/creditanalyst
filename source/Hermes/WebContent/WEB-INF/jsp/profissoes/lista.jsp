<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Lista de Profissões</title>
</head>
<body>
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
</body>
</html>