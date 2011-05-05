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
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = { "id","matricula" }) })
public class Funcionario extends PessoaFisica implements Autenticavel {
	@Id
	@GeneratedValue
	private Long id;
	private String matricula;
	@OneToOne(cascade = { CascadeType.ALL })
	private Endereco endereco;
	@OneToOne(cascade = { CascadeType.ALL })
	private Credencial credencial;

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

	public Credencial getCredencial() {
		return credencial;
	}

	public void setCredencial(Credencial credencial) {
		this.credencial = credencial;
	}

}
