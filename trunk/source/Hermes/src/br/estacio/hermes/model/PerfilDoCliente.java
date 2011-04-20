package br.estacio.hermes.model;

import java.util.Calendar;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

import br.com.caelum.vraptor.mydvds.model.DvdRental;

@Entity
public class PerfilDoCliente {
	@Id
	@GeneratedValue
	private Long id;
	@Enumerated(EnumType.STRING)
	private EstadoCivil estadoCivil;
	private int numeroDeDependentes;
	private NivelDeInstrucao nivelDeInstrucao;
	private Profissao profissao;
	private TipoDeResidencia tipoDeResidencia;
	private int tempoDeResidenciaAtualEmAnos;
	private Endereco endereco;
	private Set<BenImovel> benImoveis;
	private  Telefone telefoneResidencial;
	private Telefone telefoneCelular;
	private String email;
	private int quantidadeDeVeiculos;
	private double rendaEstimada;
	private double rendaMensalComprovada;
	private double salario;
	private Calendar dataDeEntradaNoEmpregoAtual;
	private TipoDeVinculoEmpregaticio tipoDeVincluloEmpregaticio;
	private Conjuge conjuge;
	private TipoDeVinculoComCredor tipoDeVinculoComCredor; 
	private int idadeDaContaMaisAntigaEmAnos;
	private boolean possuiChequeEspecial;
	private boolean possuiSeguroDeAutmovel;
	private Conta contaDoPagamento;
	
	public int getNumeroDeDependentes() {
		return numeroDeDependentes;
	}

	public void setNumeroDeDependentes(int numeroDeDependentes) {
		this.numeroDeDependentes = numeroDeDependentes;
	}

	public int getTempoDeResidenciaAtualEmAnos() {
		return tempoDeResidenciaAtualEmAnos;
	}

	public void setTempoDeResidenciaAtualEmAnos(int tempoDeResidenciaAtualEmAnos) {
		this.tempoDeResidenciaAtualEmAnos = tempoDeResidenciaAtualEmAnos;
	}

	public Long getId() {
		return id;
	}

	

}
