package br.estacio.hermes.model;

import br.com.caelum.vraptor.ioc.Component;

@Component
public class Credencial {
	private String login;
	private String senha;

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return senha;
	}

	public void setSenha(String senha) {
		this.senha = senha;
	}

}
