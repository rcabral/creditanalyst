package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import br.estacio.hermes.util.Md5;



@Entity
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = { "id", "login" }) })
public class Credencial {
	@Id
	@GeneratedValue
	private Long id;
	private String login;
	private String senha;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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
		this.senha = Md5.md5(senha);;
	}

}
