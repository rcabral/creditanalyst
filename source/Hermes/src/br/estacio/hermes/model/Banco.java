package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Banco {
	@Id
	private int numero;
	private String nome;
}
