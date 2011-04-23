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
		
	public List<Cliente> lista(){
		return this.session.createCriteria(Cliente.class).list();
	}

}
