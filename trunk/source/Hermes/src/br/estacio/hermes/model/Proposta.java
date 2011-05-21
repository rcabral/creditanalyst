package br.estacio.hermes.model;

import java.math.BigDecimal;
import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import org.hibernate.validator.NotNull;



import br.estacio.hermes.util.Util;

@Entity
public class Proposta {
	@Id
	@GeneratedValue
	private Long id;
	@OneToOne @NotNull
	private Cliente cliente;
	private Calendar data;
	@Enumerated(EnumType.STRING)
	private Status status;
	private Calendar dataDeAprovacao;
	private Calendar dataDoPrimeiroVencimento;
	private double valor;
	private double taxaDeJuros;
	private int quantidadeDeParcelas;
	private double valorDaPrestacao;
	
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

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

	public Calendar getDataDoPrimeiroVencimento() {
		return dataDoPrimeiroVencimento;
	}

	public void setDataDoPrimeiroVencimento(Calendar dataDoPrimeiroVencimento) {
		this.dataDoPrimeiroVencimento = dataDoPrimeiroVencimento;
	}

	public double calculaPrestacao(){
		int carencia = Util.diffOfDays(Calendar.getInstance(),this.dataDoPrimeiroVencimento);
		
		double fator;
		int x1 = carencia;
		int x2 = 30;
		double taxa = this.taxaDeJuros/100;
				
		fator = Math.pow(1 + taxa,x1/x2) * (taxa * Math.pow((1 + taxa),this.quantidadeDeParcelas)) / ( Math.pow(1 + taxa, this.quantidadeDeParcelas) - 1 ) * ( 1 + taxa)  ;
		valorDaPrestacao = this.valor * fator;
		
		return valorDaPrestacao;
	}

}
