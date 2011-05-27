<%@ include file="/header.jsp" %>
<script type="text/javascript" src="<c:url value="/js/escoragensFormulario.js"/>"  ></script> 
<style type="text/css">
<!--
@import url("<c:url value="/css/escoragensFormulario.css"/>");
-->
</style>

	<form id="formEscoragem" <c:choose><c:when test='${escoragem.id == null}'>action="adiciona"</c:when><c:otherwise>action="altera"</c:otherwise></c:choose> method="post" >
		<input type="hidden" name="escoragem.id"  value="${escoragem.id}" />
		<fieldset>
			<legend>Método de Escoragem</legend>
			<fieldset>
				<legend>Identificação</legend>
				<hermes:campoTexto label="Nome:" id="escoragem.nome" value="${escoragem.nome}"></hermes:campoTexto>
				<br /><br />
				<hermes:campoTexto label="Descrição:" id="escoragem.descricao" value="${escoragem.descricao}"></hermes:campoTexto>
				<br /><br />
			</fieldset>	
			<fieldset>
				<legend>Amostragem de Treino</legend>
				<fieldset>
				<legend>Data de Início</legend>
				<fmt:formatDate value="${escoragem.dataDeInicioDaAmostragem.time}" var="dataDeInicioDaAmostragem" pattern="dd/MM/yyyy"/>
				<hermes:campoData label="Data: " id="escoragem.dataDeInicioDaAmostragem" value="${dataDeInicioDaAmostragem}"></hermes:campoData>
				</fieldset>
				<fieldset>
				<legend>Data de Fim</legend>
				<fmt:formatDate value="${escoragem.dataFinalDaAmostragem.time}" var="dataFinalDaAmostragem" pattern="dd/MM/yyyy"/>
				<hermes:campoData label="Data: " id="escoragem.dataFinalDaAmostragem" value="${dataFinalDaAmostragem}"></hermes:campoData>
				</fieldset>
			</fieldset>	
			<fieldset>
				<legend>Regras</legend>
				<label>Incluir Regra:</label> <input type="button" id="btnIncluiRegra" value="+" />
				<br /><br />
				<div id="divRegras">
					<c:forEach items="${escoragem.regrasDeInferencia}" var="regraDeInferencia" varStatus="s">
						<div class="divRegra"> 
							<input type="button" class="btnRemoveRegra" value="-" />
							<label for="escoragem.regrasDeInferencia[${s.index}].regra.id">Regra:</label>
							<select name="escoragem.regrasDeInferencia[${s.index}].regra.id" id="escoragem.regrasDeInferencia[${s.index}].regra.id" class="comboRegra">
							 	<option value=""></option>
								<c:forEach items="${regraList}" var="regra">
												<option value="${regra.id}" possuiResposta="${regra.possuiResposta}" <c:if test="${escoragem.regrasDeInferencia[s.index].regra.id==regra.id}">selected="selected"</c:if>>${regra.pergunta}</option>
								</c:forEach>
							</select>
							<c:if test="${escoragem.regrasDeInferencia[s.index].regra.possuiResposta}">
								<div class="atrivutosDeResposta" style="display: inline;">
									<label for="escoragem.regrasDeInferencia[${s.index}].comparador">Comparador:</label>
									<select name="escoragem.regrasDeInferencia[${s.index}].comparador" id="escoragem.regrasDeInferencia[${s.index}].comparador">
										<option value=""></option>
										<c:forEach items="${comparadorList}" var="comparador">
												<option value="${comparador}" <c:if test="${escoragem.regrasDeInferencia[s.index].comparador==comparador}">selected="selected"</c:if>>${comparador.nome}</option>
										</c:forEach>
									</select>
									<label for="">Resposta:</label>
									<input type="text" id="escoragem.regrasDeInferencia[${s.index}].resposta" name="escoragem.regrasDeInferencia[${s.index}].resposta" class="texto" value="${escoragem.regrasDeInferencia[s.index].resposta}" />
								</div>
							</c:if>
						</div>
					</c:forEach>
				</div>
				<div id="divOptions">
					<div id="divOptionsRegras">
						<option value=""></option>
						<c:forEach items="${regraList}" var="regra">
										<option value="${regra.id}" possuiResposta="${regra.possuiResposta}" >${regra.pergunta}</option>
						</c:forEach>
					</div>
					<div id="divOptionsComparador">
						<option value=""></option>
						<c:forEach items="${comparadorList}" var="comparador">
								<option value="${comparador}" >${comparador.nome}</option>
						</c:forEach>
					</div>
				</div>
			</fieldset>
			<button type="submit">Treinar Rede e Salvar</button>	
		</fieldset>
	</form>
<%@ include file="/footer.jsp" %>