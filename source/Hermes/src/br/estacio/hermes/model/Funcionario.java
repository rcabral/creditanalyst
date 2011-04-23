package br.estacio.hermes.model;

import javax.persistence.CascadeType;
import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;

import org.hibernate.validator.NotNull;

@Entity
@Table( uniqueConstraints = {@UniqueConstraint(columnNames={"id", "matricula"})})
public class Funcionario extends PessoaFisica implements Autenticavel {
	@Id
	@GeneratedValue
	private Long id;
	private String matricula;
	private String login;
	private String senha;
	@OneToOne(cascade={CascadeType.ALL})
	private Endereco endereco;

	public Funcionario() {
		super();
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

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

	public boolean autentica(String login, String senha) {
		// TODO Auto-generated method stub
		return false;
	}

	
}
