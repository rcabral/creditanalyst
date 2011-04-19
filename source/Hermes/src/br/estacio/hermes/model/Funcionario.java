package br.estacio.hermes.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Funcionario implements Autenticavel {
	@Id
	@GeneratedValue
	private Long id;
	private String matricula;
	private String login;
	private String senha;
	@OneToOne
	private Endereco endereco;

	public String getMatricula() {
		return matricula;
	}

	public void setMatricula(String matricula) {
		this.matricula = matricula;
	}

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

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Long getId() {
		return id;
	}

	public boolean autentica(String login, String senha) {
		if (this.login == login && this.senha == senha) {
			return true;
		} else {
			return false;
		}
	}

}
