<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" required="false" %>
<%@ attribute name="required" required="false" %>
<label for="${id}">${label}
<c:if test="${empty required || required}">
	<span class="fieldRequired">*</span>
</c:if>
<input type="text" id="${id}" name="${id}" class="rg" value="${value}" />