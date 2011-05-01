<?xml version="1.0" encoding="ISO-8859-1" ?>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" />
<title>HERMES - Login</title>
<link rel="shortcut icon" href="<c:url value='http://localhost:8080/Hermes/images/favicon.ico'/>" />
<link href="http://localhost:8080/Hermes/css/login.css" rel="stylesheet" type="text/css" />
</head>
<body>

<form id="login-form" action="<c:url value='/login/login'/>" method="post">
		<fieldset>
		
			<legend>Log in</legend>
			
			<label for="login">Login</label>
			<input type="text" id="login" name="login"/>
			<div class="clear"></div>
			
			<label for="password">Senha</label>
			<input type="password" id="password" name="password"/>
			<div class="clear"></div>
			
			<div class="clear"></div>
			
			<br />
			
			<input type="submit" style="margin: -20px 0 0 287px;" class="button" name="commit" value="Log in"/>	
		</fieldset>
	</form>

</body>
</html>