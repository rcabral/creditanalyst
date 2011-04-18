package br.estacio.hermes.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;


@Entity
public class Endereco {
	@Id
	@GeneratedValue
	private Long id;
	//Logradouro logradouro;
	String nomeDeLogrado;
	String bairro;
	String cep;
	String uf;
	
	

}
