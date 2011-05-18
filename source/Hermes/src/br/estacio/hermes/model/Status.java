package br.estacio.hermes.model;

public enum Status{
	APROVADO("Aprovado"),CANCELADO("Cancelado"),ANALISE("Em An�lise");
	
	private final String nome;

	Status(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}
}
