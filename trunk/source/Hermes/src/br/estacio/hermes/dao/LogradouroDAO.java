package br.estacio.hermes.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Logradouro;


@Component
public class LogradouroDAO {

	private Session session;
	private Transaction transaction;

	public LogradouroDAO(Session session) {
		this.session = session;
	}

	public void salva(Logradouro p) {
		transaction = this.session.beginTransaction();
		this.session.save(p);
		transaction.commit();
	}

	public void remove(Logradouro p) {
		transaction = this.session.beginTransaction();
		this.session.delete(p);
		transaction.commit();
	}

	public Logradouro procura(Long id) {
		return (Logradouro) this.session.load(Logradouro.class, id);
	}

	public void atualiza(Logradouro p) {
		transaction = this.session.beginTransaction();
		this.session.update(p);
		transaction.commit();	
	}

	@SuppressWarnings("unchecked")
	public List<Logradouro> lista() {
		return this.session.createCriteria(Logradouro.class).list();
	}

}
