/***
 * Copyright (c) 2009 Caelum - www.caelum.com.br/opensource
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * 	http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package br.estacio.hermes.interceptor;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.Validator;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.estacio.hermes.controller.AuthenticationController;
import br.estacio.hermes.model.Cargo;

/**
 * Interceptor to check if the user is in the session.
 */
@Intercepts
public class AuthorizationInterceptor implements Interceptor {
	private final UserInfo currentUser;
	private final Result result;
	private final Validator validator;

	public AuthorizationInterceptor(UserInfo currentUser, Result result,
			Validator validator) {
		this.currentUser = currentUser;
		this.result = result;
		this.validator = validator;
	}

	/**
	 * the easiest way to implement the accepts method is creating an annotation
	 */
	public boolean accepts(ResourceMethod method) {
		return method.containsAnnotation(Restrito.class);
	}

	/**
	 * Intercepts the request and checks if there is a user logged in.
	 */
	public void intercept(InterceptorStack stack, ResourceMethod method,
			Object resourceInstance) throws InterceptionException {

		Restrito restrito = method.getMethod().getAnnotation(Restrito.class);
		boolean possuiAcesso = false;
		Cargo[] cargos = restrito.value();

		if (cargos.length == 0) {
			possuiAcesso = true;
		} else {
			if (currentUser != null) {

				for (Cargo cargo : cargos) {
					System.out.println(cargo);
					if (cargo == currentUser.getUser().getCargo())
						possuiAcesso = true;
				}

			}
		}

		if (possuiAcesso) {
			stack.next(method, resourceInstance);
		} else {
			result.redirectTo(AuthenticationController.class).login();
		}
	}

}
