package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Escoragem;

@Component
public class EscoragemDAO{
	
private Session session;
	
	public EscoragemDAO(Session session){
		this.session = session;
	}
	
	public void salva(Escoragem objtect){
		this.session.save(objtect);
	}
	
	public void remove(Escoragem objtect){
		this.session.delete(objtect);
	}
	public Escoragem carrega(Long id){
		return (Escoragem)this.session.load(Escoragem.class,id);
	}
	
	public Escoragem carregaEscoragemAtiva(){
		Escoragem escoragem = null;
		List<Escoragem> escoragens = this.session.createCriteria(Escoragem.class).setMaxResults(1).add(Restrictions.eq("ativo",true)).list();
		if(escoragens.size()>0){
			escoragem = escoragens.get(0);
		}
		return escoragem;
	}	
	
	public void atualiza(Escoragem objtect){
		this.session.update(objtect);
	}

	public List<Escoragem> lista(){
		return this.session.createCriteria(Escoragem.class).list();
	}
	
	public void desativaRegrasDeEscoragem(){
		this.session.createQuery("update Escoragem set ativo = false ").executeUpdate();
	}

}





