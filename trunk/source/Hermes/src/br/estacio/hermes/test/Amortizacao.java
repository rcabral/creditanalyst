package br.estacio.hermes.test;

import br.estacio.hermes.model.Proposta;
import br.estacio.hermes.util.AmortizacaoPrice;

public class Amortizacao {
	public static void main(String[] args) {
		Proposta proposta = new Proposta();
		proposta.setTaxaDeJuros(1);
		proposta.setValor(1000);
		proposta.setQuantidadeDeParcelas(12);
		System.out.println(proposta.calculaPrestacao());
	}

}
