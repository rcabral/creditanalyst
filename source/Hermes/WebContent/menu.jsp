<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="menu">
	<!--
Na classe submenu dever�o ser informadas as op��es do menu horizontal (barra de menu).
Na classe menu dever�o ser informadas as op��es do menu vertical.
Para inserir mais um n�vel deve-se alterar a classe "item" para "submenu" e adicionar outra lista de classe "menu" nela.
-->
	<ul id="menu_dropdown" class="menubar">

		<li class="submenu"><a 
					href="<c:url value="/main/main"/>">Principal</a>
		</li>
		<li class="submenu"><a href="#">Clientes</a>
			<ul class="menu">
				<li class="item"><a href="<c:url value="/clientes/lista"/>">Lista</a>
				</li>
				<li class="item"><a
					href="<c:url value="/clientes/formulario"/>">Novo</a>
				</li>
			</ul>
		</li>
		<li class="submenu"><a href="#">Propostas</a>
			<ul class="menu">
				<li class="item"><a href="<c:url value="/propostas/lista"/>">Lista</a>
				</li>
			</ul>
		</li>
		<c:if test="${userInfo.user.cargo=='GERENTE_DE_ANALISE_DE_CREDITO' || userInfo.user.cargo=='ANALISTA_DE_CREDITO'  }">
			<li class="submenu"><a href="#">Relat�rios</a>
				<ul class="menu">
					<li class="item"><a href="<c:url value="/clientes/lista"/>">An�lise de Cr�dito</a>
					</li>
					<li class="item"><a
						href="<c:url value="/clientes/formulario"/>">Vendas</a>
					</li>
				</ul>
			</li>
		</c:if>
		<c:if test="${userInfo.user.cargo=='GERENTE_DE_ANALISE_DE_CREDITO' || userInfo.user.cargo=='ANALISTA_DE_CREDITO'  }">
			<li class="submenu"><a href="#">Parametriza��es</a>
				<ul class="menu">
					<c:if test="${userInfo.user.cargo=='GERENTE_DE_ANALISE_DE_CREDITO'}">
					<li class="submenu"><a href="#">Funcion�rios</a>
						<ul class="menu">
							<li class="item"><a href="<c:url value="/funcionarios/lista"/>">Lista</a>
							</li>
							<li class="item"><a
								href="<c:url value="/funcionarios/formulario"/>">Novo</a>
							</li>
						</ul>
					</li>
					</c:if>	
					<c:if test="${userInfo.user.cargo=='GERENTE_DE_ANALISE_DE_CREDITO' || userInfo.user.cargo=='ANALISTA_DE_CREDITO'  }">
						<li class="submenu"><a href="#">Profiss�es</a>
							<ul class="menu">
								<li class="item"><a href="<c:url value="/profissoes/lista"/>">Lista</a>
								</li>
								<li class="item"><a
									href="<c:url value="/profissoes/novo"/>">Nova</a>
								</li>
							</ul>
						</li>
					</c:if>	
					<c:if test="${userInfo.user.cargo=='GERENTE_DE_ANALISE_DE_CREDITO' || userInfo.user.cargo=='ANALISTA_DE_CREDITO'  }">
						<li class="submenu"><a href="#">Bancos</a>
							<ul class="menu">
								<li class="item"><a href="<c:url value="/bancos/lista"/>">Lista</a>
								</li>
								<li class="item"><a
									href="<c:url value="/bancos/formulario"/>">Novo</a>
								</li>
							</ul>
						</li>
					</c:if>	
					<c:if test="${userInfo.user.cargo=='GERENTE_DE_ANALISE_DE_CREDITO'}">
						<li class="submenu"><a href="#">Regras</a>
							<ul class="menu">
								<li class="item"><a href="<c:url value="/regras/lista"/>">Lista</a>
								</li>
								<li class="item"><a
									href="<c:url value="/regras/formulario"/>">Nova</a>
								</li>
							</ul>
						</li>
					</c:if>	
					<c:if test="${userInfo.user.cargo=='GERENTE_DE_ANALISE_DE_CREDITO'}">
						<li class="submenu"><a href="#">M�todo de Escoragem</a>
							<ul class="menu">
								<li class="item"><a href="<c:url value="/escoragens/lista"/>">Lista</a>
								</li>
								<li class="item"><a
									href="<c:url value="/escoragens/formulario"/>">Novo</a>
								</li>
							</ul>
						</li>
					</c:if>
				</ul>
			</li>
		</c:if>
		<li class="submenu"><a 
					href="<c:url value="/authentication/logout"/>">Sair</a>
		</li>
	</ul>
</div>



