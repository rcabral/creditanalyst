<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>Hermes</title>
</head>
<body>
	<div id="erros">
		<ul>
		<c:forEach items="${errors}" var="error">
		<li>${error.category } - ${error.message }</li>
		</c:forEach>
		</ul>
	</div>
	<form <c:choose><c:when test='${banco.numero == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="get" >
		<fieldset>
			<legend>Banco</legend>
			<c:choose>
				<c:when test="${banco.numero == null}">
					<label for="banco.numero">Número:</label>
					<input id="banco.numero" type="text" name="banco.numero" value="${banco.numero}"  /><br /><br />
				</c:when>
				<c:otherwise>
					<input type="hidden" name="banco.numero"  value="${banco.numero}" />
				</c:otherwise>
			</c:choose>
			<label for="banco.nome">Nome:</label>
			<input id="banco.nome" type="text" name="banco.nome" value="${banco.nome}"  /><br /><br />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
</body>
</html>