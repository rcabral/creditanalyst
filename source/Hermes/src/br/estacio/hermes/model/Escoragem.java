package br.estacio.hermes.model;

import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.NotEmpty;
import org.hibernate.validator.NotNull;

@Entity
public class Escoragem {
	@Id
	@GeneratedValue
	private Long id;
	@OneToMany(cascade = { CascadeType.ALL })
	@NotNull 
	private List<RegraDeInferencia> regrasDeInferencia;
	@NotNull @NotEmpty
	private String nome;
	@NotNull @NotEmpty
	private String descricao;
	private Calendar dataDeInicioDaAmostragem;
	private Calendar dataFinalDaAmostragem;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<RegraDeInferencia> getRegrasDeInferencia() {
		return regrasDeInferencia;
	}

	public void setRegrasDeInferencia(List<RegraDeInferencia> regrasDeInferencia) {
		this.regrasDeInferencia = regrasDeInferencia;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Calendar getDataDeInicioDaAmostragem() {
		return dataDeInicioDaAmostragem;
	}

	public void setDataDeInicioDaAmostragem(Calendar dataDeInicioDaAmostragem) {
		this.dataDeInicioDaAmostragem = dataDeInicioDaAmostragem;
	}

	public Calendar getDataFinalDaAmostragem() {
		return dataFinalDaAmostragem;
	}

	public void setDataFinalDaAmostragem(Calendar dataFinalDaAmostragem) {
		this.dataFinalDaAmostragem = dataFinalDaAmostragem;
	}

}
