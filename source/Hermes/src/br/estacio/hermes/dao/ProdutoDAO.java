package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Produto;

@Component
public class ProdutoDAO {
	
private Session session;
private Transaction transaction;
	
	public ProdutoDAO(Session session){
		this.session = session;
	}
	
	public void salva(Produto p){
		transaction = this.session.beginTransaction();
		this.session.save(p);
		transaction.commit();
	}
	
	public void remove(Produto p){
		this.session.delete(p);
		this.session.flush();
	}
	public Produto procura(Long id){
		return (Produto)this.session.load(Produto.class,id);
	}
	public void atualiza(Produto p){
		this.session.update(p);
		this.session.flush();
	}

	public List<Produto> lista(){
		return this.session.createCriteria(Produto.class).list();
	}

}
