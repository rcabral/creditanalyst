package br.estacio.hermes.model;

public enum Status{
	APROVADO("Aprovada"),CANCELADO("Cancelada"),ANALISE("Em An�lise");
	
	private final String nome;

	Status(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}
}
