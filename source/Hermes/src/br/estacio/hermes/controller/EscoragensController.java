package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.EscoragemDAO;
import br.estacio.hermes.model.Escoragem;

@Resource
public class EscoragensController {
	private final EscoragemDAO dao;
	private final Result result;
	private final Validator validator;

	public EscoragensController(EscoragemDAO dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Escoragem> lista() {
		List<Escoragem> escoragens = dao.lista();
		return escoragens;
	}

	public Escoragem formulario(Escoragem escoragem) {
		return escoragem;
	}

	public void adiciona(Escoragem escoragem) {
		validator.validate(escoragem);
		validator.onErrorUsePageOf(this).formulario(escoragem);
		dao.salva(escoragem);
		result.redirectTo(this).lista();
	}

	public void edita(Long id) {
		Escoragem escoragem = dao.carrega(id);
		result.forwardTo(this).formulario(escoragem);
	}

	public void altera(Escoragem escoragem) {
		validator.validate(escoragem);
		validator.onErrorUsePageOf(this).formulario(escoragem);
		dao.atualiza(escoragem);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Escoragem escoragem = dao.carrega(id);
		dao.remove(escoragem);
		result.redirectTo(this).lista();
	}

}
