<%@ include file="/header.jsp" %>
<script type="text/javascript" src="<c:url value="/js/propostasFormulario.js"/>"  ></script> 
	<form id="formularioDeProposta" <c:choose><c:when test="${proposta.id == null}">action="<c:url value="/propostas/adiciona"/>"</c:when><c:otherwise>action="<c:url value="/propostas/altera"/>"</c:otherwise></c:choose> method="post" >
		<input type="hidden" id="calculaPrestacaoUrl" value="<c:url value='/propostas/calculaPrestacao'/>" />
		<input type="hidden" name="proposta.id"  value="${proposta.id}" />
		<input type="hidden" id="proposta.status" name="proposta.status" value="ANALISE" />
		<fieldset>
			<legend><a class="linkVoltar" href="<c:url value="/propostas/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>Proposta</legend>
			<fieldset>
				<legend>Cliente</legend>
				<input type="hidden" name="proposta.cliente.id"  value="${proposta.cliente.id}" />
				<hermes:campoCPF readOnly="true" label="CPF:" id="proposta.cliente.cpf" value="${proposta.cliente.cpf}"></hermes:campoCPF>
				<br /><br />
				<hermes:campoTexto readOnly="true" label="Nome:" id="proposta.cliente.nome" value="${proposta.cliente.nome}"></hermes:campoTexto>
			</fieldset>
			<fieldset>
				<legend>Dados do Crédito</legend>
				<fmt:formatNumber value="${proposta.valor}" minFractionDigits="2" type="currency" var="valor"/> 
				<hermes:campoMoeda label="Valor:" id="valor" name="proposta.valor" value="${valor}"></hermes:campoMoeda>
				<br /><br />
				<fmt:formatNumber value="${proposta.quantidadeDeParcelas}" type="number" var="quantidadeDeParcelas"/> 
				<hermes:campoNumeroInteiro label="Quantidade de Parcelas:" value="${quantidadeDeParcelas}" readOnly="true" id="quantidadeDeParcelas" name="proposta.quantidadeDeParcelas"></hermes:campoNumeroInteiro>
				<br /><br />
				<fmt:formatDate value="${proposta.dataDoPrimeiroVencimento.time}" var="dataDoPrimeiroVencimento"  pattern="dd/MM/yyyy"/>
				<hermes:campoData label="Primeiro Vencimento:" id="dataDoPrimeiroVencimento" name="proposta.dataDoPrimeiroVencimento" value="${dataDoPrimeiroVencimento}" ></hermes:campoData>
				<br /><br />
				<fmt:formatNumber value="${proposta.valorDaPrestacao}" minFractionDigits="2" type="currency" var="valorDaPrestacao"/>  
				<hermes:campoMoeda label="Valor da Prestação:" id="valorDaPrestacao" value="${valorDaPrestacao}" name="proposta.valorDaPrestacao" readOnly="true"></hermes:campoMoeda>
				<br /><br />
				<label for="proposta.bancoParaRecebimentoDoCredito.numero">Banco para recebimento:<span class="fieldRequired">*</span></label>
				<select class="autocomplete" name="proposta.bancoParaRecebimentoDoCredito.numero" id="proposta.bancoParaRecebimentoDoCredito.numero">
					<option value="null"></option>
					<c:forEach items="${bancoList}" var="banco">
						<option value="${banco.numero}" <c:if test="${proposta.bancoParaRecebimentoDoCredito.numero==banco.numero}">selected="selected"</c:if>  >${banco.nome}</option>
					</c:forEach>
				</select>
			</fieldset>
			<br />	
			<button type="button" onclick="javascript:window.location='<c:url value="/propostas/lista"/>'">Voltar</button>
			<button type="submit">Enviar</button>	
		</fieldset>
		<hermes:campoObrigatorio></hermes:campoObrigatorio>
	</form>
<%@ include file="/footer.jsp" %>