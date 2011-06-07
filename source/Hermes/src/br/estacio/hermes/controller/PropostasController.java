package br.estacio.hermes.controller;

import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.view.Results;
import br.estacio.hermes.dao.ContratoDAO;
import br.estacio.hermes.dao.PropostaDAO;
import br.estacio.hermes.model.Contrato;
import br.estacio.hermes.model.Prestacao;
import br.estacio.hermes.model.Proposta;
import br.estacio.hermes.model.Status;

@Resource
public class PropostasController {
	private final PropostaDAO dao;
	private final ContratoDAO contratoDAO;
	private final Result result;
	private final Validator validator;

	public PropostasController(PropostaDAO dao, ContratoDAO contratoDAO,
			Result result, Validator validator) {
		this.dao = dao;
		this.contratoDAO = contratoDAO;
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
		proposta.setData(Calendar.getInstance());
		validator.validate(proposta);
		validator.onErrorUsePageOf(this).formulario(proposta);
		proposta.setStatus(Status.APROVADO);
		adicionaContrato(proposta);
		dao.salva(proposta);
		result.redirectTo(this).lista();
	}
	
	public void adicionaContrato(Proposta proposta) {
		Calendar dataDoPrimeiroVencimento = proposta.getDataDoPrimeiroVencimento();
		List<Prestacao> prestacoes = new ArrayList<Prestacao>();
		for (int i = 0; i < proposta.getQuantidadeDeParcelas(); i++) {
			Calendar dataDeVencimento = (Calendar) dataDoPrimeiroVencimento.clone();
			dataDeVencimento.add(Calendar.MONTH, i);
			Prestacao prestacao = new Prestacao();
			prestacao.setNumero(i + 1);
			prestacao.setDataDeVencimento((Calendar)dataDeVencimento.clone());
			prestacoes.add(prestacao);
		}

		Contrato contrato = new Contrato();
		contrato.setData(Calendar.getInstance());
		contrato.setProposta(proposta);
		contrato.setPrestacoes(prestacoes);
		contratoDAO.salva(contrato);
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
