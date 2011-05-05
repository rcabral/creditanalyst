package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Credencial;
import br.estacio.hermes.model.Funcionario;

@Component
public class FuncionarioDAO {
	
private Session session;
	
	public FuncionarioDAO(Session session){
		this.session = session;
	}
	
	public void salva(Funcionario objtect){
		this.session.save(objtect);
	}
	
	public void remove(Funcionario objtect){
		this.session.delete(objtect);
	}
	public Funcionario carrega(Long id){
		return (Funcionario)this.session.load(Funcionario.class,id);
	}
	//public Funcionario carrega(Credencial credencial) {
	//	return (Funcionario) session.createCriteria(Funcionario.class)
	//	.add(Restrictions.eq("login", credencial.getLogin()))
	//	.add(Restrictions.eq("senha", credencial.getSenha()))
	//	.uniqueResult();
	//}
	public void atualiza(Funcionario objtect){
		this.session.update(objtect);
	}

	public List<Funcionario> lista(){
		return this.session.createCriteria(Funcionario.class).list();
	}

}





