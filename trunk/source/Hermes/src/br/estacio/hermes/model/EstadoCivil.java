package br.estacio.hermes.model;

public enum EstadoCivil {
	CASADO("Casado"), SOLTEIRO("Solteiro"), VIUVO("Víuvo"), SEPARADOJUDICIALMENTE(
			"Separado Judicialmente"), DIVORCIADO("Divorciado");

	private final String nome;

	EstadoCivil(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}
}
