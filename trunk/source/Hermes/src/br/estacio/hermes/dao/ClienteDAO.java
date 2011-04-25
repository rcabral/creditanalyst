package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Cliente;

@Component
public class ClienteDAO {
	
private Session session;
	
	public ClienteDAO(Session session){
		this.session = session;
	}
	
	public void salva(Cliente objtect){
		this.session.save(objtect);
	}
	
	public void remove(Cliente objtect){
		this.session.delete(objtect);
	}
	public Cliente carrega(Long id){
		return (Cliente)this.session.load(Cliente.class,id);
		
	}
	public void atualiza(Cliente objtect){
		this.session.update(objtect);
	}

	public List<Cliente> lista(){
		return this.session.createCriteria(Cliente.class).list();
	}

}





