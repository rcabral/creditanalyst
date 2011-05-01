package br.estacio.hermes.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Cliente extends PessoaFisica {
	@Id
	@GeneratedValue
	private Long id;
	@OneToOne(cascade={CascadeType.ALL})
	PerfilDoCliente perfilDoCliente;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public PerfilDoCliente getPerfilDoCliente() {
		return perfilDoCliente;
	}
	public void setPerfilDoCliente(PerfilDoCliente perfilDoCliente) {
		this.perfilDoCliente = perfilDoCliente;
	}

}
