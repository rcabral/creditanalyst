package br.estacio.hermes.model;

public enum Role {
	OPERADOR("Operador"),ANALISTA_DE_CREDITO("Analista de Crédito"),GERENTE_DE_ANALISE_DE_CREDITO("Gerente de Análise de Crédito");

	private final String nome;

	Role(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

}
