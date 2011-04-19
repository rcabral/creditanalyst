package br.estacio.hermes.util;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.AnnotationConfiguration;

import br.estacio.hermes.model.Endereco;
import br.estacio.hermes.model.Funcionario;
import br.estacio.hermes.model.Logradouro;
import br.estacio.hermes.model.PessoaFisica;

public class HibernateUtil {
		private static SessionFactory factory;
		static{
			AnnotationConfiguration cfg = new AnnotationConfiguration();
			cfg.addAnnotatedClass(PessoaFisica.class);
			cfg.addAnnotatedClass(Funcionario.class);
			cfg.addAnnotatedClass(Endereco.class);
			cfg.addAnnotatedClass(Logradouro.class);
			factory = cfg.buildSessionFactory(); 
		}
		
		public Session getSession(){
			return factory.openSession();
			
		}
		
}

