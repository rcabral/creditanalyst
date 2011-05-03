package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.Id;

import org.hibernate.validator.NotEmpty;
import org.hibernate.validator.NotNull;

@Entity
public class Profissao {
	@Id @NotEmpty
	private Long codigoCBO;
	@NotEmpty
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
