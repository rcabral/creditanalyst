package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class AnalistaDeCredito extends Funcionario {
	@Id
	@GeneratedValue
	private Long id;
}
