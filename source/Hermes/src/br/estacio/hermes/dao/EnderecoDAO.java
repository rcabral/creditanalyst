package br.estacio.hermes.dao;
import java.util.List;

import org.hibernate.Session;

import br.estacio.hermes.model.Endereco;

public class EnderecoDAO {
	
private Session session;
	
	public EnderecoDAO(Session session){
		this.session = session;
	}
	
	public void salva(Endereco p){
		this.session.save(p);
	}
	
	public void remove(Endereco p){
		this.session.delete(p);
		this.session.flush();
	}
	public Endereco procura(Long id){
		return (Endereco)this.session.load(Endereco.class,id);
	}
	public void atualiza(Endereco p){
		this.session.update(p);
		this.session.flush();
	}

	@SuppressWarnings("unchecked")
	public List<Endereco> lista(){
		return this.session.createCriteria(Endereco.class).list();
	}


}
