<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Lista de Clientes</title>
</head>
<body>
	<table>
		<thead>
			<th>Nome</th>
			<th>CPF</th>
			<th>RG</th>
			<th>Data de Nascimento</th>
			<th>Sexo</th>
		</thead>
		<tbody>
			<c:forEach items="${clienteList}" var="cliente">
				<tr>
					<td>${cliente.nome}</td>
					<td>${cliente.cpf}</td>
					<td>${cliente.rg}</td>
					<td><fmt:formatDate value="${cliente.dataDeNascimento.time}" pattern="dd/MM/yyyy"/></td>
					<td>${cliente.sexo}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>