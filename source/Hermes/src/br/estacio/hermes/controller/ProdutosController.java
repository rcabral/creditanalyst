package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.ProdutoDAO;
import br.estacio.hermes.model.Produto;

@Resource
public class ProdutosController {
	private final ProdutoDAO dao;
	private final Result result;
	private final Validator validator;
	
	public ProdutosController(ProdutoDAO dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Produto> lista(){
		List<Produto> Produtos = dao.lista();
		return Produtos;
	}
	
	public void formulario(){
	}
	
	public void adiciona(Produto produto){
		validator.validate(produto);
		validator.onErrorUsePageOf(this).formulario();
		dao.salva(produto);
		result.redirectTo(this).lista();
	}
	
	public Produto edita(Long id){
		return dao.carrega(id);
	}
	
	public void altera(Produto produto){
		validator.validate(produto);
		validator.onErrorUsePageOf(this).edita(produto.getId());
		dao.atualiza(produto);
		result.redirectTo(this).lista();
	}
	
	public void remove(Long id){
		Produto produto = dao.carrega(id); 
		dao.remove(produto);
		result.redirectTo(this).lista();
	}
	
	
	
}
