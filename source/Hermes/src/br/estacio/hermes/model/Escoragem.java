package br.estacio.hermes.model;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import org.hibernate.validator.NotEmpty;
import org.hibernate.validator.NotNull;

@Entity
public class Escoragem {
	@Id
	@GeneratedValue
	private Long id;
	@OneToMany(cascade = { CascadeType.ALL })
	@NotNull 
	private List<RegraDeInferencia> regrasDeInferencia;
	@NotNull @NotEmpty
	private String nome;
	@NotNull @NotEmpty
	private String descricao;
	private Calendar dataDeInicioDaAmostragem;
	private Calendar dataFinalDaAmostragem;
	private boolean ativo;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public List<RegraDeInferencia> getRegrasDeInferencia() {
		return regrasDeInferencia;
	}

	public void setRegrasDeInferencia(List<RegraDeInferencia> regrasDeInferencia) {
		this.regrasDeInferencia = regrasDeInferencia;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getDescricao() {
		return descricao;
	}

	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}

	public Calendar getDataDeInicioDaAmostragem() {
		return dataDeInicioDaAmostragem;
	}

	public void setDataDeInicioDaAmostragem(Calendar dataDeInicioDaAmostragem) {
		this.dataDeInicioDaAmostragem = dataDeInicioDaAmostragem;
	}

	public Calendar getDataFinalDaAmostragem() {
		return dataFinalDaAmostragem;
	}

	public void setDataFinalDaAmostragem(Calendar dataFinalDaAmostragem) {
		this.dataFinalDaAmostragem = dataFinalDaAmostragem;
	}
	
	public boolean isAtivo() {
		return ativo;
	}

	public void setAtivo(boolean ativo) {
		this.ativo = ativo;
	}

	public ArrayList<Double> escorar(Proposta proposta) throws SecurityException, NoSuchMethodException, IllegalArgumentException, IllegalAccessException, InvocationTargetException, ClassNotFoundException{
		ArrayList<Double> escore = new ArrayList<Double>(); 
		Class classeProposta = proposta.getClass();
		double retorno;
		
		for (RegraDeInferencia regraDeInferencia : this.regrasDeInferencia) {
			 Method method = classeProposta.getMethod(regraDeInferencia.getRegra().getMetodo());
			 double retornoDoMetodo = (Double)method.invoke(proposta);
			 Comparador comparador = regraDeInferencia.getComparador();
			 double resposta = regraDeInferencia.getResposta();
			 			 
			 if(comparador == Comparador.IGUAL){
				 if(retornoDoMetodo==resposta){
					 retorno = 1;
				 }else{
					 retorno = 0;
				 }
			 }else if (comparador == Comparador.DIFERENTE) {
				 if(retornoDoMetodo!=resposta){
					 retorno = 1;
				 }else{
					 retorno = 0;
				 }
			 } else if (comparador == Comparador.MAIOR) {
				 if(retornoDoMetodo > resposta){
					 retorno = 1;
				 }else{
					 if(resposta==0){
						 retorno = 0;
					 }else{
						 retorno = retornoDoMetodo/resposta;
					 }
				 }
			 } else if (comparador == Comparador.MAIOR_IGUAL) {
				 if(retornoDoMetodo >= resposta){
					 retorno = 1;
				 }else{
					 if(resposta==0){
						 retorno = 0;
					 }else{
						 retorno = retornoDoMetodo/resposta;
					 }
				 }	 
			 } else if (comparador == Comparador.MENOR) {
				 if(retornoDoMetodo < resposta){
					 retorno = 1;
				 }else{
					 if(retornoDoMetodo==0){
						 retorno = 0;
					 }else{
						 retorno = resposta/retornoDoMetodo;
						 
					 }
				 }
			 } else if (comparador == Comparador.MENOR_IGUAL) {
				 if(retornoDoMetodo <= resposta){
					 retorno = 1;
				 }else{
					 if(retornoDoMetodo==0){
						 retorno = 0;
					 }else{
						 retorno = resposta/retornoDoMetodo;
						 
					 }
				 }	 
			 }else {
				 retorno = retornoDoMetodo;
			 }
			 
			 escore.add(retorno);
		
		}
		
		return escore;
	}

}
