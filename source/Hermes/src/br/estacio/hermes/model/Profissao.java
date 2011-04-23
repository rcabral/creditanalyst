package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Profissao {
	@Id
	private Long codigoCBO;
	private String descricao;
	
	public Long getCodigoCBO() {
		return codigoCBO;
	}
	public void setCodigoCBO(Long codigoCBO) {
		this.codigoCBO = codigoCBO;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

}
