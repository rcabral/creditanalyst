package br.estacio.hermes.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Conjuge {
	@Id
	@GeneratedValue
	private Long id;
	private double salario;
	@OneToOne
	private Profissao profissao;
	private Calendar dataDeEntradaNoEmpregoAtual;
	private TipoDeVinculoEmpregaticio tipoDeVinculoEmpregaticio;

	public double getSalario() {
		return salario;
	}

	public void setSalario(double salario) {
		this.salario = salario;
	}

	public Profissao getProfissao() {
		return profissao;
	}

	public void setProfissao(Profissao profissao) {
		this.profissao = profissao;
	}

	public Calendar getDataDeEntradaNoEmpregoAtual() {
		return dataDeEntradaNoEmpregoAtual;
	}

	public void setDataDeEntradaNoEmpregoAtual(
			Calendar dataDeEntradaNoEmpregoAtual) {
		this.dataDeEntradaNoEmpregoAtual = dataDeEntradaNoEmpregoAtual;
	}

	public TipoDeVinculoEmpregaticio getTipoDeVinculoEmpregaticio() {
		return tipoDeVinculoEmpregaticio;
	}

	public void setTipoDeVinculoEmpregaticio(
			TipoDeVinculoEmpregaticio tipoDeVinculoEmpregaticio) {
		this.tipoDeVinculoEmpregaticio = tipoDeVinculoEmpregaticio;
	}

}
