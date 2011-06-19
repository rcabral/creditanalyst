package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
//import javax.validation.constraints.NotNull;


@Entity
public class Profissao {
	@Id
	@NotNull(message="{validator.notEmpty}")
	private Long codigoCBO;
	@NotEmpty(message="{validator.notEmpty}")
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
