package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class GerenteDeAnaliseDeCredito extends AnalistaDeCredito {
	@Id
	@GeneratedValue
	private Long id;

}
