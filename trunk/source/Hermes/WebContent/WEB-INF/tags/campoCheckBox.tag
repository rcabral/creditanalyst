<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" required="false" %>
<label for="${id}">${label}</label>
<input type="checkbox" id="${id}" name="${id}" class="checkbox" <c:if test="${value==true}">checked="checked"</c:if> />


			