package br.estacio.hermes.dao;

import java.util.List;
import org.hibernate.Session;

import br.estacio.hermes.model.Logradouro;

public class LogradouroDAO {

	private Session session;

	public LogradouroDAO(Session session) {
		this.session = session;
	}

	public void salva(Logradouro p) {
		this.session.save(p);
	}

	public void remove(Logradouro p) {
		this.session.delete(p);
		this.session.flush();
	}

	public Logradouro procura(Long id) {
		return (Logradouro) this.session.load(Logradouro.class, id);
	}

	public void atualiza(Logradouro p) {
		this.session.update(p);
		this.session.flush();
	}

	@SuppressWarnings("unchecked")
	public List<Logradouro> lista() {
		return this.session.createCriteria(Logradouro.class).list();
	}

}
