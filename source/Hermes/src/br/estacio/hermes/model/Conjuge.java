package br.estacio.hermes.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class Conjuge {
	@Id
	@GeneratedValue
	double salario;
	Profissao profissao;
	Calendar dataDeEntradaNoEmpregoAtual;
	TipoDeVinculoEmpregaticio  tipoDeVinculoEmpregaticio;
}
