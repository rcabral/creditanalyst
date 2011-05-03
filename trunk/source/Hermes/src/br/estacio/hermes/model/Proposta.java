package br.estacio.hermes.model;

import java.util.Calendar;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToOne;

import br.estacio.hermes.util.Util;

@Entity
public class Proposta {
	@Id
	@GeneratedValue
	private Long id;
	@OneToOne
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
		/*
		double s,p,q,valorDaPrestacao;
		long carencia = Util.diffOfDays(Calendar.getInstance(),this.dataDoPrimeiroVencimento);
		
		System.out.println("carencia :" + carencia );
		
		double taxa = this.taxaDeJuros/100;
		long x1 = carencia;
		int x2 = 30;
		double fatorAuxiliar1,fatorAuxiliar2,fatorAuxiliar3,fator;
		
		
		s = Math.pow((1 + taxa),carencia);
		
		for (int ind = 2; ind <= this.quantidadeDeParcelas ;ind++) {
			if(ind <= 12){
				s += ind * (1 + taxa);
			}else{
				s += 12 * Math.pow((1+taxa),ind + 1);  
			}
		}
		
		p = Math.pow(1+taxa,this.quantidadeDeParcelas) - 1;
		if(p==0){
			q=0;
		}else{
			q = taxa*s/p;
		}
		
		fatorAuxiliar1 = Math.pow((1 + taxa),x1/x2);
		fatorAuxiliar2 = Math.pow(taxa * (1 + taxa), this.quantidadeDeParcelas);
		fatorAuxiliar3 = (  Math.pow((1+taxa),this.quantidadeDeParcelas) -1) * (1 + taxa);
		
		
		fator = fatorAuxiliar1 * fatorAuxiliar2 / fatorAuxiliar3;
		valorDaPrestacao = this.valor * fator;
		*/
		
		valorDaPrestacao = (this.valor * (this.taxaDeJuros / 100)) / (1 - (1 / Math.pow(1+(this.taxaDeJuros/100), this.quantidadeDeParcelas)));
        return valorDaPrestacao;
	}

}
