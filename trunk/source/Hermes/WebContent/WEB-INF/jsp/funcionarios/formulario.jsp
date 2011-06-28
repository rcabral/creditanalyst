<%@ include file="/header.jsp" %>
<script type="text/javascript" src="<c:url value="/js/funcionariosFormulario.js"/>"  ></script> 
	<form id="formFuncionario" <c:choose><c:when test='${funcionario.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<input type="hidden" name="funcionario.id"  value="${funcionario.id}" />
		<fieldset>
			<legend><a class="linkVoltar" href="<c:url value="/funcionarios/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>Funcionário</legend>
			<fieldset>
				<legend>Dados Pessoais</legend>
				<hermes:campoTexto label="Nome:" id="funcionario.nome" value="${funcionario.nome}"></hermes:campoTexto>
				<br /><br />
				<hermes:campoCPF label="CPF:" id="funcionarioCpf" name="funcionario.cpf" value="${funcionario.cpf}"></hermes:campoCPF>
				<br /><br />
				<hermes:campoRG label="RG:" id="funcionario.rg" value="${funcionario.rg}"></hermes:campoRG>
				<br /><br />
				<fmt:formatDate value="${funcionario.dataDeNascimento.time}" var="dataDeNascimento" pattern="dd/MM/yyyy"/>
				<hermes:campoData id="funcionario.dataDeNascimento"  label="Data de Nascimento:" value="${dataDeNascimento}"></hermes:campoData>
				<br /><br />
				<label for="funcionario.sexo">Sexo:<span class="fieldRequired">*</span></label>
				<select name="funcionario.sexo" id="funcionario.sexo">
					<option value=""></option>
					<c:forEach items="${sexoList}" var="sexo">
						<option value="${sexo}" <c:if test="${funcionario.sexo==sexo}">selected="selected"</c:if> >${sexo.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
			</fieldset>
			<fieldset>
				<legend>Endereço</legend>
				<input type="hidden" name="funcionario.endereco.id" value="${funcionario.endereco.id}" />
				<label for="funcionario.endereco.tipoDeLogradouro">Tipo de Logradouro:<span class="fieldRequired">*</span></label>
				<select name="funcionario.endereco.tipoDeLogradouro" id="funcionario.endereco.tipoDeLogradouro">
					<option value=""></option>
					<c:forEach items="${tipoDeLogradouroList}" var="tipoDeLogradouro">
						<option value="${tipoDeLogradouro}" <c:if test="${funcionario.endereco.tipoDeLogradouro==tipoDeLogradouro}">selected="selected"</c:if> >${tipoDeLogradouro.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<hermes:campoTexto label="Nome do Logradouro:" id="funcionario.endereco.nomeDoLogrado" value="${funcionario.endereco.nomeDoLogrado}"></hermes:campoTexto>
				<br /><br />
				<hermes:campoNumeroInteiro label="Número:" id="funcionario.endereco.numero" value="${funcionario.endereco.numero}"></hermes:campoNumeroInteiro>
				<br /><br />
				<hermes:campoTexto label="Bairro:" id="funcionario.endereco.bairro" value="${funcionario.endereco.bairro}"></hermes:campoTexto>
				<br /><br />
				<hermes:campoCEP label="CEP:"  id="funcionarioCEP" name="funcionario.endereco.cep" value="${funcionario.endereco.cep}"></hermes:campoCEP>
				<br /><br />
				<hermes:campoTexto label="Município:" id="funcionario.endereco.municipio" value="${funcionario.endereco.municipio}"></hermes:campoTexto>
				<br /><br />
				<label for="funcionario.endereco.uf">UF:<span class="fieldRequired">*</span></label>
				<select name="funcionario.endereco.uf" id="funcionario.endereco.uf">
					<option value=""></option>
					<c:forEach items="${ufs}" var="uf">  
						<option value="${uf}" <c:if test="${funcionario.endereco.uf==uf}">selected="selected"</c:if>>${uf}</option>
					</c:forEach>
				</select><br /><br />
			</fieldset>
			<fieldset>
				<legend>Credencial</legend>
				<hermes:campoTexto label="Login:" id="funcionario.login" value="${funcionario.login}"></hermes:campoTexto>
				<br /><br />
				<hermes:campoSenha label="Senha:" id="funcionario.senha" name="funcionario.senha"></hermes:campoSenha>
				<br /><br />
				<label for="funcionario.cargo">Cargo:<span class="fieldRequired">*</span></label>
				<select name="funcionario.cargo" id="funcionario.cargo">
					<option value=""></option>
					<c:forEach items="${cargoList}" var="cargo">  
						<option value="${cargo}" <c:if test="${funcionario.cargo==cargo}">selected="selected"</c:if>>${cargo.nome}</option>
					</c:forEach>
				</select><br /><br />
			</fieldset>
			<br />
			<button type="button" onclick="javascript:window.location='<c:url value="/funcionarios/lista"/>'">Voltar</button>	
			<button type="submit">Enviar</button>	
		</fieldset>
		<hermes:campoObrigatorio></hermes:campoObrigatorio>
	</form>
<%@ include file="/footer.jsp" %>