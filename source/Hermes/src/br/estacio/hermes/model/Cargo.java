package br.estacio.hermes.model;

public enum Cargo {
	OPERADOR("Operador"),ANALISTA_DE_CREDITO("Analista de Cr�dito"),GERENTE_DE_ANALISE_DE_CREDITO("Gerente de An�lise de Cr�dito");

	private final String nome;

	Cargo(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}
}
