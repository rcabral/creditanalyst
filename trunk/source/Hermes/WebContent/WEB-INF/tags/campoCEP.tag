<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" required="true" %>
<label for="${id}">${label}</label>
<input type="text" id="${id}" name="${id}" class="cep" value="${value}" />