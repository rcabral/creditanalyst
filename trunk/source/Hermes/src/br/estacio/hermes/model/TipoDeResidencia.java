package br.estacio.hermes.model;

public enum TipoDeResidencia {
	PROPRIA("Própria"), ALUGADA("Alugada");

	private final String nome;

	TipoDeResidencia(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}
}
