package br.estacio.hermes.dao;
import java.util.List;


import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;
import org.hibernate.exception.ConstraintViolationException;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Escoragem;
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
		String hql = "from Profissao p where p.codigoCBO = :id";
		Query query = session.createQuery(hql).setParameter("id",id);
		return (Profissao) query.uniqueResult();
	}
	public void atualiza(Profissao objtect){
		this.session.update(objtect);
	}

	public List<Profissao> lista(){
		return this.session.createCriteria(Profissao.class).list();
	}

}




