package br.estacio.hermes.controller;

import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.notNullValue;

import java.lang.reflect.InvocationTargetException;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.ServletContext;

import br.estacio.hermes.util.NenhumContratoDisponivelException;
import br.estacio.hermes.util.Util;

import org.neuroph.core.Layer;
import org.neuroph.core.NeuralNetwork;
import org.neuroph.core.learning.SupervisedTrainingElement;
import org.neuroph.core.learning.TrainingElement;
import org.neuroph.core.learning.TrainingSet;
import org.neuroph.nnet.MultiLayerPerceptron;
import org.neuroph.nnet.NeuroFuzzyPerceptron;
import org.neuroph.util.NeuralNetworkType;
import org.neuroph.util.TransferFunctionType;
import org.neuroph.core.learning.*;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.Validations;
import br.estacio.hermes.dao.ContratoDAO;
import br.estacio.hermes.dao.EscoragemDAO;
import br.estacio.hermes.dao.ProfissaoDAO;
import br.estacio.hermes.dao.RegraDAO;
import br.estacio.hermes.model.Comparador;
import br.estacio.hermes.model.Contrato;
import br.estacio.hermes.model.Escoragem;
import br.estacio.hermes.model.Prestacao;
import br.estacio.hermes.model.Proposta;
import br.estacio.hermes.model.Regra;
import br.estacio.hermes.model.RegraDeInferencia;

@Resource
public class EscoragensController {
	private final EscoragemDAO dao;
	private final Result result;
	private final Validator validator;
	private final RegraDAO regraDAO;
	private final ContratoDAO contratoDAO;
	private final ServletContext context;

	public EscoragensController(EscoragemDAO dao, Result result,
			Validator validator, RegraDAO regraDAO, ContratoDAO contratoDAO,
			ServletContext context) {
		super();
		this.dao = dao;
		this.result = result;
		this.validator = validator;
		this.regraDAO = regraDAO;
		this.contratoDAO = contratoDAO;
		this.context = context;
	}

	public List<Escoragem> lista() {
		List<Escoragem> escoragens = dao.lista();
		return escoragens;
	}

	public void formulario(Escoragem escoragem) {
		result.include("escoragem", escoragem);
		result.include("regraList", regraDAO.lista());
		result.include("comparadorList", Comparador.values());
	}

	public void adiciona(Escoragem escoragem) throws SecurityException,
			IllegalArgumentException, NoSuchMethodException,
			IllegalAccessException, InvocationTargetException,
			ClassNotFoundException {
		result.include("regraList", regraDAO.lista());
		result.include("comparadorList", Comparador.values());
		validator.validate(escoragem);
		validator.onErrorUsePageOf(this).formulario(escoragem);
		createAndTrainNeuralNetwork(escoragem);
		dao.desativaRegrasDeEscoragem();
		dao.salva(escoragem);
		result.redirectTo(this).lista();
	}

	public void edita(Long id) {
		Escoragem escoragem = dao.carrega(id);
		result.forwardTo(this).formulario(escoragem);
	}

	public void altera(Escoragem escoragem) throws SecurityException,
			IllegalArgumentException, NoSuchMethodException,
			IllegalAccessException, InvocationTargetException,
			ClassNotFoundException {
		result.include("regraList", regraDAO.lista());
		result.include("comparadorList", Comparador.values());
		createAndTrainNeuralNetwork(escoragem);
		validator.validate(escoragem);
		validator.onErrorUsePageOf(this).formulario(escoragem);
		dao.desativaRegrasDeEscoragem();
		dao.atualiza(escoragem);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Escoragem escoragem = dao.carrega(id);
		dao.remove(escoragem);
		result.redirectTo(this).lista();
	}

	public void createAndTrainNeuralNetwork(Escoragem escoragem)
			throws SecurityException, IllegalArgumentException,
			NoSuchMethodException, IllegalAccessException,
			InvocationTargetException, ClassNotFoundException {
		int neuroniosDaCamadaDeEntrada = escoragem.getRegrasDeInferencia().size();
		int neuroniosDeSaida = 2;
						
		Vector<Integer> inputSets = new Vector<Integer>();
		
		for (int i = 0; i < escoragem.getRegrasDeInferencia().size(); i++) {
			inputSets.add(2);
		}
		
		for (RegraDeInferencia regraDeInferencia : escoragem.getRegrasDeInferencia()) {
			regraDeInferencia.setRegra(regraDAO.carrega(regraDeInferencia.getRegra().getId()));
		}

		// create training set
		TrainingSet trainingSet = new TrainingSet();

		final List<Contrato> contratos = contratoDAO.lista(
				escoragem.getDataDeInicioDaAmostragem(),
				escoragem.getDataFinalDaAmostragem());
		validator.checking(new Validations() {
			{
				that(!contratos.isEmpty(), "contratos","no_contract_available_for_the_reporting_period");
			}
		});
		validator.onErrorUsePageOf(this).formulario(escoragem);

		for (Contrato contrato : contratoDAO.lista()) {
			ArrayList<Double> escore = new ArrayList<Double>();
			ArrayList<Double> bomCliente = new ArrayList<Double>();
			Proposta proposta = contrato.getProposta();
			escore = escoragem.escorar(proposta);
			if (contrato.temPrestacoesEmAtraso()) {
				bomCliente.add(0.0);
				bomCliente.add(1.0);
			} else {
				bomCliente.add(1.0);
				bomCliente.add(0.0);
			}
			trainingSet.addElement(new SupervisedTrainingElement(escore,bomCliente));
		}
		// create perceptron
		NeuralNetwork network = new NeuroFuzzyPerceptron(neuroniosDaCamadaDeEntrada,inputSets,neuroniosDeSaida);
		
		// learn the training set
		network.learnInSameThread(trainingSet);
		// Save neural network
		String neuralNetFile = this.context.getRealPath("/WEB-INF/NeuralNetwork") + "/" + "Hermes.nnet";
		
		network.save(neuralNetFile);
	}

}
