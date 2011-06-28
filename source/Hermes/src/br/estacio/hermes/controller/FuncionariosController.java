package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.FuncionarioDAO;
import br.estacio.hermes.interceptor.Restrito;
import br.estacio.hermes.model.Funcionario;
import br.estacio.hermes.model.Cargo;
import br.estacio.hermes.model.Sexo;
import br.estacio.hermes.model.TipoDeLogradouro;
import br.estacio.hermes.model.Uf;

@Resource
public class FuncionariosController {
	private final FuncionarioDAO dao;
	private final Result result;
	private final Validator validator;

	public FuncionariosController(FuncionarioDAO funcionarioDAO, Result result, Validator validator) {
		this.dao = funcionarioDAO;
		this.result = result;
		this.validator = validator;
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public List<Funcionario> lista() {
		List<Funcionario> funcionarios = dao.lista();
		return funcionarios;
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void formulario(Funcionario funcionario) {
		incluiListas();
		result.include("funcionario", funcionario);
		
	}
	
	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void adiciona(Funcionario funcionario) {
		incluiListas();
		validator.validate(funcionario);
		validator.onErrorUsePageOf(this).formulario(funcionario);
		dao.salva(funcionario);
		funcionario.setMatricula("FINICRED-" + funcionario.getId());
		dao.atualiza(funcionario);
		result.redirectTo(this).lista();
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void edita(Long id) {
		Funcionario funcionario = dao.carrega(id);
		result.forwardTo(this).formulario(funcionario);
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void altera(Funcionario funcionario) {
		incluiListas();
		validator.validate(funcionario);
		validator.onErrorUsePageOf(this).formulario(funcionario);
		dao.atualiza(funcionario);
		result.redirectTo(this).lista();
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO })
	public void remove(Long id) {
		Funcionario funcionario = dao.carrega(id);
		dao.remove(funcionario);
		result.redirectTo(this).lista();
	}
	
	private void incluiListas(){
		result.include("sexoList", Sexo.values());
		result.include("tipoDeLogradouroList", TipoDeLogradouro.values());
		result.include("ufs", Uf.values());
		result.include("cargoList",Cargo.values());
	}


}
