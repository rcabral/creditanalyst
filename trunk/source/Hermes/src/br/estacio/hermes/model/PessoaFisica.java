package br.estacio.hermes.model;

import java.util.Calendar;

import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.MappedSuperclass;

import org.hibernate.validator.constraints.NotEmpty;

import br.com.caelum.stella.bean.validation.CPF;

//import javax.validation.constraints.NotNull;




@MappedSuperclass
public abstract class PessoaFisica {
	private String nome;
	@NotEmpty @CPF
	private String cpf;
	private String rg;
	private Calendar dataDeNascimento;
	@Enumerated(EnumType.STRING)
	private Sexo sexo;

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) {
		this.cpf = cpf;
	}

	public String getRg() {
		return rg;
	}

	public void setRg(String rg) {
		this.rg = rg;
	}

	public Calendar getDataDeNascimento() {
		return dataDeNascimento;
	}

	public void setDataDeNascimento(Calendar dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}

	public Sexo getSexo() {
		return sexo;
	}

	public void setSexo(Sexo sexo) {
		this.sexo = sexo;
	}

}
