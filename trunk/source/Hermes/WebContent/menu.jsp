<div id="menu">
	<!--
Na classe submenu deverão ser informadas as opções do menu horizontal (barra de menu).
Na classe menu deverão ser informadas as opções do menu vertical.
Para inserir mais um nível deve-se alterar a classe "item" para "submenu" e adicionar outra lista de classe "menu" nela.
-->
	<ul id="menu_dropdown" class="menubar">

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
				<li class="item"><a
					href="<c:url value="/propostas/formulario"/>">Nova</a>
				</li>
			</ul>
		</li>
		<li class="submenu"><a href="#">Parametrizações</a>
			<ul class="menu">
				<li class="submenu"><a href="#">Funcionários</a>
					<ul class="menu">
						<li class="item"><a href="<c:url value="/funcionarios/lista"/>">Lista</a>
						</li>
						<li class="item"><a
							href="<c:url value="/funcionarios/formulario"/>">Nova</a>
						</li>
					</ul>
				</li>
				<li class="submenu"><a href="#">Profissões</a>
					<ul class="menu">
						<li class="item"><a href="<c:url value="/profissoes/lista"/>">Lista</a>
						</li>
						<li class="item"><a
							href="<c:url value="/profissoes/formulario"/>">Nova</a>
						</li>
					</ul>
				</li>
				<li class="submenu"><a href="#">Bancos</a>
					<ul class="menu">
						<li class="item"><a href="<c:url value="/bancos/lista"/>">Lista</a>
						</li>
						<li class="item"><a
							href="<c:url value="/bancos/formulario"/>">Novo</a>
						</li>
					</ul>
				</li>
			</ul>
		</li>
	</ul>
</div>