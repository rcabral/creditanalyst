package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Banco;

@Component
public class BancoDAO {
	
private Session session;
	
	public BancoDAO(Session session){
		this.session = session;
	}
	
	public void salva(Banco objtect){
		this.session.save(objtect);
	}
	
	public void remove(Banco objtect){
		this.session.delete(objtect);
	}
	public Banco carrega(Long id){
		return (Banco)this.session.get(Banco.class,id);
		
	}
	public void atualiza(Banco objtect){
		this.session.update(objtect);
	}

	public List<Banco> lista(){
		return this.session.createCriteria(Banco.class).list();
	}

}


