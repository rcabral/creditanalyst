package br.estacio.hermes.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

@Entity
public class Proposta {
	@Id
	@GeneratedValue
	private Long id;
	@OneToOne
	private Cliente cliente;
	private Calendar data;
	@OneToOne
	private Status status;
	private Calendar dataDeAprovacao;
	private double valor;
	private double taxaDeJuros;
	private int quantidadeDeParcelas;
	private double valorDaPrestacao;

	public Cliente getCliente() {
		return cliente;
	}

	public void setCliente(Cliente cliente) {
		this.cliente = cliente;
	}

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public Status getStatus() {
		return status;
	}

	public void setStatus(Status status) {
		this.status = status;
	}

	public Calendar getDataDeAprovacao() {
		return dataDeAprovacao;
	}

	public void setDataDeAprovacao(Calendar dataDeAprovacao) {
		this.dataDeAprovacao = dataDeAprovacao;
	}

	public double getValor() {
		return valor;
	}

	public void setValor(double valor) {
		this.valor = valor;
	}

	public double getTaxaDeJuros() {
		return taxaDeJuros;
	}

	public void setTaxaDeJuros(double taxaDeJuros) {
		this.taxaDeJuros = taxaDeJuros;
	}

	public int getQuantidadeDeParcelas() {
		return quantidadeDeParcelas;
	}

	public void setQuantidadeDeParcelas(int quantidadeDeParcelas) {
		this.quantidadeDeParcelas = quantidadeDeParcelas;
	}

	public double getValorDaPrestacao() {
		return valorDaPrestacao;
	}

	public void setValorDaPrestacao(double valorDaPrestacao) {
		this.valorDaPrestacao = valorDaPrestacao;
	}

	public Long getId() {
		return id;
	}

}
