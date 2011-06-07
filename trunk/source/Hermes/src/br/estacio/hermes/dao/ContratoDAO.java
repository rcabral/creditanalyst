package br.estacio.hermes.dao;

import java.util.Calendar;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.criterion.Restrictions;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Contrato;

@Component
public class ContratoDAO {

	private Session session;

	public ContratoDAO(Session session) {
		this.session = session;
	}

	public void salva(Contrato objtect) {
		this.session.save(objtect);
	}

	public void remove(Contrato objtect) {
		this.session.delete(objtect);
	}

	public Contrato carrega(Long id) {
		return (Contrato) this.session.load(Contrato.class, id);

	}

	public void atualiza(Contrato objtect) {
		this.session.update(objtect);
	}

	public List<Contrato> lista() {
		return this.session.createCriteria(Contrato.class).list();
	}

	public List<Contrato> lista(Calendar dataInicial, Calendar dataFinal) {
		if (dataInicial == null && dataInicial == null) {
			return this.session.createCriteria(Contrato.class).list();
		}
		if (dataInicial == null) {
			return this.session.createCriteria(Contrato.class)
					.add(Restrictions.le("data", dataFinal)).list();
		}
		if (dataFinal == null) {
			return this.session.createCriteria(Contrato.class)
					.add(Restrictions.ge("data", dataInicial)).list();
		}
		return this.session.createCriteria(Contrato.class)
				.add(Restrictions.ge("data", dataInicial))
				.add(Restrictions.le("data", dataFinal)).list();
	}
}
