package br.estacio.hermes.model;

import java.util.Calendar;

import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.MappedSuperclass;

@MappedSuperclass
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
