package br.estacio.hermes;

import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import br.estacio.hermes.model.Endereco;
import br.estacio.hermes.model.Funcionario;
import br.estacio.hermes.model.Logradouro;
import br.estacio.hermes.model.PessoaFisica;

public class GeraTabelas {
	public static void main(String[] args) {
		AnnotationConfiguration  cfg = new AnnotationConfiguration();
		cfg.addAnnotatedClass(PessoaFisica.class);
		cfg.addAnnotatedClass(Funcionario.class);
		cfg.addAnnotatedClass(Endereco.class);
		cfg.addAnnotatedClass(Logradouro.class);
		SchemaExport se = new SchemaExport(cfg);
		se.create(true, true);
	}

}
