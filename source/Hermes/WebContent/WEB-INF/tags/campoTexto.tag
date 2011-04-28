<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" required="false" %>
<label for="${id}">${label}</label>
<input type="text" id="${id}" name="${id}" class="texto" value="${value}" />