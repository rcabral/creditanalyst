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

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.estacio.hermes.model.Autenticavel;
import br.estacio.hermes.model.Funcionario;

/**
 * Represents the user logged in the system.
 * @author Caio Filipini
 */
@Component
@SessionScoped
public class UserInfo {

    private Funcionario user;

    public Funcionario getUser() {
        return user;
    }

    public void login(Funcionario user) {
        this.user = user;
    }

    public void logout() {
        this.user = null;
    }

}
