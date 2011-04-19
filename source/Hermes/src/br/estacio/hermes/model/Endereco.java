package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Endereco {
	@Id
	@GeneratedValue
	private Long id;
	@OneToOne
	Logradouro tipoDeLogradouro;
	String nomeDoLogrado;
	int numero;
	String bairro;
	String cep;
	String municipio;
	String uf;

	public Logradouro getTipoDeLogradouro() {
		return tipoDeLogradouro;
	}

	public void setTipoDeLogradouro(Logradouro tipoDeLogradouro) {
		this.tipoDeLogradouro = tipoDeLogradouro;
	}

	public String getNomeDoLogrado() {
		return nomeDoLogrado;
	}

	public void setNomeDoLogrado(String nomeDoLogrado) {
		this.nomeDoLogrado = nomeDoLogrado;
	}

	public String getBairro() {
		return bairro;
	}

	public void setBairro(String bairro) {
		this.bairro = bairro;
	}

	public String getCep() {
		return cep;
	}

	public void setCep(String cep) {
		this.cep = cep;
	}

	public String getUf() {
		return uf;
	}

	public void setUf(String uf) {
		this.uf = uf;
	}

	public Long getId() {
		return id;
	}

}
