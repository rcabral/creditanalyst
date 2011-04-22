package br.estacio.hermes.controller;

import java.util.List;

import br.com.caelum.vraptor.Resource;
import br.estacio.hermes.dao.ProdutoDAO;
import br.estacio.hermes.model.Produto;

@Resource
public class ProdutosController {
	private ProdutoDAO dao;
		
	public ProdutosController(ProdutoDAO dao) {
		this.dao = dao;
	}

	public List<Produto> lista(){
		List<Produto> Produtos = dao.lista();
		return Produtos;
	}
}
