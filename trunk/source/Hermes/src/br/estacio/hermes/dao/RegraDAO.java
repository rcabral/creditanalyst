package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Regra;

@Component
public class RegraDAO {
	
private Session session;
	
	public RegraDAO(Session session){
		this.session = session;
	}
	
	public void salva(Regra objtect){
		this.session.save(objtect);
	}
	
	public void remove(Regra objtect){
		this.session.delete(objtect);
	}
	public Regra carrega(Long id){
		return (Regra)this.session.load(Regra.class,id);
		
	}
	public void atualiza(Regra objtect){
		this.session.update(objtect);
	}

	public List<Regra> lista(){
		return this.session.createCriteria(Regra.class).list();
	}

}






