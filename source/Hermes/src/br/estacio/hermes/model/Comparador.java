package br.estacio.hermes.model;

public enum Comparador {

	IGUAL("= (IGUAL À)"),MENOR("< (MENOR QUE)"),MAIOR("> (MAIOR QUE)"),DIFERENTE("<>(DIFERENTE DE)");

	private final String nome;

	Comparador(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

}


