package br.estacio.hermes.service;

import br.com.caelum.vraptor.ioc.Component;
import br.estacio.hermes.model.Autenticavel;

@Component
public class AutenticadorService {
	public boolean autentica(Autenticavel autenticavel){
		return false;
	}
}
