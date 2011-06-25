package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
//import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.NotEmpty;


@Entity
public class Regra {
	@Id
	@GeneratedValue
	private Long id;
	@NotEmpty(message="{validator.notEmpty}")
	private String nome;
	@NotEmpty(message="{validator.notEmpty}")
	private String pergunta;
	@NotEmpty(message="{validator.select}")
	private String metodo;
	@NotNull
	private boolean possuiResposta;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getPergunta() {
		return pergunta;
	}

	public void setPergunta(String pergunta) {
		this.pergunta = pergunta;
	}

	public boolean isPossuiResposta() {
		return possuiResposta;
	}

	public void setPossuiResposta(boolean possuiResposta) {
		this.possuiResposta = possuiResposta;
	}

	public String getMetodo() {
		return metodo;
	}

	public void setMetodo(String metodo) {
		this.metodo = metodo;
	}

}
