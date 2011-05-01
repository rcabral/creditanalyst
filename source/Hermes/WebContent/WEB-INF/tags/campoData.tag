<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="id" required="true" %>
<%@ attribute name="name" required="false" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" required="false" %>
<label for="${id}">${label}</label>
<c:if test="${empty name}">
	<c:set var="name" value="${id}"></c:set>
</c:if>
<input type="text" id="${id}" name="${name}" class="data" value="${value}" />






