<%@ include file="/header.jsp" %> 
	<form <c:choose><c:when test='${cliente.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<fieldset>
			<legend>Cliente</legend>
			<fieldset>
				<legend>Dados Pessoais</legend>
				<input type="hidden" name="cliente.id"  value="${cliente.id}" />
				<label for="cliente.nome">Nome:</label>
				<input id="cliente.nome" type="text" name="cliente.nome" value="${cliente.nome}"  /><br /><br />
				<label for="cliente.cpf">CPF:</label>
				<input id="cliente.cpf" type="text" name="cliente.cpf" value="${cliente.cpf}"  /><br /><br />
				<label for="cliente.rg">RG:</label>
				<input id="cliente.rg" type="text" name="cliente.rg" value="${cliente.rg}"  /><br /><br />
				<hermes:campoData id="cliente.dataDeNascimento" value="${cliente.dataDeNascimento}" label="Data de Nascimento:"></hermes:campoData><br /><br />
				<label for="cliente.sexo">Sexo:</label>
				<select name="cliente.sexo" id="cliente.sexo">
					<option value=""></option>
					<c:forEach items="${sexoList}" var="sexo">
						<option value="${sexo}">${sexo.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<label for="perfilDoCliente.estadoCivil">Estado Civil:</label>
				<select name="perfilDoCliente.estadoCivil" id="perfilDoCliente.estadoCivil">
					<option value=""></option>
					<c:forEach items="${estadoCivilList}" var="estadoCivil">
						<option value="${estadoCivil}">${estadoCivil.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<label for="cliente.numeroDeDependentes">Número de Dependentes:</label>
				<input id="cliente.numeroDeDependentes" type="text" name="cliente.numeroDeDependentes" value="${cliente.numeroDeDependentes}"  /><br /><br />
				<label for="cliente.nivelDeInstrucao">Nível de Instrução:</label>
				<select name="cliente.nivelDeInstrucao" id="cliente.nivelDeInstrucao">
					<option value=""></option>
					<c:forEach items="${nivelDeInstrucaoList}" var="nivelDeInstrucao">
						<option value="${nivelDeInstrucao}">${nivelDeInstrucao.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<label for="cliente.profissao">Profissão:</label>
				<select name="cliente.profissao" id="cliente.profissao">
					<option value=""></option>
					<c:forEach items="${profissaoList}" var="profissao">
						<option value="${profissao.codigoCBO}">${profissao.descricao}</option>
					</c:forEach>
				</select>
				<br /><br />
				<label for="cliente.tipoDeResidencia">Tipo de Residencia:</label>
				<select name="cliente.tipoDeResidencia" id="cliente.tipoDeResidencia">
					<option value=""></option>
					<option value="PROPRIA">Própria</option>
				    <option value="ALUGADA">Alugada</option>
				</select>
				<br /><br />
				<label for="cliente.tempoDeResidenciaAtualEmAnos">Tempo de Residencia em Anos:</label>
				<input id="cliente.tempoDeResidenciaAtualEmAnos" type="text" name="cliente.tempoDeResidenciaAtualEmAnos" value="${cliente.tempoDeResidenciaAtualEmAnos}"  /><br /><br />
				
				<label for="benImovel.valor">Ben Imóvel - valor:</label>
				<input id="benImovel.valor" type="text" name="benImovel.valor" value="${benImovel.valor}"  /><br /><br />
				<label for="benImovel.possuiOnus">Ben Imóvel - Possui Ônus:</label>
				<input id="benImovel.possuiOnus" type="checkbox" name="benImovel.possuiOnus"  /><br /><br />
				<label for="telefone.numero">Telefone Residencial:</label>
				<input type="text" id="telefone.DDD" name="telefone.DDD" value="${telefone.DDD}" size="2" maxlength="2"  />
				<input type="text" id="telefone.numero" name="telefone.numero" value="${telefone.numero}" size="10"  /><br /><br />
				<label for="telefone.numero">Telefone Celular:</label>
				<input type="text" id="telefone.DDD" name="telefone.DDD" value="${telefone.DDD}" size="2" maxlength="2"  />
				<input type="text" id="telefone.numero" name="telefone.numero" value="${telefone.numero}" size="10"  /><br /><br />
				<label for="perfilDoCliente.email">Email:</label>
				<input id="perfilDoCliente.email" type="text" name="perfilDoCliente.email" value="${perfilDoCliente.email}"  /><br /><br />
				<label for="perfilDoCliente.quantidadeDeVeiculos">Quantidade de Veículos:</label>
				<input id="perfilDoCliente.quantidadeDeVeiculos" type="text" name="perfilDoCliente.quantidadeDeVeiculos" value="${perfilDoCliente.quantidadeDeVeiculos}"  /><br /><br />
				<hermes:campoMoeda label="Renda Mensal Comprovada" id="perfilDoCliente.rendaMensalComprovada" value="${perfilDoCliente.rendaMensalComprovada}"></hermes:campoMoeda>
				<br /><br />
				<hermes:campoMoeda label="Salário" id="perfilDoCliente.salario" value="${perfilDoCliente.salario}"></hermes:campoMoeda>	
				<br /><br />
				<hermes:campoData id="perfilDoCliente.dataDeEntradaNoEmpregoAtual" label="Data de Entrada no Emprego Atual:" value="${perfilDoCliente.dataDeEntradaNoEmpregoAtual}" ></hermes:campoData>
				<br /><br />
				<label for="perfilDoCliente.tipoDeVinculoComCredor">Tipo de Vínculo com o Credor:</label>
				<select name="perfilDoCliente.tipoDeVinculoComCredor" id="perfilDoCliente.tipoDeVinculoComCredor">
					<option value=""></option>
					<c:forEach items="${tipoDeVinculoComCredorList}" var="tipoDeVinculoComCredor">  
						<option value="${tipoDeVinculoComCredor}">${tipoDeVinculoComCredor.nome}</option>
					</c:forEach>
				</select><br /><br />
				<hermes:campoData label="Data de Abertura da Conta mais antiga:" id="perfilDoCliente.dataDeAberturaDaContaMaisAntiga" value="${perfilDoCliente.dataDeAberturaDaContaMaisAntiga}"></hermes:campoData>
				<br /><br />
				<hermes:campoCheckBox label="Possui Cheque Especial:" id="perfilDoCliente.possuiChequeEspecial"></hermes:campoCheckBox>
				<br /><br />
				<hermes:campoCheckBox label="Possui seguro de Automóvel:" id="perfilDoCliente.possuiSeguroDeAutmovel"></hermes:campoCheckBox>
			</fieldset>
			<fieldset>
				<legend>Endereço</legend>
				<label for="endereco.tipoDeLogradouro">Tipo de Logradouro:</label>
				<select name="endereco.tipoDeLogradouro" id="endereco.tipoDeLogradouro">
					<option value=""></option>
					<c:forEach items="${tipoDeLogradouroList}" var="tipoDeLogradouro">
						<option value="${tipoDeLogradouro}">${tipoDeLogradouro.nome}</option>
					</c:forEach>
				</select>
				<br /><br />
				<label for="endereco.nomeDoLogrado">Nome do Logradouro:</label>
				<input id="endereco.nomeDoLogrado" type="text" name="endereco.nomeDoLogrado" value="${endereco.nomeDoLogrado}"  /><br /><br />
				<label for="endereco.numero">Número:</label>
				<input id="endereco.numero" type="text" name="endereco.numero" value="${endereco.numero}"  /><br /><br />
				<label for="endereco.bairro">Bairro:</label>
				<input id="endereco.bairro" type="text" name="endereco.bairro" value="${endereco.bairro}"  /><br /><br />
				<label for="endereco.cep">CEP:</label>
				<input id="endereco.cep" type="text" name="endereco.cep" value="${endereco.cep}"  /><br /><br />
				<label for="endereco.municipio">Município:</label>
				<input id="endereco.municipio" type="text" name="endereco.municipio" value="${endereco.municipio}"  /><br /><br />
				<label for="endereco.uf">UF:</label>
				<select name="endereco.uf" id="endereco.uf">
					<option value=""></option>
					<c:forEach items="${ufs}" var="uf">  
						<option value="${uf}">${uf}</option>
					</c:forEach>
				</select><br /><br />
			</fieldset>
			<br /><br />
			<button type="submit">Enviar</button>	
		</fieldset>
		
	</form>
<%@ include file="/footer.jsp" %>