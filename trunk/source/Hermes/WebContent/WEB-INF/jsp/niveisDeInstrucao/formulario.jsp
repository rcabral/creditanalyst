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
	<form <c:choose><c:when test='${nivelDeInstrucao.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<fieldset>
			<legend>N�vel de Instru��o</legend>
			<c:choose>
				<c:when test="${nivelDeInstrucao.id == null}">
					<label for="nivelDeInstrucao.id">N�vel:</label>
				<input id="nivelDeInstrucao.id" type="text" name="nivelDeInstrucao.id" value="${nivelDeInstrucao.id}"  /><br /><br />
				</c:when>
				<c:otherwise>
					<input type="hidden" name="nivelDeInstrucao.id"  value="${nivelDeInstrucao.id}" />
				</c:otherwise>
			</c:choose>
			<label for="nivelDeInstrucao.descricao">Descri��o:</label>
			<input id="nivelDeInstrucao.descricao" type="text" name="nivelDeInstrucao.descricao" value="${nivelDeInstrucao.descricao}"  /><br /><br />
			<button type="submit">Enviar</button>
		</fieldset>
	</form>
</body>
</html>