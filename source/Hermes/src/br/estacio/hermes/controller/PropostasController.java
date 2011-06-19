package br.estacio.hermes.controller;

import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.notNullValue;

import java.lang.reflect.InvocationTargetException;
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletContext;

import org.neuroph.core.NeuralNetwork;
import org.neuroph.core.learning.SupervisedTrainingElement;
import org.neuroph.core.learning.TrainingSet;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.Validations;
import br.com.caelum.vraptor.view.Results;
import br.estacio.hermes.dao.BancoDAO;
import br.estacio.hermes.dao.ClienteDAO;
import br.estacio.hermes.dao.ContratoDAO;
import br.estacio.hermes.dao.EscoragemDAO;
import br.estacio.hermes.dao.PerfilDoClienteDAO;
import br.estacio.hermes.dao.ProfissaoDAO;
import br.estacio.hermes.dao.PropostaDAO;
import br.estacio.hermes.model.Banco;
import br.estacio.hermes.model.Contrato;
import br.estacio.hermes.model.Escoragem;
import br.estacio.hermes.model.Prestacao;
import br.estacio.hermes.model.Proposta;
import br.estacio.hermes.model.Status;

@Resource
public class PropostasController {
	private final PropostaDAO dao;
	private final ContratoDAO contratoDAO;
	private final ClienteDAO clienteDAO;
	private final EscoragemDAO escoragemDAO;
	private final PerfilDoClienteDAO perfilDoClienteDAO;
	private final Result result;
	private final Validator validator;
	private final ServletContext context;
	private final BancoDAO bancoDAO;

	public PropostasController(PropostaDAO dao, ContratoDAO contratoDAO,
			ClienteDAO clienteDAO, EscoragemDAO escoragemDAO,
			PerfilDoClienteDAO perfilDoClienteDAO, Result result,
			Validator validator, ServletContext context, BancoDAO bancoDAO) {
		super();
		this.dao = dao;
		this.contratoDAO = contratoDAO;
		this.clienteDAO = clienteDAO;
		this.escoragemDAO = escoragemDAO;
		this.perfilDoClienteDAO = perfilDoClienteDAO;
		this.result = result;
		this.validator = validator;
		this.context = context;
		this.bancoDAO = bancoDAO;
	}

	public List<Proposta> lista() {
		List<Proposta> propostas = dao.lista();
		return propostas;
	}

	public void formulario(Proposta proposta) {
		result.include("bancoList", bancoDAO.lista());
		result.include("proposta", proposta);
	}

	public void adiciona(Proposta proposta) throws SecurityException,
			IllegalArgumentException, NoSuchMethodException,
			IllegalAccessException, InvocationTargetException,
			ClassNotFoundException {
		proposta.setData(Calendar.getInstance());
		final Banco banco = proposta.getBancoParaRecebimentoDoCredito(); 
		result.include("bancoList", bancoDAO.lista());
		validator.validate(proposta);
		validator.onErrorUsePageOf(this).formulario(proposta);
		escore(proposta);
		dao.salva(proposta);
		result.redirectTo(this).lista();
	}

	public void escore(Proposta proposta) throws SecurityException,
			IllegalArgumentException, NoSuchMethodException,
			IllegalAccessException, InvocationTargetException,
			ClassNotFoundException {
		final Escoragem escoragem = this.escoragemDAO.carregaEscoragemAtiva();
		validator.checking(new Validations() {
			{
				that(escoragem, is(notNullValue()), "login",
						"invalid_login_or_password");
			}
		});

		// load neuralNetwork
		String neuralNetFile = this.context
				.getRealPath("/WEB-INF/NeuralNetwork") + "/" + "Hermes.nnet";
		NeuralNetwork hermesNeuralNetwork = NeuralNetwork.load(neuralNetFile);

		proposta.setCliente(clienteDAO.carrega(proposta.getCliente().getId()));
		ArrayList<Double> escore = escoragem.escorar(proposta);
		hermesNeuralNetwork.setInput(new SupervisedTrainingElement(escore,
				escore).getInput());
		hermesNeuralNetwork.calculate();

		double[] networkOutput = hermesNeuralNetwork.getOutput();
		double respostaDoPrimeiroNeuronio = networkOutput[0];
		double respostaDoSegundoNeuronio = networkOutput[1];

		if (respostaDoPrimeiroNeuronio == 1.0) {
			proposta.setStatus(Status.APROVADO);
			proposta.setDataDeAprovacao(Calendar.getInstance());
			adicionaContrato(proposta);
		} else {
			proposta.setStatus(Status.REPROVADO);
		}
	}

	public void adicionaContrato(Proposta proposta) {
		Calendar dataDoPrimeiroVencimento = proposta
				.getDataDoPrimeiroVencimento();
		List<Prestacao> prestacoes = new ArrayList<Prestacao>();
		for (int i = 0; i < proposta.getQuantidadeDeParcelas(); i++) {
			Calendar dataDeVencimento = (Calendar) dataDoPrimeiroVencimento
					.clone();
			dataDeVencimento.add(Calendar.MONTH, i);
			Prestacao prestacao = new Prestacao();
			prestacao.setNumero(i + 1);
			prestacao.setDataDeVencimento((Calendar) dataDeVencimento.clone());
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

	public void altera(Proposta proposta) throws SecurityException,
			IllegalArgumentException, NoSuchMethodException,
			IllegalAccessException, InvocationTargetException,
			ClassNotFoundException {
		result.include("bancoList", bancoDAO.lista());
		validator.validate(proposta);
		validator.onErrorUsePageOf(this).formulario(proposta);
		escore(proposta);
		dao.atualiza(proposta);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Proposta proposta = dao.carrega(id);
		dao.remove(proposta);
		result.redirectTo(this).lista();
	}

	public void calculaPrestacao(Proposta proposta) {
		proposta.setTaxaDeJuros(5);
		double valorDaPrestacao = proposta.calculaPrestacao();
		DecimalFormat decimal = new DecimalFormat("0.00");
		result.use(Results.json()).withoutRoot()
				.from(new DecimalFormat("###,##0.00").format(valorDaPrestacao)).serialize();
	}

}
