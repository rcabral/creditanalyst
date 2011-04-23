package br.estacio.hermes.model;

import java.util.Calendar;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class PerfilDoCliente {
	@Id
	@GeneratedValue
	private Long id;
	@Enumerated(EnumType.STRING)
	private EstadoCivil estadoCivil;
	private int numeroDeDependentes;
	@OneToOne
	private NivelDeInstrucao nivelDeInstrucao;
	@OneToOne
	private Profissao profissao;
	@Enumerated(EnumType.STRING)
	private TipoDeResidencia tipoDeResidencia;
	private int tempoDeResidenciaAtualEmAnos;
	@OneToOne
	private Endereco endereco;
	@OneToMany
	private Set<BenImovel> benImoveis;
	@OneToOne
	private Telefone telefoneResidencial;
	@OneToOne
	private Telefone telefoneCelular;
	private String email;
	private int quantidadeDeVeiculos;
	private double rendaEstimada;
	private double rendaMensalComprovada;
	private double salario;
	private Calendar dataDeEntradaNoEmpregoAtual;
	private TipoDeVinculoEmpregaticio tipoDeVincluloEmpregaticio;
	@OneToOne
	private Conjuge conjuge;
	@Enumerated(EnumType.STRING)
	private TipoDeVinculoComCredor tipoDeVinculoComCredor;
	private int dataDeAberturaDaContaMaisAntiga;
	private boolean possuiChequeEspecial;
	private boolean possuiSeguroDeAutmovel;
	
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public EstadoCivil getEstadoCivil() {
		return estadoCivil;
	}
	public void setEstadoCivil(EstadoCivil estadoCivil) {
		this.estadoCivil = estadoCivil;
	}
	public int getNumeroDeDependentes() {
		return numeroDeDependentes;
	}
	public void setNumeroDeDependentes(int numeroDeDependentes) {
		this.numeroDeDependentes = numeroDeDependentes;
	}
	public NivelDeInstrucao getNivelDeInstrucao() {
		return nivelDeInstrucao;
	}
	public void setNivelDeInstrucao(NivelDeInstrucao nivelDeInstrucao) {
		this.nivelDeInstrucao = nivelDeInstrucao;
	}
	public TipoDeResidencia getTipoDeResidencia() {
		return tipoDeResidencia;
	}
	public void setTipoDeResidencia(TipoDeResidencia tipoDeResidencia) {
		this.tipoDeResidencia = tipoDeResidencia;
	}
	public int getTempoDeResidenciaAtualEmAnos() {
		return tempoDeResidenciaAtualEmAnos;
	}
	public void setTempoDeResidenciaAtualEmAnos(int tempoDeResidenciaAtualEmAnos) {
		this.tempoDeResidenciaAtualEmAnos = tempoDeResidenciaAtualEmAnos;
	}
	public Endereco getEndereco() {
		return endereco;
	}
	public void setEndereco(Endereco endereco) {
		this.endereco = endereco;
	}
	public Set<BenImovel> getBenImoveis() {
		return benImoveis;
	}
	public void setBenImoveis(Set<BenImovel> benImoveis) {
		this.benImoveis = benImoveis;
	}
	public Telefone getTelefoneResidencial() {
		return telefoneResidencial;
	}
	public void setTelefoneResidencial(Telefone telefoneResidencial) {
		this.telefoneResidencial = telefoneResidencial;
	}
	public Telefone getTelefoneCelular() {
		return telefoneCelular;
	}
	public void setTelefoneCelular(Telefone telefoneCelular) {
		this.telefoneCelular = telefoneCelular;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getQuantidadeDeVeiculos() {
		return quantidadeDeVeiculos;
	}
	public void setQuantidadeDeVeiculos(int quantidadeDeVeiculos) {
		this.quantidadeDeVeiculos = quantidadeDeVeiculos;
	}
	public double getRendaEstimada() {
		return rendaEstimada;
	}
	public void setRendaEstimada(double rendaEstimada) {
		this.rendaEstimada = rendaEstimada;
	}
	public double getRendaMensalComprovada() {
		return rendaMensalComprovada;
	}
	public void setRendaMensalComprovada(double rendaMensalComprovada) {
		this.rendaMensalComprovada = rendaMensalComprovada;
	}
	public double getSalario() {
		return salario;
	}
	public void setSalario(double salario) {
		this.salario = salario;
	}
	public Calendar getDataDeEntradaNoEmpregoAtual() {
		return dataDeEntradaNoEmpregoAtual;
	}
	public void setDataDeEntradaNoEmpregoAtual(Calendar dataDeEntradaNoEmpregoAtual) {
		this.dataDeEntradaNoEmpregoAtual = dataDeEntradaNoEmpregoAtual;
	}
	public TipoDeVinculoEmpregaticio getTipoDeVincluloEmpregaticio() {
		return tipoDeVincluloEmpregaticio;
	}
	public void setTipoDeVincluloEmpregaticio(
			TipoDeVinculoEmpregaticio tipoDeVincluloEmpregaticio) {
		this.tipoDeVincluloEmpregaticio = tipoDeVincluloEmpregaticio;
	}
	public Conjuge getConjuge() {
		return conjuge;
	}
	public void setConjuge(Conjuge conjuge) {
		this.conjuge = conjuge;
	}
	public TipoDeVinculoComCredor getTipoDeVinculoComCredor() {
		return tipoDeVinculoComCredor;
	}
	public void setTipoDeVinculoComCredor(
			TipoDeVinculoComCredor tipoDeVinculoComCredor) {
		this.tipoDeVinculoComCredor = tipoDeVinculoComCredor;
	}
	public int getDataDeAberturaDaContaMaisAntiga() {
		return dataDeAberturaDaContaMaisAntiga;
	}
	public void setDataDeAberturaDaContaMaisAntiga(
			int dataDeAberturaDaContaMaisAntiga) {
		this.dataDeAberturaDaContaMaisAntiga = dataDeAberturaDaContaMaisAntiga;
	}
	public boolean isPossuiChequeEspecial() {
		return possuiChequeEspecial;
	}
	public void setPossuiChequeEspecial(boolean possuiChequeEspecial) {
		this.possuiChequeEspecial = possuiChequeEspecial;
	}
	public boolean isPossuiSeguroDeAutmovel() {
		return possuiSeguroDeAutmovel;
	}
	public void setPossuiSeguroDeAutmovel(boolean possuiSeguroDeAutmovel) {
		this.possuiSeguroDeAutmovel = possuiSeguroDeAutmovel;
	}

	
}
