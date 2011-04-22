package br.estacio.hermes.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.estacio.hermes.dao.FuncionarioDAO;
import br.estacio.hermes.interceptor.Public;
import br.estacio.hermes.model.Funcionario;


@Resource
public class FuncionariosController {
	private FuncionarioDAO dao;
		
	public FuncionariosController(FuncionarioDAO dao) {
		this.dao = dao;
	}

	public List<Funcionario> lista(){
		List<Funcionario> funcionarios = dao.lista();
		return funcionarios;
	}
}
