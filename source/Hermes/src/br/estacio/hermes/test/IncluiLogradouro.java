package br.estacio.hermes.test;


import org.hibernate.Session;

import br.estacio.hermes.dao.LogradouroDAO;
import br.estacio.hermes.model.Logradouro;
import br.estacio.hermes.util.HibernateUtil;

public class IncluiLogradouro {
	public static void main(String[] args) {
		
		Logradouro logradouro = new Logradouro();
		logradouro.setAbreviacao("R");
		logradouro.setNome("Rua");
		
						
		Session session = new HibernateUtil().getSession();
		LogradouroDAO logradouroDAO = new LogradouroDAO(session);
		logradouroDAO.salva(logradouro);
		session.close();
				
		
		
	}

}
