package br.estacio.hermes.model;

public enum TipoDeResposta{
	Boolean("Boleano"),Integer("Inteiro"),Real("Real"),SEM_RESPOSTA("Sem Resposta");

	private final String nome;

	TipoDeResposta(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}


}
