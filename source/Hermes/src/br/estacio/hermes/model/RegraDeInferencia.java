package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.NotNull;

@Entity
public class RegraDeInferencia {
	@Id
	@GeneratedValue
	private Long id;
	@OneToOne @NotNull
	private Regra regra;
	@Enumerated(EnumType.STRING)
	private Comparador comparador;
	private double resposta;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Regra getRegra() {
		return regra;
	}

	public void setRegra(Regra regra) {
		this.regra = regra;
	}

	public Comparador getComparador() {
		return comparador;
	}

	public void setComparador(Comparador comparador) {
		this.comparador = comparador;
	}

	public double getResposta() {
		return resposta;
	}

	public void setResposta(double resposta) {
		this.resposta = resposta;
	}
}
