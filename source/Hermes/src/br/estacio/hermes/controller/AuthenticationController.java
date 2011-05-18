package br.estacio.hermes.controller;

import br.com.caelum.vraptor.Get;
import br.com.caelum.vraptor.Post;
import br.com.caelum.vraptor.Resource;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.validator.Validations;
import br.estacio.hermes.interceptor.Credencial;
import br.estacio.hermes.interceptor.Restrito;
import br.estacio.hermes.interceptor.UserInfo;
import br.estacio.hermes.dao.CredencialDAO;
import br.estacio.hermes.dao.FuncionarioDAO;
import br.estacio.hermes.interceptor.Publico;
import br.estacio.hermes.model.Funcionario;
import static org.hamcrest.Matchers.is;
import static org.hamcrest.Matchers.notNullValue;

@Resource
public class AuthenticationController {
	
	private final Result result;
	private final Validator validator;
	private final FuncionarioDAO funcionarioDAO;
	private final CredencialDAO credencialDAO;
	private final UserInfo userInfo;
	
	
	
	public AuthenticationController(Result result, Validator validator,
			FuncionarioDAO funcionarioDAO, CredencialDAO credencialDAO,
			UserInfo userInfo) {
		this.result = result;
		this.validator = validator;
		this.funcionarioDAO = funcionarioDAO;
		this.credencialDAO = credencialDAO;
		this.userInfo = userInfo;
	}


	@Publico
	@Get
	public void login(){
		
	}
		
	@Publico
	@Post
	public void autentica(Credencial credencial) {
		// search for the user in the database
		final Funcionario funcionario = funcionarioDAO.carrega(credencial);
		validator.checking(new Validations() {{
		    that(funcionario, is(notNullValue()), "login", "invalid_login_or_password");
		}});
		validator.onErrorUsePageOf(this).login();

		// the login was valid, add user to session
		userInfo.login(funcionario);
		result.redirectTo(MainController.class).main();
	}
	
	@Restrito
	public void logout(){
		userInfo.logout();
		result.redirectTo(this).login();
	}
}
