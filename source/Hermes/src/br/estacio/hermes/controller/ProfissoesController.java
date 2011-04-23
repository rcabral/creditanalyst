package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.ProfissaoDAO;
import br.estacio.hermes.model.Profissao;

@Resource
public class ProfissoesController{
	private final ProfissaoDAO dao;
	private final Result result;
	private final Validator validator;
	
	public ProfissoesController(ProfissaoDAO dao, Result result,Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<Profissao> lista(){
		List<Profissao> profissoes = dao.lista();
		return profissoes;
	}
	
	public Profissao formulario(Profissao profissao){
		return profissao;
	}
	
	public void adiciona(Profissao profissao){
		validator.validate(profissao);
		validator.onErrorUsePageOf(this).formulario(profissao);
		dao.salva(profissao);
		result.redirectTo(this).lista();
	}
	
	public void edita(Long id){
		Profissao profissao= dao.carrega(id);
		result.forwardTo(this).formulario(profissao) ;
	}
	
	public void altera(Profissao profissao){
		validator.validate(profissao);
		validator.onErrorUsePageOf(this).formulario(profissao);
		dao.atualiza(profissao);
		result.redirectTo(this).lista();
	}
	
	public void remove(Long id){
		Profissao Profissao = dao.carrega(id); 
		dao.remove(Profissao);
		result.redirectTo(this).lista();
	}
	
	
	
}


