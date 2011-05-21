package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.RegraDAO;
import br.estacio.hermes.model.Regra;
import br.estacio.hermes.model.TipoDeResposta;

@Resource
public class RegrasController {
	private final RegraDAO dao;
	private final Result result;
	private final Validator validator;

	public RegrasController(RegraDAO dao,Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Regra> lista() {
		List<Regra> regras = dao.lista();
		return regras;
	}

	public void formulario(Regra regra) {
		result.include("tipoDeRespostaList", TipoDeResposta.values());
		result.include("regra", regra);
	}

	public void adiciona(Regra regra) {
		validator.validate(regra);
		validator.onErrorUsePageOf(this).formulario(regra);
		dao.salva(regra);
		result.redirectTo(this).lista();
	}

	public void edita(Long id) {
		Regra regra = dao.carrega(id);
		result.forwardTo(this).formulario(regra);
	}

	public void altera(Regra regra) {
		validator.validate(regra);
		validator.onErrorUsePageOf(this).formulario(regra);
		dao.atualiza(regra);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Regra regra = dao.carrega(id);
		dao.remove(regra);
		result.redirectTo(this).lista();
	}

}
