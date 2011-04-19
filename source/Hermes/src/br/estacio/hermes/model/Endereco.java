package br.estacio.hermes.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Endereco {
	@Id
	@GeneratedValue
	private Long id;
	@OneToOne(cascade={CascadeType.ALL})
	TipoDeLogradouro tipoDeLogradouro;
	String nomeDoLogrado;
	int numero;
	String bairro;
	String cep;
	String municipio;
	String uf;
	public TipoDeLogradouro getTipoDeLogradouro() {
		return tipoDeLogradouro;
	}
	public void setTipoDeLogradouro(TipoDeLogradouro tipoDeLogradouro) {
		this.tipoDeLogradouro = tipoDeLogradouro;
	}
	public String getNomeDoLogrado() {
		return nomeDoLogrado;
	}
	public void setNomeDoLogrado(String nomeDoLogrado) {
		this.nomeDoLogrado = nomeDoLogrado;
	}
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
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
	public String getMunicipio() {
		return municipio;
	}
	public void setMunicipio(String municipio) {
		this.municipio = municipio;
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
