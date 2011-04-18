package br.estacio.hermes.dao;
import java.io.Serializable;

import org.hibernate.Session;

import br.estacio.hermes.model.Funcionario;

public class FuncionarioDAO {
	
	private Session session;

	public FuncionarioDAO(Session session) {
		this.session = session;
	}
	
	public Funcionario procura(Funcionario id){
		return (Funcionario)this.session.load(Funcionario.class,(Serializable)id); 
	}
	

}
