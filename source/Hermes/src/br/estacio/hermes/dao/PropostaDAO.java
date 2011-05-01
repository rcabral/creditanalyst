package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Proposta;

@Component
public class PropostaDAO {
	
private Session session;
	
	public PropostaDAO(Session session){
		this.session = session;
	}
	
	public void salva(Proposta objtect){
		this.session.save(objtect);
	}
	
	public void remove(Proposta objtect){
		this.session.delete(objtect);
	}
	public Proposta carrega(Long id){
		return (Proposta)this.session.load(Proposta.class,id);
		
	}
	public void atualiza(Proposta objtect){
		this.session.update(objtect);
	}

	public List<Proposta> lista(){
		return this.session.createCriteria(Proposta.class).list();
	}

}




