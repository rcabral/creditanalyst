package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class BenImovel {
	@Id
	@GeneratedValue
	private Long id;
	private double valor;
	private boolean possuiOnus;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public boolean isPossuiOnus() {
		return possuiOnus;
	}

	public void setPossuiOnus(boolean possuiOnus) {
		this.possuiOnus = possuiOnus;
	}
}
