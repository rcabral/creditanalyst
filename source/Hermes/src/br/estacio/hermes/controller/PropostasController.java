package br.estacio.hermes.controller;

import java.text.DecimalFormat;
import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.view.Results;
import br.estacio.hermes.dao.PropostaDAO;
import br.estacio.hermes.model.Proposta;

@Resource
public class PropostasController {
	private final PropostaDAO dao;
	private final Result result;
	private final Validator validator;

	public PropostasController(PropostaDAO dao, Result result,
			Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Proposta> lista() {
		List<Proposta> propostas = dao.lista();
		return propostas;
	}

	public Proposta formulario(Proposta proposta) {
		return proposta;
	}

	public void adiciona(Proposta proposta) {
		validator.validate(proposta);
		validator.onErrorUsePageOf(this).formulario(proposta);
		dao.salva(proposta);
		result.redirectTo(this).lista();
	}

	public void edita(Long id) {
		Proposta proposta = dao.carrega(id);
		result.forwardTo(this).formulario(proposta);
	}

	public void altera(Proposta proposta) {
		validator.validate(proposta);
		validator.onErrorUsePageOf(this).formulario(proposta);
		dao.atualiza(proposta);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Proposta proposta = dao.carrega(id);
		dao.remove(proposta);
		result.redirectTo(this).lista();
	}

	public void calculaPrestacao(Proposta proposta) {
		proposta.setTaxaDeJuros(1);
		double valorDaPrestacao = proposta.calculaPrestacao();
		DecimalFormat decimal = new DecimalFormat("0.00");
		result.use(Results.json()).withoutRoot().from(decimal.format(valorDaPrestacao)).serialize();
	}

}
