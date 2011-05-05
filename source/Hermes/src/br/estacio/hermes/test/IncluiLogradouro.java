package br.estacio.hermes.test;



import java.util.GregorianCalendar;

import org.hibernate.Session;

import br.estacio.hermes.dao.FuncionarioDAO;
import br.estacio.hermes.dao.PerfilDoClienteDAO;
import br.estacio.hermes.model.Endereco;
import br.estacio.hermes.model.Funcionario;
import br.estacio.hermes.model.PerfilDoCliente;
import br.estacio.hermes.model.Sexo;
import br.estacio.hermes.util.HibernateUtil;

public class IncluiLogradouro {
	public static void main(String[] args) {
		Session session = new HibernateUtil().getSession();
		
		
		
		/*
		PerfilDoCliente perfilDoCliente = new PerfilDoCliente();
		perfilDoCliente.setNumeroDeDependentes(0);
		perfilDoCliente.setTempoDeResidenciaAtualEmAnos(27);
		
		PerfilDoClienteDAO perfilDoClienteDAO = new PerfilDoClienteDAO(session);
		perfilDoClienteDAO.salva(perfilDoCliente);
		*/
		
		
			
		
		//TipoDeLogradouroDAO tipoDeLogradouroDAO = new TipoDeLogradouroDAO(session);
		//tipoDeLogradouro = tipoDeLogradouroDAO.procura(1L);
		
		//if (tipoDeLogradouro != null){
		//	System.out.println("tipoDeLogradouro : " + tipoDeLogradouro.getNome());
		//}
		
			
		Funcionario funcionario = new Funcionario();
		funcionario.setNome("Raphael Oliveira Cabral");
		funcionario.setRg("207104175");
		funcionario.setCpf("05586878739");
		funcionario.setDataDeNascimento(new GregorianCalendar(1994, 1, 1));
				//funcionario.setSexo(Sexo.MASCULINO);
		funcionario.setMatricula("finicred-001");
		Endereco endereco = new Endereco();
		endereco.setBairro("covanca");
		endereco.setCep("24412630");
		endereco.setNomeDoLogrado("Aloízio Gonçalves");
		endereco.setNumero(95);
		funcionario.setEndereco(endereco);
		
		
		
		FuncionarioDAO funcionarioDAO = new FuncionarioDAO(session);
		//funcionarioDAO.salva(funcionario);
	
		
		
		
		
		session.close();
				
		
		
	}

}
