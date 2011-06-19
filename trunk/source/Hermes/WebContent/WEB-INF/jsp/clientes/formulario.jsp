<%@ include file="/header.jsp" %> 
	<a class="linkVoltar" href="<c:url value="/clientes/lista"/>"><img alt="voltar" src="<c:url value="/images/voltar.png"/>" /></a>
	<form <c:choose><c:when test='${cliente.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<input type="hidden" name="cliente.id"  value="${cliente.id}" />
		<fieldset>
			<legend>Cliente</legend>
			<fieldset>
				<legend>Dados Pessoais</legend>
				<hermes:campoTexto label="Nome:" id="cliente.nome" value="${cliente.nome}"></hermes:campoTexto>
				<br /><br />
				<hermes:campoCPF label="CPF:" id="cliente.cpf" value="${cliente.cpf}"></hermes:campoCPF>
				<br /><br />
				<hermes:campoRG label="RG:" id="cliente.rg" value="${cliente.rg}"></hermes:campoRG>
				<br /><br />
				<fmt:formatDate value="${cliente.dataDeNascimento.time}" var="dataDeNascimento" pattern="dd/MM/yyyy"/>
				<hermes:campoData id="cliente.dataDeNascimento"  label="Data de Nascimento:" value="${dataDeNascimento}"></hermes:campoData>
				<br /><br />
				<label for="cliente.sexo">Sexo:</label>
				<select name="cliente.sexo" id="cliente.sexo">
					<option value=""></option>
					<c:forEach items="${sexoList}" var="sexo">
						<option value="${sexo}" <c:if test="${cliente.sexo==sexo}">selected="selected"</c:if> >${sexo.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<label for="cliente.perfilDoCliente.estadoCivil">Estado Civil:</label>
				<select name="cliente.perfilDoCliente.estadoCivil" id="cliente.perfilDoCliente.estadoCivil">
					<option value=""></option>
					<c:forEach items="${estadoCivilList}" var="estadoCivil">
						<option value="${estadoCivil}" <c:if test="${cliente.perfilDoCliente.estadoCivil==estadoCivil}">selected="selected"</c:if> >${estadoCivil.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<hermes:campoNumeroInteiro label="Número de Dependentes:" id="cliente.perfilDoCliente.numeroDeDependentes" value="${cliente.perfilDoCliente.numeroDeDependentes}"></hermes:campoNumeroInteiro>
				<br /><br />
				<label for="cliente.perfilDoCliente.nivelDeInstrucao">Nível de Instrução:</label>
				<select class="teste" name="cliente.perfilDoCliente.nivelDeInstrucao" id="cliente.perfilDoCliente.nivelDeInstrucao">
					<option value=""></option>
					<c:forEach items="${nivelDeInstrucaoList}" var="nivelDeInstrucao">
						<option value="${nivelDeInstrucao}" <c:if test="${cliente.perfilDoCliente.nivelDeInstrucao==nivelDeInstrucao}">selected="selected"</c:if> >${nivelDeInstrucao.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<label for="cliente.perfilDoCliente.profissao.codigoCBO">Profissão:</label>
				<select class="autocomplete" name="cliente.perfilDoCliente.profissao.codigoCBO" id="cliente.perfilDoCliente.profissao.codigoCBO">
					<option value=""></option>
					<c:forEach items="${profissaoList}" var="profissao">
						<option value="${profissao.codigoCBO}" <c:if test="${cliente.perfilDoCliente.profissao.codigoCBO==profissao.codigoCBO}">selected="selected"</c:if>  >${profissao.descricao}</option>
					</c:forEach>
				</select>
				<br /><br />
				<label for="cliente.perfilDoCliente.tipoDeResidencia">Tipo de Residencia:</label>
				<select name="cliente.perfilDoCliente.tipoDeResidencia" id="cliente.perfilDoCliente.tipoDeResidencia">
					<option value=""></option>
					<c:forEach items="${tipoDeResidenciaList}" var="tipoDeResidencia">
						<option value="${tipoDeResidencia}" <c:if test="${cliente.perfilDoCliente.tipoDeResidencia==tipoDeResidencia}">selected="selected"</c:if> >${tipoDeResidencia.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<hermes:campoNumeroInteiro label="Tempo de Residencia em Anos:" id="cliente.perfilDoCliente.tempoDeResidenciaAtualEmAnos" value="${cliente.perfilDoCliente.tempoDeResidenciaAtualEmAnos}" ></hermes:campoNumeroInteiro>
				<br /><br />
				<hermes:campoTelefone label="Telefone Residencial:" idDDD="cliente.perfilDoCliente.telefoneResidencial.ddd" idTelefone="cliente.perfilDoCliente.telefoneResidencial.numero" valueTelefone="${cliente.perfilDoCliente.telefoneResidencial.numero}" valueDDD="${cliente.perfilDoCliente.telefoneResidencial.ddd}"></hermes:campoTelefone>
				<br /><br />
				<hermes:campoTelefone label="Telefone Celular:" idDDD="cliente.perfilDoCliente.telefoneCelular.ddd" idTelefone="cliente.perfilDoCliente.telefoneCelular.numero" valueTelefone="${cliente.perfilDoCliente.telefoneCelular.numero}" valueDDD="${cliente.perfilDoCliente.telefoneCelular.ddd}"></hermes:campoTelefone>
				<br /><br />
				<hermes:campoEmail label="Email:" id="cliente.perfilDoCliente.email" value="${cliente.perfilDoCliente.email}"></hermes:campoEmail>
				<br /><br />
				<hermes:campoNumeroInteiro label="Quantidade de Veículos:" id="cliente.perfilDoCliente.quantidadeDeVeiculos" value="${cliente.perfilDoCliente.quantidadeDeVeiculos}" ></hermes:campoNumeroInteiro>
				<br /><br />
				<hermes:campoMoeda label="Renda Mensal Comprovada" id="cliente.perfilDoCliente.rendaMensalComprovada" value="${cliente.perfilDoCliente.rendaMensalComprovada}"></hermes:campoMoeda>
				<br /><br />
				<hermes:campoMoeda label="Salário" id="cliente.perfilDoCliente.salario" value="${cliente.perfilDoCliente.salario}"></hermes:campoMoeda>	
				<br /><br />
				<fmt:formatDate value="${cliente.perfilDoCliente.dataDeEntradaNoEmpregoAtual.time}" var="dataDeEntradaNoEmpregoAtual" pattern="dd/MM/yyyy"/>
				<hermes:campoData id="cliente.perfilDoCliente.dataDeEntradaNoEmpregoAtual" label="Data de Entrada no Emprego Atual:" value="${dataDeEntradaNoEmpregoAtual}" ></hermes:campoData>
				<br /><br />
				<label for="cliente.perfilDoCliente.tipoDeVinculoComCredor">Tipo de Vínculo com o Credor:</label>
				<select name="cliente.perfilDoCliente.tipoDeVinculoComCredor" id="cliente.perfilDoCliente.tipoDeVinculoComCredor">
					<option value=""></option>
					<c:forEach items="${tipoDeVinculoComCredorList}" var="tipoDeVinculoComCredor">  
							<option value="${tipoDeVinculoComCredor}" <c:if test="${cliente.perfilDoCliente.tipoDeVinculoComCredor==tipoDeVinculoComCredor}">selected="selected"</c:if>>${tipoDeVinculoComCredor.nome}</option>
					</c:forEach>
				</select><br /><br />
				<fmt:formatDate value="${cliente.perfilDoCliente.dataDeAberturaDaContaMaisAntiga.time}" var="dataDeAberturaDaContaMaisAntiga" pattern="dd/MM/yyyy"/>
				<hermes:campoData label="Data de Abertura da Conta mais antiga:" id="cliente.perfilDoCliente.dataDeAberturaDaContaMaisAntiga" value="${dataDeAberturaDaContaMaisAntiga}"></hermes:campoData>
				<br /><br />
				<hermes:campoCheckBox label="Possui Cheque Especial:" id="cliente.perfilDoCliente.possuiChequeEspecial" value="${cliente.perfilDoCliente.possuiChequeEspecial}"></hermes:campoCheckBox>
				<br /><br />
				<hermes:campoCheckBox label="Possui seguro de Automóvel:" id="cliente.perfilDoCliente.possuiSeguroDeAutmovel" value="${cliente.perfilDoCliente.possuiSeguroDeAutmovel}"  ></hermes:campoCheckBox>
				<br /><br />
				<label>Bens Imóveis:</label> <input type="button" id="btnIncluiBemImovel" value="+" />
				<br /><br />
				<dir id="divBensImoveis">
					 <c:forEach items="${cliente.perfilDoCliente.bensImoveis}" var="bemImovel" varStatus="s">  
					 	<div class="divBemImovel">
							<hermes:campoMoeda label="Valor:" id="cliente.perfilDoCliente.bensImoveis[${s.index}].valor" value="${bemImovel.valor}"></hermes:campoMoeda>
							<hermes:campoCheckBox label="Possui Ônus:" id="cliente.perfilDoCliente.bensImoveis[${s.index}].possuiOnus" value="${bemImovel.possuiOnus}"></hermes:campoCheckBox>
							<input type="button" class="btnRemoveBemImovel" value="-" />
						</div> 
					 </c:forEach>  
				</dir>
				</fieldset>
				<fieldset>
				<legend>Endereço</legend>
				<label for="cliente.perfilDoCliente.endereco.tipoDeLogradouro">Tipo de Logradouro:</label>
				<select name="cliente.perfilDoCliente.endereco.tipoDeLogradouro" id="cliente.perfilDoCliente.endereco.tipoDeLogradouro">
					<option value=""></option>
					<c:forEach items="${tipoDeLogradouroList}" var="tipoDeLogradouro">
						<option value="${tipoDeLogradouro}" <c:if test="${cliente.perfilDoCliente.endereco.tipoDeLogradouro==tipoDeLogradouro}">selected="selected"</c:if> >${tipoDeLogradouro.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<hermes:campoTexto label="Nome do Logradouro:" id="cliente.perfilDoCliente.endereco.nomeDoLogrado" value="${cliente.perfilDoCliente.endereco.nomeDoLogrado}"></hermes:campoTexto>
				<br /><br />
				<hermes:campoNumeroInteiro label="Número:" id="cliente.perfilDoCliente.endereco.numero" value="${cliente.perfilDoCliente.endereco.numero}"></hermes:campoNumeroInteiro>
				<br /><br />
				<hermes:campoTexto label="Bairro:" id="cliente.perfilDoCliente.endereco.bairro" value="${cliente.perfilDoCliente.endereco.bairro}"></hermes:campoTexto>
				<br /><br />
				<hermes:campoCEP label="CEP:" id="cliente.perfilDoCliente.endereco.cep" value="${cliente.perfilDoCliente.endereco.cep}"></hermes:campoCEP>
				<br /><br />
				<hermes:campoTexto label="Município:" id="cliente.perfilDoCliente.endereco.municipio" value="${cliente.perfilDoCliente.endereco.municipio}"></hermes:campoTexto>
				<br /><br />
				<label for="cliente.perfilDoCliente.endereco.uf">UF:</label>
				<select name="cliente.perfilDoCliente.endereco.uf" id="cliente.perfilDoCliente.endereco.uf">
					<option value=""></option>
					<c:forEach items="${ufs}" var="uf">  
						<option value="${uf}" <c:if test="${cliente.perfilDoCliente.endereco.uf==uf}">selected="selected"</c:if>>${uf}</option>
					</c:forEach>
				</select><br /><br />
			</fieldset>
			<br />
			<button type="button" onclick="javascript:window.location='<c:url value="/clientes/lista"/>'">Voltar</button>	
			<button type="submit">Enviar</button>	
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>