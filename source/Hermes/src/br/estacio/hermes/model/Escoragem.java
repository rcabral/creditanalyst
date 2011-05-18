package br.estacio.hermes.model;

import java.util.List;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;

public class Escoragem{
	@Id
	@GeneratedValue
	private Long id;
	private List<RegraDeInferencia> regrasDeInferencia; 
	private String nome;
	private String descricao;
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
	
	
}
