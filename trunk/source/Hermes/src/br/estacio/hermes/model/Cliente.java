package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Cliente extends PessoaFisica {
	@Id
	@GeneratedValue
	private Long id;
	@OneToOne
	PerfilDoCliente perfilDoCliente;
}
