package br.estacio.hermes.model;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

@Entity
public class Contrato {
	@Id
	@GeneratedValue
	private Long id;
	private Calendar data;
	@OneToOne
	private Proposta proposta;
	@OneToMany(cascade = { CascadeType.ALL })
	private List<Prestacao> prestacoes;

	public Calendar getData() {
		return data;
	}

	public void setData(Calendar data) {
		this.data = data;
	}

	public Proposta getProposta() {
		return proposta;
	}

	public void setProposta(Proposta proposta) {
		this.proposta = proposta;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<Prestacao> getPrestacoes() {
		return prestacoes;
	}

	public void setPrestacoes(List<Prestacao> prestacoes) {
		this.prestacoes = prestacoes;
	}

	public int getNumeroDePrestacoesEmAtraso() {
		int numeroDePrestacoesEmAtraso = 0;
		for (Prestacao prestacao : this.prestacoes) {
			Calendar dataDeVencimento = prestacao.getDataDeVencimento();
			Calendar dataDePagamento = prestacao.getDataDePagamento();
			Calendar hoje = Calendar.getInstance();

			if (dataDePagamento == null && dataDeVencimento.after(hoje)) {
				numeroDePrestacoesEmAtraso++;
			}
		}
		return numeroDePrestacoesEmAtraso;
	}

	public List<Prestacao> getPrestacoesEmAtraso() {
		List<Prestacao> prestacoes = new ArrayList<Prestacao>();
		for (Prestacao prestacao : this.prestacoes) {
			Calendar dataDeVencimento = prestacao.getDataDeVencimento();
			Calendar dataDePagamento = prestacao.getDataDePagamento();
			Calendar hoje = Calendar.getInstance();
			if (dataDePagamento == null && dataDeVencimento.after(hoje)) {
				prestacoes.add(prestacao);
			}
		}
		return prestacoes;
	}
	
	public boolean temPrestacoesEmAtraso(){
		return this.getPrestacoesEmAtraso() != null;
	}

}
