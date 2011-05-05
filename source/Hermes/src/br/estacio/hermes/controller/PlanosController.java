package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.PlanoDAO;
import br.estacio.hermes.model.Plano;

@Resource
public class PlanosController {
	private final PlanoDAO dao;
	private final Result result;
	private final Validator validator;

	public PlanosController(PlanoDAO dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Plano> lista() {
		List<Plano> planos = dao.lista();
		return planos;
	}

	public Plano formulario(Plano plano) {
		return plano;
	}

	public void adiciona(Plano plano) {
		validator.validate(plano);
		validator.onErrorUsePageOf(this).formulario(plano);
		dao.salva(plano);
		result.redirectTo(this).lista();
	}

	public void edita(Long id) {
		Plano plano = dao.carrega(id);
		result.forwardTo(this).formulario(plano);
	}

	public void altera(Plano plano) {
		validator.validate(plano);
		validator.onErrorUsePageOf(this).formulario(plano);
		dao.atualiza(plano);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Plano plano = dao.carrega(id);
		dao.remove(plano);
		result.redirectTo(this).lista();
	}

}
