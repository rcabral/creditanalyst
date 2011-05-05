package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Plano {
	@Id
	@GeneratedValue
	private Long id;
	private int quantidadeDePrestacoes;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public int getQuantidadeDePrestacoes() {
		return quantidadeDePrestacoes;
	}

	public void setQuantidadeDePrestacoes(int quantidadeDePrestacoes) {
		this.quantidadeDePrestacoes = quantidadeDePrestacoes;
	}
}
