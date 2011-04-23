package br.estacio.hermes.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.ClienteDAO;
import br.estacio.hermes.model.Cliente;

@Resource
public class ClientesController {
	private final ClienteDAO dao;
	private final Result result;
	private final Validator validator;
	
	public ClientesController(ClienteDAO dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}
	
	public List<Cliente> lista(){
		List<Cliente> clientes = dao.lista();
		return clientes;
	}

}
