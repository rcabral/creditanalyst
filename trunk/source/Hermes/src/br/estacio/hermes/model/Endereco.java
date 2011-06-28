package br.estacio.hermes.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;

@Entity
public class Endereco {
	@Id
	@GeneratedValue
	private Long id;
	@Enumerated(EnumType.STRING)
	@NotNull(message="{validator.notEmpty}")
	private TipoDeLogradouro tipoDeLogradouro;
	@NotEmpty(message = "{validator.notEmpty}")
	private String nomeDoLogrado;
	@NotNull(message="{validator.notEmpty}")
	private int numero;
	@NotEmpty(message = "{validator.notEmpty}")
	private String bairro;
	@NotEmpty(message = "{validator.notEmpty}")
	private String cep;
	@NotEmpty(message = "{validator.notEmpty}")
	private String municipio;
	@NotNull(message="{validator.notEmpty}")
	@Enumerated(EnumType.STRING)
	private Uf uf;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

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

	public Uf getUf() {
		return uf;
	}

	public void setUf(Uf uf) {
		this.uf = uf;
	}

}
