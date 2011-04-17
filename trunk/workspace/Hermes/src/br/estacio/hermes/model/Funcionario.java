package br.estacio.hermes.model;

public class Funcionario extends PessoaFisica implements Autenticavel {
	String matricula;
	String login;
	String senha;
	Endereco endereco;
		
	public boolean autentica(String login, String senha) {
		if(this.login == login && this.senha == senha ){
			return true;
		}else{
			return false;
		}
	}

}
