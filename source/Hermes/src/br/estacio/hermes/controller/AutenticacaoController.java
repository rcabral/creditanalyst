package br.estacio.hermes.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.Validations;
import br.estacio.hermes.interceptor.UserInfo;
import br.estacio.hermes.dao.FuncionarioDAO;
import br.estacio.hermes.interceptor.Public;
import br.estacio.hermes.model.Autenticavel;
import br.estacio.hermes.model.Credencial;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.notNullValue;

@Resource
public class AutenticacaoController {
	
	private final Result result;
	private final Validator validator;
	private final FuncionarioDAO funcionarioDAO;
	private final UserInfo userInfo;
	
	public AutenticacaoController(Result result, Validator validator,
			FuncionarioDAO funcionarioDAO, UserInfo userInfo) {
		this.result = result;
		this.validator = validator;
		this.funcionarioDAO = funcionarioDAO;
		this.userInfo = userInfo;
	}
	
	@Public
	@Get
	public void login(){
		
	}
	
	@Post
	@Public
	public void login(Credencial credencial) {
		// search for the user in the database
		//final Autenticavel currentUser = funcionarioDAO.carrega(credencial);
		// if no user is found, adds an error message to the validator
		// "invalid_login_or_password" is the message key from messages.properties,
		// and that key is used with the fmt taglib in index.jsp, for example: <fmt:message key="error.key">
		//validator.checking(new Validations() {{
		 //   that(currentUser, is(notNullValue()), "login", "invalid_login_or_password");
		//}});
		// you can use "this" to redirect to another logic from this controller
		//validator.onErrorUsePageOf(this).login();

		// the login was valid, add user to session
		//userInfo.login(currentUser);
		//result.redirectTo(ClientesController.class).lista();
	}

}
