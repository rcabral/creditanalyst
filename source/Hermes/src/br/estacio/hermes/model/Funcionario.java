package br.estacio.hermes.model;

import javax.persistence.CascadeType;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Inheritance;
import javax.persistence.InheritanceType;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.UniqueConstraint;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

import br.estacio.hermes.interceptor.Credencial;
import br.estacio.hermes.util.Md5;

@Entity
@Table(name = "Funcionario", uniqueConstraints = { @UniqueConstraint(columnNames = {
		"id", "matricula" }) })
@Inheritance(strategy = InheritanceType.JOINED)
public class Funcionario extends PessoaFisica {
	@Id
	@GeneratedValue
	private Long id;
	private String matricula;
	@NotNull(message="{validator.notEmpty}")
	@OneToOne(cascade = { CascadeType.ALL })
	private Endereco endereco;
	@NotNull(message="{validator.notEmpty}")
	@Enumerated(EnumType.STRING)
	private Cargo cargo;
	@NotEmpty(message="{validator.notEmpty}")
	private String login;
	@NotEmpty(message="{validator.notEmpty}")
	private String senha;

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

	public Endereco getEndereco() {
		return endereco;
	}

	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}

	public Cargo getCargo() {
		return cargo;
	}

	public void setCargo(Cargo cargo) {
		this.cargo = cargo;
	}

	public String getLogin() {
		return login;
	}

	public void setLogin(String login) {
		this.login = login;
	}

	public String getSenha() {
		return this.senha;
	}

	public void setSenha(String senha) {
		this.senha = Md5.md5(senha);
	}
}
