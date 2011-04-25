package br.estacio.hermes.model;

public enum NivelDeInstrucao {

	 N1("Analfabeto, inclusive o que, embora tenha recebido instrução, não se alfabetizou. ")
	,N2("Até a 4a série incompleta do ensino fundamental ( antigo 1º grau ou primário), que se tenha alfabetizado sem ter frequentado escola regular.")
	,N3("4a série completa do ensino fundamental (antigo 1º grau ou primário).")
	,N4("Da 5a à 8a do ensino fundamental (antigo 1º grau ou ginásio).")
	,N5("Ensino fundamental completo (antigo 1º grau ou primário e ginasial).")
	,N6("Ensino médio incompleto (antigo 2º grau, secundário ou colegial).")
	,N7("Ensino médio completo (antigo 2º grau, secundário ou colegial).")
	,N8("Educação superior incompleta.")
	,N9("Educação supeior completa.");

	private final String nome;

	NivelDeInstrucao(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

}

