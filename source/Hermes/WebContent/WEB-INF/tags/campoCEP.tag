<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="id" required="true" %>
<%@ attribute name="name" required="false" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" required="true" %>
<label for="${id}">${label}</label>
<c:if test="${empty name}">
	<c:set var="name" value="${id}"></c:set>
</c:if>
<input type="text" id="${id}" name="${name}" class="cep" value="${value}" />