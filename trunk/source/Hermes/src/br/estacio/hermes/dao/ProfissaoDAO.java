package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Profissao;

@Component
public class ProfissaoDAO {
	
private Session session;
	
	public ProfissaoDAO(Session session){
		this.session = session;
	}
	
	public void salva(Profissao objtect){
		this.session.save(objtect);
	}
	
	public void remove(Profissao objtect){
		this.session.delete(objtect);
	}
	public Profissao carrega(Long id){
		return (Profissao)this.session.load(Profissao.class,id);
		
	}
	public void atualiza(Profissao objtect){
		this.session.update(objtect);
	}

	public List<Profissao> lista(){
		return this.session.createCriteria(Profissao.class).list();
	}

}




