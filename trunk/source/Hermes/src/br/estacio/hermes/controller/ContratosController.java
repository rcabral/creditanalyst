package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.ContratoDAO;
import br.estacio.hermes.model.Contrato;

@Resource
public class ContratosController {
	private final ContratoDAO dao;
	private final Result result;
	private final Validator validator;

	public ContratosController(ContratoDAO dao, Result result,
			Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Contrato> lista() {
		List<Contrato> contratos = dao.lista();
		return contratos;
	}

	public Contrato formulario(Contrato contrato) {
		return contrato;
	}

	public void adiciona(Contrato contrato) {
		validator.validate(contrato);
		validator.onErrorUsePageOf(this).formulario(contrato);
		dao.salva(contrato);
		result.redirectTo(this).lista();
	}

	public void edita(Long id) {
		Contrato contrato = dao.carrega(id);
		result.forwardTo(this).formulario(contrato);
	}

	public void altera(Contrato contrato) {
		validator.validate(contrato);
		validator.onErrorUsePageOf(this).formulario(contrato);
		dao.atualiza(contrato);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Contrato contrato = dao.carrega(id);
		dao.remove(contrato);
		result.redirectTo(this).lista();
	}

}
