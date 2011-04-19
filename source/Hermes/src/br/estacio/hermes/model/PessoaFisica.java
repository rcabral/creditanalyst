package br.estacio.hermes.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class PessoaFisica {
	@Id
	@GeneratedValue
	private Long id;
	String nome;
	String cpf;
	String rg;
	Calendar dataDeNascimento;
	char sexo;
}
