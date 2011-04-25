package br.estacio.hermes.model;

public enum NivelDeInstrucao {

	 N1("Analfabeto, inclusive o que, embora tenha recebido instru��o, n�o se alfabetizou. ")
	,N2("At� a 4a s�rie incompleta do ensino fundamental ( antigo 1� grau ou prim�rio), que se tenha alfabetizado sem ter frequentado escola regular.")
	,N3("4a s�rie completa do ensino fundamental (antigo 1� grau ou prim�rio).")
	,N4("Da 5a � 8a do ensino fundamental (antigo 1� grau ou gin�sio).")
	,N5("Ensino fundamental completo (antigo 1� grau ou prim�rio e ginasial).")
	,N6("Ensino m�dio incompleto (antigo 2� grau, secund�rio ou colegial).")
	,N7("Ensino m�dio completo (antigo 2� grau, secund�rio ou colegial).")
	,N8("Educa��o superior incompleta.")
	,N9("Educa��o supeior completa.");

	private final String nome;

	NivelDeInstrucao(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

}

