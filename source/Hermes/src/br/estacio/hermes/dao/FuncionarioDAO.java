package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;

import br.estacio.hermes.model.Funcionario;

public class FuncionarioDAO {
	
private Session session;
	
	public FuncionarioDAO(Session session){
		this.session = session;
	}
	
	public void salva(Funcionario p){
		this.session.save(p);
	}
	
	public void remove(Funcionario p){
		this.session.delete(p);
		this.session.flush();
	}
	public Funcionario procura(Long id){
		return (Funcionario)this.session.load(Funcionario.class,id);
	}
	public void atualiza(Funcionario p){
		this.session.update(p);
		this.session.flush();
	}

	@SuppressWarnings("unchecked")
	public List<Funcionario> lista(){
		return this.session.createCriteria(Funcionario.class).list();
	}


}
