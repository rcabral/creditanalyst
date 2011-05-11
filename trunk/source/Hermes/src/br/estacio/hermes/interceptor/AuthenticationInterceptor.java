package br.estacio.hermes.interceptor;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.estacio.hermes.controller.AuthenticationController;

@Intercepts
public class AuthenticationInterceptor implements Interceptor {
	private final UserInfo userInfo;
	private final Result result;
	private final Validator validator;

	public AuthenticationInterceptor(UserInfo info, Result result,
			Validator validator) {
		this.userInfo = info;
		this.result = result;
		this.validator = validator;
	}

	public boolean accepts(ResourceMethod method) {
		return !method.containsAnnotation(Publico.class);
	}

	public void intercept(InterceptorStack stack, ResourceMethod method,
			Object resourceInstance) throws InterceptionException {
		if (userInfo.getUser() == null) {
			result.redirectTo(AuthenticationController.class).login();
		} else {
			stack.next(method, resourceInstance);
		}
	}

}
