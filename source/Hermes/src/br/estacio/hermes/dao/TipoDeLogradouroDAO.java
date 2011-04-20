package br.estacio.hermes.dao;

import java.util.List;
import org.hibernate.Session;
import org.hibernate.Transaction;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.TipoDeLogradouro;


@Component
public class TipoDeLogradouroDAO {

	private Session session;
	private Transaction transaction;

	public TipoDeLogradouroDAO(Session session) {
		this.session = session;
	}

	public void salva(TipoDeLogradouro p) {
		transaction = this.session.beginTransaction();
		this.session.save(p);
		transaction.commit();
	}

	public void remove(TipoDeLogradouro p) {
		transaction = this.session.beginTransaction();
		this.session.delete(p);
		transaction.commit();
	}

	public TipoDeLogradouro procura(Long id) {
		return (TipoDeLogradouro) this.session.load(TipoDeLogradouro.class, id);
	}

	public void atualiza(TipoDeLogradouro p) {
		transaction = this.session.beginTransaction();
		this.session.update(p);
		transaction.commit();	
	}

	@SuppressWarnings("unchecked")
	public List<TipoDeLogradouro> lista() {
		return this.session.createCriteria(TipoDeLogradouro.class).list();
	}

}
