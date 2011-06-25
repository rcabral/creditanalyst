<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ attribute name="id" required="true" %>
<%@ attribute name="label" required="true" %>
<%@ attribute name="value" required="false" %>
<%@ attribute name="readOnly" required="false" %>
<%@ attribute name="required" required="false" %>
<label for="${id}">${label}
<c:if test="${empty required || required}">
	<span class="fieldRequired">*</span>
</c:if>
<input type="text" id="${id}" name="${id}" value="${value}"
<c:if test="${readOnly}">
	readonly="readonly"	
</c:if>
class="texto <c:if test='${readOnly}'> readOnly</c:if>"
 />