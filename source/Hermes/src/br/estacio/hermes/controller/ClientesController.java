package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.deserialization.JsonDeserializer;
import br.com.caelum.vraptor.view.Results;
import br.estacio.hermes.dao.ClienteDAO;
import br.estacio.hermes.dao.ProfissaoDAO;
import br.estacio.hermes.model.Cliente;
import br.estacio.hermes.model.EstadoCivil;
import br.estacio.hermes.model.NivelDeInstrucao;
import br.estacio.hermes.model.Proposta;
import br.estacio.hermes.model.Sexo;
import br.estacio.hermes.model.TipoDeLogradouro;
import br.estacio.hermes.model.TipoDeResidencia;
import br.estacio.hermes.model.TipoDeVinculoComCredor;
import br.estacio.hermes.model.Uf;

@Resource
public class ClientesController {
	private final ClienteDAO dao;
	private final ProfissaoDAO profissaoDAO;
	private final Result result;
	private final Validator validator;

	public ClientesController(ClienteDAO dao, ProfissaoDAO profissaoDAO,
			Result result, Validator validator) {
		this.dao = dao;
		this.profissaoDAO = profissaoDAO;
		this.result = result;
		this.validator = validator;
	}

	public List<Cliente> lista() {
		List<Cliente> clientes = dao.lista();
		return clientes;
	}

	public void formulario(Cliente cliente) {
		incluiListas();
		result.include("cliente", cliente);
	}

	public void adiciona(Cliente cliente) {
		incluiListas();
		validator.validate(cliente);
		validator.validate(cliente.getPerfilDoCliente());
		validator.validate(cliente.getPerfilDoCliente().getEndereco());
		validator.onErrorUsePageOf(this).formulario(cliente);
		dao.salva(cliente);
		result.redirectTo(this).lista();
	}

	public void edita(Long id) {
		Cliente cliente = dao.carrega(id);
		result.forwardTo(this).formulario(cliente);
	}

	public void altera(Cliente cliente) {
		incluiListas();
		validator.validate(cliente);
		validator.validate(cliente.getPerfilDoCliente());
		validator.validate(cliente.getPerfilDoCliente().getEndereco());
		validator.onErrorUsePageOf(this).formulario(cliente);
		dao.atualiza(cliente);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Cliente Cliente = dao.carrega(id);
		dao.remove(Cliente);
		result.redirectTo(this).lista();
	}

	public void novaProposta(Long id) {
		Cliente cliente = dao.carrega(id);
		Proposta proposta = new Proposta();
		proposta.setCliente(cliente);
		result.forwardTo(PropostasController.class).formulario(proposta);
	}
	
	public void incluiListas() {
		result.include("nivelDeInstrucaoList", NivelDeInstrucao.values());
		result.include("profissaoList", profissaoDAO.lista());
		result.include("tipoDeLogradouroList", TipoDeLogradouro.values());
		result.include("sexoList", Sexo.values());
		result.include("estadoCivilList", EstadoCivil.values());
		result.include("tipoDeVinculoComCredorList",TipoDeVinculoComCredor.values());
		result.include("tipoDeResidenciaList", TipoDeResidencia.values());
		result.include("ufs", Uf.values());
	}
	

}
