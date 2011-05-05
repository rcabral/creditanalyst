package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Plano;

@Component
public class PlanoDAO {
	
private Session session;
	
	public PlanoDAO(Session session){
		this.session = session;
	}
	
	public void salva(Plano objtect){
		this.session.save(objtect);
	}
	
	public void remove(Plano objtect){
		this.session.delete(objtect);
	}
	public Plano carrega(Long id){
		return (Plano)this.session.load(Plano.class,id);
		
	}
	public void atualiza(Plano objtect){
		this.session.update(objtect);
	}

	public List<Plano> lista(){
		return this.session.createCriteria(Plano.class).list();
	}

}





