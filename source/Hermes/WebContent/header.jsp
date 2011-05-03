<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="hermes" %>
<fmt:setLocale value="${locale}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="author" content="
	@author Sérgio Lista - srtlista@gmail.com
	@author Raphael Cabral - raphaelcabralnet@gmail.com
	@author Rodrigo Vasco - r.vasco83@gmail.com"  />
	<meta name="reply-to" content="contato@caelum.com.br"/>
	<meta name="author" content="Design"/>
	<meta name="reply-to" content="lokidg@gmail.com"/>
	<meta name="description" content="<fmt:message key="meta.description"/>"/>
	<meta name="keywords" content="sites, web, desenvolvimento, development, java, opensource"/>
	<title>Hermes</title>
	<link href="<c:url value="/css/menu.css"/>" rel="stylesheet" type="text/css" />
	<link href="<c:url value="/css/pagina.css"/>" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="<c:url value="/js/menu.js"/>"></script>
	<link href="<c:url value="/css/default.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<link href="<c:url value="/frameworks/jquery/plugins/jquery-ui/css/cupertino/jquery-ui-1.8.12.custom.css"/>" rel="stylesheet" type="text/css" media="screen" />
	<script type="text/javascript" src="<c:url value="/frameworks/jquery/jquery.min.js"/>"  ></script>
	<script type="text/javascript" src="<c:url value="/frameworks/jquery/plugins/jquery-ui/js/jquery-ui.min.js"/>"  ></script>
	<script type="text/javascript" src="<c:url value="/js/default.js"/>"  ></script>
</head>
<body onload="menuDropDown(0);">
		  <div id="cabecalho">
		   	  <div id="topo"><image src="<c:url value="/images/cred_scor.png"/>" width="549" height="61" alt="" /></div>
		   	  <%@ include file="/menu.jsp" %>
	   	  </div>
	   	  <div id="conteudo">
				<c:if test="${not empty errors}">
					<div id="errors">
						<ul>
							<c:forEach items="${errors }" var="error">
								<li>${error.category } - ${error.message }</li>
							</c:forEach>
						</ul>
					</div>
				</c:if>
