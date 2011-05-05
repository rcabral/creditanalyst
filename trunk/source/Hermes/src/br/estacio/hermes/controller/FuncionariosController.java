package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.FuncionarioDAO;
import br.estacio.hermes.model.Funcionario;
import br.estacio.hermes.model.Sexo;
import br.estacio.hermes.model.TipoDeLogradouro;
import br.estacio.hermes.model.Uf;

@Resource
public class FuncionariosController {
	private final FuncionarioDAO dao;
	private final Result result;
	private final Validator validator;

	public FuncionariosController(FuncionarioDAO dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Funcionario> lista() {
		List<Funcionario> funcionarios = dao.lista();
		return funcionarios;
	}

	public void formulario(Funcionario funcionario) {
		result.include("sexoList", Sexo.values());
		result.include("tipoDeLogradouroList", TipoDeLogradouro.values());
		result.include("ufs", Uf.values());
		result.include("funcionario", funcionario);
	}

	public void adiciona(Funcionario funcionario) {
		validator.validate(funcionario);
		validator.onErrorUsePageOf(this).formulario(funcionario);
		dao.salva(funcionario);
		result.redirectTo(this).lista();
	}

	public void edita(Long id) {
		Funcionario funcionario = dao.carrega(id);
		result.forwardTo(this).formulario(funcionario);
	}

	public void altera(Funcionario funcionario) {
		validator.validate(funcionario);
		validator.onErrorUsePageOf(this).formulario(funcionario);
		dao.atualiza(funcionario);
		result.redirectTo(this).lista();
	}

	public void remove(Long id) {
		Funcionario funcionario = dao.carrega(id);
		dao.remove(funcionario);
		result.redirectTo(this).lista();
	}

}
