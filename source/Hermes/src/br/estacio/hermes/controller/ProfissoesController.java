package br.estacio.hermes.controller;

import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.notNullValue;

import java.util.ArrayList;
import java.util.List;

import javax.validation.ConstraintViolationException;



import org.hamcrest.core.IsNull;
import org.hibernate.JDBCException;
import org.hibernate.validator.constraints.impl.NullValidator;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.Validations;
import br.estacio.hermes.dao.ProfissaoDAO;
import br.estacio.hermes.interceptor.Restrito;
import br.estacio.hermes.model.Cargo;
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

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public List<Profissao> lista(){
		List<Profissao> profissoes = dao.lista();
		return profissoes;
	}
	
	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public Profissao novo(Profissao profissao){
		return profissao;
	}
	
	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public void adiciona(Profissao profissao){
		validator.validate(profissao);
		validator.onErrorUsePageOf(this).novo(profissao);
		
		
		final Profissao profissaoJaCadastrada =  dao.carrega(profissao.getCodigoCBO());
			
		validator.checking(new Validations() {
			{
				that(profissaoJaCadastrada,IsNull.nullValue(),"Código CBO","validator.registered");
			}
		});
		
		validator.onErrorUsePageOf(this).novo(profissao);
		
		dao.salva(profissao);
		result.redirectTo(this).lista();
	}
	
	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public Profissao edita(Long id){
		Profissao profissao= dao.carrega(id);
		return profissao;
	}
	
	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public void altera(Profissao profissao){
		validator.validate(profissao);
		validator.onErrorUsePageOf(this).edita(profissao.getCodigoCBO());
		dao.atualiza(profissao);
		result.redirectTo(this).lista();
	}
	
	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public void remove(Long id){
		Profissao Profissao = dao.carrega(id); 
		dao.remove(Profissao);
		result.redirectTo(this).lista();
	}
	
	public void constraintViolationException(){
	}	
}


