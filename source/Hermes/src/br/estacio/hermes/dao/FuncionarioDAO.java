package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Funcionario;
import br.estacio.hermes.model.Produto;

@Component
public class FuncionarioDAO {
	
private Session session;
	
	public FuncionarioDAO(Session session){
		this.session = session;
	}
	
	public List<Funcionario> lista(){
		return this.session.createCriteria(Funcionario.class).list();
	}
	
	

}
