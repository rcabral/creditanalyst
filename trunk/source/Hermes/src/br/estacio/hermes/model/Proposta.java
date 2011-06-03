package br.estacio.hermes.model;

import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

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
	@OneToOne
	@NotNull
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

	@Campo(nome = "Quantidade de Parcelas")
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

	public double calculaPrestacao() {
		int carencia = Util.diffOfDays(Calendar.getInstance(),
				this.dataDoPrimeiroVencimento);

		double fator;
		int x1 = carencia;
		int x2 = 30;
		double taxa = this.taxaDeJuros / 100;

		fator = Math.pow(1 + taxa, x1 / x2)
				* (taxa * Math.pow((1 + taxa), this.quantidadeDeParcelas))
				/ (Math.pow(1 + taxa, this.quantidadeDeParcelas) - 1)
				* (1 + taxa);
		valorDaPrestacao = this.valor * fator;

		return valorDaPrestacao;
	}

	public List<Metodo> getCampos() {
		List<Metodo> campos = new ArrayList();
		Metodo metodo;
		for (Method method : Proposta.class.getDeclaredMethods()) {
			for (Annotation annotation : method.getAnnotations()) {
				if (annotation instanceof Campo) {
					metodo = new Metodo();
					metodo.setNome(((Campo) annotation).nome());
					metodo.setMetodo(method.getName());
					campos.add(metodo);
				}
			}

		}
		return campos;
	}

	@Campo(nome = "Idade")
	public int getIdade() {
		Calendar startDate = Calendar.getInstance();
		Calendar endDate = this.cliente.getDataDeNascimento();
		return Util.diffOfYears(startDate,endDate);
	}
	
	@Campo(nome = "Sexo")
	public double getSexo() {
		return this.cliente.getSexo().ordinal();
	}

	@Campo(nome = "Comprometimento da Renda")
	public double getPorcentagemDeComprometimentoDaRenda() {
		return (this.valorDaPrestacao * 100)/this.cliente.perfilDoCliente.getRendaMensalComprovada();
	}
	
	@Campo(nome = "Estado Civil")
	public double getEstadoCivil() {
		return this.cliente.getPerfilDoCliente().getEstadoCivil().ordinal();
	}
	
	@Campo(nome = "Número de dependentes")
	public int getNumeroDeDependentes() {
		return this.cliente.getPerfilDoCliente().getNumeroDeDependentes();
	}
	
	@Campo(nome = "Nível de Instrução")
	public double setNivelDeInstrucao(NivelDeInstrucao nivelDeInstrucao) {
		return this.cliente.getPerfilDoCliente().getNivelDeInstrucao().ordinal();
	}
	
	@Campo(nome = "Profissão")
	public double getProfissao() {
		return this.cliente.getPerfilDoCliente().getProfissao().getCodigoCBO();
	}
	
	@Campo(nome = "Tipo de Residencia")
	public double getTipoDeResidencia() {
		return this.cliente.getPerfilDoCliente().getTipoDeResidencia().ordinal();
	}
	
	@Campo(nome = "Tempo de Residencia em Anos")
	public int getTempoDeResidenciaAtualEmAnos() {
		return this.cliente.getPerfilDoCliente().getTempoDeResidenciaAtualEmAnos();
	}
	
	@Campo(nome = "Quantidade de Veículos")
	public int getQuantidadeDeVeiculos() {
		return this.cliente.getPerfilDoCliente().getQuantidadeDeVeiculos();
	}
	
	@Campo(nome = "Tipo de Vínculo com o Credor")
	public double getTipoDeVinculoComCredor() {
		return this.cliente.getPerfilDoCliente().getTipoDeVinculoComCredor().ordinal();
	}
	
	@Campo(nome = "Cheque Especial")
	public double isPossuiChequeEspecial() {
		if(this.cliente.getPerfilDoCliente().isPossuiChequeEspecial()){
			return 1;
		}else{
			return 0;
		}
	}
	
	@Campo(nome = "Seguto de Automóvel")
	public double isPossuiSeguroDeAutmovel() {
		if(this.cliente.getPerfilDoCliente().isPossuiSeguroDeAutmovel()){
			return 1;
		}else{
			return 0;
		}
	}
	
	@Campo(nome = "Valor Total de bens imóveis")
	public double getValorTotalDeBensImoveis() {
		List<BenImovel> bensImoveis = this.cliente.getPerfilDoCliente().getBensImoveis();
		double valorTotal = 0;
		for (BenImovel benImovel : bensImoveis) {
			valorTotal+=benImovel.getValor();
		}
		return valorTotal;
	}
	
	@Campo(nome = "Porcentagem de ônus nos Bens Imóveis")
	public double getPorcentagemDeOnusNosBensImoveis() {
		List<BenImovel> bensImoveis = this.cliente.getPerfilDoCliente().getBensImoveis();
		double valorTotal = 0;
		int quantidadeDeBensImoveis = bensImoveis.size();
		int quantidadeDeOnus = 0;
		for (BenImovel benImovel : bensImoveis) {
			if(benImovel.isPossuiOnus()){
				quantidadeDeOnus+= 1;
			}
		}
		return (quantidadeDeOnus * 100)/quantidadeDeBensImoveis;
	}
	
	@Campo(nome = "Renda de Reserva")
	public double getRendaDeReserva(){
		return this.cliente.getPerfilDoCliente().getRendaMensalComprovada() - this.getValorDaPrestacao();
	}
}
