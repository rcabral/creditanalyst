package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.PerfilDoCliente;

@Component
public class PerfilDoClienteDAO {
	
private Session session;
	
	public PerfilDoClienteDAO(Session session){
		this.session = session;
	}
	
	public void salva(PerfilDoCliente objtect){
		this.session.save(objtect);
	}
	
	public void remove(PerfilDoCliente objtect){
		this.session.delete(objtect);
	}
	public PerfilDoCliente carrega(Long id){
		return (PerfilDoCliente)this.session.load(PerfilDoCliente.class,id);
		
	}
	public void atualiza(PerfilDoCliente objtect){
		this.session.update(objtect);
	}

	public List<PerfilDoCliente> lista(){
		return this.session.createCriteria(PerfilDoCliente.class).list();
	}

}






