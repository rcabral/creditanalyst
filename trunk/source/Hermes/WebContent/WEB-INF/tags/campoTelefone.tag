<%@ tag language="java" pageEncoding="ISO-8859-1"%>
<%@ attribute name="label" required="true" %>
<%@ attribute name="idDDD" required="true" %>
<%@ attribute name="idTelefone" required="true" %>
<%@ attribute name="valueDDD" required="true" %>
<%@ attribute name="valueTelefone" required="true" %>
<label for="${id}">${label}</label>
<input type="text" id="${idDDD}" name="${idDDD}" class="ddd" value="${valueDDD}" size="2" maxlength="2" />
<input type="text" id="${idTelefone}" name="${idTelefone}" class="telefone" value="${valueTelefone}" size="10" maxlength="10" />