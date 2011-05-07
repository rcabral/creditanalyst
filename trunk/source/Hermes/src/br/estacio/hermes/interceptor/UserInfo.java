package br.estacio.hermes.interceptor;

import br.com.caelum.vraptor.ioc.Component;
import br.com.caelum.vraptor.ioc.SessionScoped;
import br.estacio.hermes.model.Funcionario;


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
