<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="hermes" %>
<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>HERMES - Login</title>
<link rel="shortcut icon" href="<c:url value="/images/favicon.ico"/>" />
<link href="<c:url value="/css/login.css"/>" rel="stylesheet" type="text/css" />
</head>
<body>
<form id="login-form" action="autentica" method="post">
		<fieldset>
			<legend>Log in</legend>
			<label for="credencial.login">Login</label>
			<input type="text" id="credencial.login" name="credencial.login"/>
			<div class="clear"></div>
			<label for="credencial.senha">Senha</label>
			<input type="password" id="credencial.senha" name="credencial.senha"/>
			<div class="clear"></div>
			<div class="clear"></div>
			<div id="errors">
				<ul>
					<c:forEach items="${errors}" var="error">
						<li>${error.category } - ${error.message }</li>
					</c:forEach>
				</ul>
			</div>
			<input type="submit" style="margin: -20px 0 0 287px;" class="button" name="commit" value="Log in"/>	
		</fieldset>
</form>
</body>
</html>