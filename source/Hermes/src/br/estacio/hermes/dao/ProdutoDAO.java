package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Produto;

@Component
public class ProdutoDAO {
	
private Session session;
	
	public ProdutoDAO(Session session){
		this.session = session;
	}
	
	public void salva(Produto p){
		this.session.save(p);
	}
	
	public void remove(Produto p){
		this.session.delete(p);
	}
	public Produto carrega(Long id){
		return (Produto)this.session.load(Produto.class,id);
	}
	public void atualiza(Produto p){
		this.session.update(p);
	}

	public List<Produto> lista(){
		return this.session.createCriteria(Produto.class).list();
	}

}
