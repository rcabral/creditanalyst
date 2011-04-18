package br.estacio.hermes;

import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.tool.hbm2ddl.SchemaExport;

import br.estacio.hermes.model.Endereco;
import br.estacio.hermes.model.Funcionario;

public class GeraTabelas {
	public static void main(String[] args) {
		AnnotationConfiguration  cfg = new AnnotationConfiguration();
		cfg.addAnnotatedClass(Endereco.class);
		cfg.addAnnotatedClass(Funcionario.class);
		SchemaExport se = new SchemaExport(cfg);
		se.create(true, true);
	}

}
