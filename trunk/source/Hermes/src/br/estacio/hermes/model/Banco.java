package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Banco {
	@Id
	@NotNull(message="{validator.notEmpty}")
	private Long numero;
	@NotEmpty(message="{validator.notEmpty}")
	private String nome;

	public Long getNumero() {
		return numero;
	}

	public void setNumero(Long numero) {
		this.numero = numero;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

}
