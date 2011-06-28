package br.estacio.hermes.controller;

import java.util.List;

import org.hamcrest.core.IsNull;

import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.Validations;
import br.estacio.hermes.dao.BancoDAO;
import br.estacio.hermes.interceptor.Publico;
import br.estacio.hermes.interceptor.Restrito;
import br.estacio.hermes.model.Banco;
import br.estacio.hermes.model.Cargo;
import br.estacio.hermes.model.Profissao;
import br.estacio.hermes.model.Role;

@Resource
public class BancosController {
	private final BancoDAO dao;
	private final Result result;
	private final Validator validator;

	public BancosController(BancoDAO dao, Result result, Validator validator) {
		this.dao = dao;
		this.result = result;
		this.validator = validator;
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public List<Banco> lista() {
		List<Banco> bancos = dao.lista();
		return bancos;
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public Banco novo(Banco banco){
		return banco;
	}
	
	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public void adiciona(Banco banco) {
		validator.validate(banco);
		validator.onErrorUsePageOf(this).novo(banco);
		
		final Banco bancoJaCadastrado =  dao.carrega(banco.getNumero());
		validator.checking(new Validations() {
			{
				that(bancoJaCadastrado,IsNull.nullValue(),"Banco","validator.registered");
			}
		});
		validator.onErrorUsePageOf(this).novo(banco);
		
		dao.salva(banco);
		result.redirectTo(this).lista();
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public Banco edita(Long id){
		Banco banco= dao.carrega(id);
		return banco;
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public void altera(Banco banco) {
		validator.validate(banco);
		validator.onErrorUsePageOf(this).edita(banco.getNumero());
		dao.atualiza(banco);
		result.redirectTo(this).lista();
	}

	@Restrito({ Cargo.GERENTE_DE_ANALISE_DE_CREDITO,Cargo.ANALISTA_DE_CREDITO })
	public void remove(Long id) {
		Banco banco = dao.carrega(id);
		dao.remove(banco);
		result.redirectTo(this).lista();
	}

}
