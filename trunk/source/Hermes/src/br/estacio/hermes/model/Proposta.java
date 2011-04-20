package br.estacio.hermes.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Proposta {
	@Id
	@GeneratedValue
	private Long id;
	Calendar data;
	Calendar dataDeAprovacao;
	

}
