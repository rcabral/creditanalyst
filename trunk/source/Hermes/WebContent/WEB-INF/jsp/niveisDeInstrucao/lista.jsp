<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Lista de Níveis de Instrução</title>
</head>
<body>
	<table>
		<thead>
			<th>Nível</th>
			<th>Descricao</th>
		</thead>
		<tbody>
			<c:forEach items="${nivelDeInstrucaoList}" var="nivelDeInstrucao">
				<tr>
					<td>${nivelDeInstrucao.id}</td>
					<td>${nivelDeInstrucao.descricao}</td>
					<td><a href="edita?id=${nivelDeInstrucao.id }">Editar</a></td>
					<td><a href="remove?id=${nivelDeInstrucao.id}">Remover</a></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>