package br.estacio.hermes.model;

public enum TipoDeVinculoComCredor {
	NENHUM("Nenhum"), FUNCIONARIO("Funcion�rio");

	private final String nome;

	TipoDeVinculoComCredor(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}
}
