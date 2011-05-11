package br.estacio.hermes.controller;


import br.com.caelum.vraptor.Path;
import br.com.caelum.vraptor.Resource;
import br.estacio.hermes.interceptor.Restrito;
import br.estacio.hermes.model.Cargo;

@Resource
public class MainController {
	
	@Restrito 
	public void main(){
		
	}
}
