<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Lista de funcion�rios</title>
</head>
<body>
	<table>
		<thead>
			<th>Nome</th>
			<th>CPF</th>
			<th>RG</th>
			<th>Data de Nascimento</th>
			<th>Sexo</th>
			<th>Matr�cula</th>
		</thead>
		<tbody>
			<c:forEach items="${funcionarioList}" var="funcionario">
				<tr>
					<td>${funcionario.nome}</td>
					<td>${funcionario.cpf}</td>
					<td>${funcionario.rg}</td>
					<td><fmt:formatDate value="${funcionario.dataDeNascimento.time}" pattern="dd/MM/yyyy"/></td>
					<td>${funcionario.sexo}</td>
					<td>${funcionario.matricula}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>