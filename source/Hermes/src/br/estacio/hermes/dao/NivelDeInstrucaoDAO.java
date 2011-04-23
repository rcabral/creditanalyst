package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.NivelDeInstrucao;

@Component
public class NivelDeInstrucaoDAO {
	
private Session session;
	
	public NivelDeInstrucaoDAO(Session session){
		this.session = session;
	}
	
	public void salva(NivelDeInstrucao objtect){
		this.session.save(objtect);
	}
	
	public void remove(NivelDeInstrucao objtect){
		this.session.delete(objtect);
	}
	public NivelDeInstrucao carrega(Long id){
		return (NivelDeInstrucao)this.session.load(NivelDeInstrucao.class,id);
		
	}
	public void atualiza(NivelDeInstrucao objtect){
		this.session.update(objtect);
	}

	public List<NivelDeInstrucao> lista(){
		return this.session.createCriteria(NivelDeInstrucao.class).list();
	}

}

