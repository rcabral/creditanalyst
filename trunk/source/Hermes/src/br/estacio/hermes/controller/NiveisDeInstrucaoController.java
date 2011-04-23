package br.estacio.hermes.controller;

import java.util.List;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.estacio.hermes.dao.NivelDeInstrucaoDAO;
import br.estacio.hermes.model.NivelDeInstrucao;

@Resource
public class NiveisDeInstrucaoController{
	private final NivelDeInstrucaoDAO dao;
	private final Result result;
	private final Validator validator;
	
	public NiveisDeInstrucaoController(NivelDeInstrucaoDAO dao, Result result,Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	public List<NivelDeInstrucao> lista(){
		List<NivelDeInstrucao> niveisDeInstrucao = dao.lista();
		return niveisDeInstrucao;
	}
	
	public NivelDeInstrucao formulario(NivelDeInstrucao nivelDeInstrucao){
		return nivelDeInstrucao;
	}
	
	public void adiciona(NivelDeInstrucao nivelDeInstrucao){
		validator.validate(nivelDeInstrucao);
		validator.onErrorUsePageOf(this).formulario(nivelDeInstrucao);
		dao.salva(nivelDeInstrucao);
		result.redirectTo(this).lista();
	}
	
	public void edita(Long id){
		NivelDeInstrucao nivelDeInstrucao= dao.carrega(id);
		result.forwardTo(this).formulario(nivelDeInstrucao) ;
	}
	
	public void altera(NivelDeInstrucao nivelDeInstrucao){
		validator.validate(nivelDeInstrucao);
		validator.onErrorUsePageOf(this).formulario(nivelDeInstrucao);
		dao.atualiza(nivelDeInstrucao);
		result.redirectTo(this).lista();
	}
	
	public void remove(Long id){
		NivelDeInstrucao NivelDeInstrucao = dao.carrega(id); 
		dao.remove(NivelDeInstrucao);
		result.redirectTo(this).lista();
	}
	
	
	
}


