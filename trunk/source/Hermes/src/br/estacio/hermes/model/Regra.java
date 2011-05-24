package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import org.hibernate.validator.NotEmpty;
import org.hibernate.validator.NotNull;

@Entity
public class Regra {
	@Id
	@GeneratedValue
	private Long id;
	@NotEmpty
	@NotNull
	private String nome;
	@NotEmpty
	@NotNull
	private String pergunta;
	@NotNull
	private boolean possuiResposta;
	@Enumerated(EnumType.STRING)
	private TipoDeResposta tipoDeResposta;

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

	public TipoDeResposta getTipoDeResposta() {
		return tipoDeResposta;
	}

	public void setTipoDeResposta(TipoDeResposta tipoDeResposta) {
		this.tipoDeResposta = tipoDeResposta;
	}

}
