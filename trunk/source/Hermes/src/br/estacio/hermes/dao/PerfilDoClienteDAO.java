package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.estacio.hermes.model.PerfilDoCliente;

public class PerfilDoClienteDAO {
	
private Session session;
private Transaction transaction;
	
	public PerfilDoClienteDAO(Session session){
		this.session = session;
	}
	
	public void salva(PerfilDoCliente p){
		transaction = this.session.beginTransaction();
		this.session.save(p);
		transaction.commit();
	}
	
	public void remove(PerfilDoCliente p){
		this.session.delete(p);
		this.session.flush();
	}
	public PerfilDoCliente procura(Long id){
		return (PerfilDoCliente)this.session.load(PerfilDoCliente.class,id);
	}
	public void atualiza(PerfilDoCliente p){
		this.session.update(p);
		this.session.flush();
	}

	@SuppressWarnings("unchecked")
	public List<PerfilDoCliente> lista(){
		return this.session.createCriteria(PerfilDoCliente.class).list();
	}


}
