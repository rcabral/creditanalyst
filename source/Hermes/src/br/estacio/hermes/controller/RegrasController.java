package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.RegraDAO;
import br.estacio.hermes.interceptor.Restrito;
import br.estacio.hermes.model.Cargo;
import br.estacio.hermes.model.Proposta;
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

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public List<Regra> lista() {
		List<Regra> regras = dao.lista();
		return regras;
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void formulario(Regra regra) {
		incluiListas();
		result.include("regra", regra);
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void adiciona(Regra regra) {
		incluiListas();
		validator.validate(regra);
		validator.onErrorUsePageOf(this).formulario(regra);
		dao.salva(regra);
		result.redirectTo(this).lista();
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void edita(Long id) {
		Regra regra = dao.carrega(id);
		result.forwardTo(this).formulario(regra);
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void altera(Regra regra) {
		incluiListas();
		validator.validate(regra);
		validator.onErrorUsePageOf(this).formulario(regra);
		dao.atualiza(regra);
		result.redirectTo(this).lista();
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void remove(Long id) {
		Regra regra = dao.carrega(id);
		dao.remove(regra);
		result.redirectTo(this).lista();
	}
	
	public void incluiListas() {
		Proposta proposta = new Proposta();
		result.include("campoList",proposta.getCampos());
	}

}
