package br.estacio.hermes.model;

import javax.persistence.GeneratedValue;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;



@Entity
public class Funcionario extends PessoaFisica implements Autenticavel {
	@Id
	@GeneratedValue
	private Long id;
	String matricula;
	String login;
	String senha;
	@OneToOne
	Endereco endereco;
		
	public boolean autentica(String login, String senha) {
		if(this.login == login && this.senha == senha ){
			return true;
		}else{
			return false;
		}
	}

}
