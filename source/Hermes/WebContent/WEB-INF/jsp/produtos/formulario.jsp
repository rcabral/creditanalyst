<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Insert title here</title>
</head>
<body>
	<div id="erros">
		<ul>
		<c:forEach items="${errors}" var="error">
		<li>${error.category } - ${error.message }</li>
		</c:forEach>
		</ul>
	</div>
	<form action="adiciona">
		<fieldset>
			<legend>Adicionar Produto</legend>
			<label for="nome">Nome:</label>
			<input id="nome" type="text" name="produto.nome"/><br /><br />
			<label for="descricao">Descrição:</label>
			<textarea id="descricao" name="produto.descricao"></textarea><br /><br />
			<label for="preco">Preço:</label>
			<input id="preco" type="text" name="produto.preco"/><br /><br />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
</body>
</html>