package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Telefone {
	@Id
	@GeneratedValue
	private long id;
	private String ddd;
	private String numero;
}
