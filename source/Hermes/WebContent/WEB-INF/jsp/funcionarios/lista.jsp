<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Lista de funcionários</title>
</head>
<body>
	<table>
		<thead>
			<th>Login</th>
			<tr>Matrícula</tr>
		</thead>
		<tbody>
			<c:forEach items="${funcionarioList}" var="funcionario">
				<tr>
					<td>${funcionario.login}</td>
					<td>${funcionario.matricula}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>