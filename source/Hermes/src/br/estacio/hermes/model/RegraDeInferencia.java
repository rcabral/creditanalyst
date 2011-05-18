package br.estacio.hermes.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class RegraDeInferencia{
	@Id
	@GeneratedValue
	private Long id;
	private String logica;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getLogica() {
		return logica;
	}
	public void setLogica(String logica) {
		this.logica = logica;
	}
}
