package br.estacio.hermes.util;

public final class JurosSimples {

    /**
     * Obt�m o valor futuro, que � o valor presente (inicial) ao final
     * da opera��o, ap�s sofrer todos juros por todo per�odo indicado.
     * 
     * @param valorPresente Valor sujeito a juros
     * @param juros Percentual de juros a que se sujeira o valor presente 
     * @param periodos Quantidade de per�odos a que o valor presente
     *                                      se sujeita aos juros
     * @return Valor Futuro
     */
    public static double obterValorFuturo (double valorPresente, double juros, double periodos) {
            return valorPresente * (1 + (juros / 100) * periodos);
    }
    
    /**
     * Obt�m o valor presente, original da opera��o, antes de se sujeitar
     * aos juros.
     * 
     * @param valorFuturo Valor ao final da opera��o, ap�s sofrer todos
     *                                              juros por todo per�odo indicado
     * @param juros Percentual de juros a que se sujeira o valor presente
     * @param periodos Quantidade de per�odos a que o valor presente
     *                                      se sujeita aos juros
     * @return Valor Presente
     */
    public static double obterValorPresente (double valorFuturo, double juros, double periodos) {
            return valorFuturo / (1 + (juros / 100) * periodos);
    }
    
    /**
     * Obt�m o juro percentual a que o valor presente se sujeita
     * 
     * @param valorPresente Valor sujeito a juros
     * @param valorFuturo Valor ao final da opera��o, ap�s sofrer todos
     *                                              juros por todo per�odo indicado
     * @param periodos Quantidade de per�odos a que o valor presente
     *                                      se sujeita aos juros
     * @return Percentual de juros a que se sujeira o valor presente
     */
    public static double obterJuros (double valorPresente, double valorFuturo, double periodos) {
            return (((valorFuturo / valorPresente) - 1) / periodos) * 100;
    }
    
    /**
     * Obt�m quantidade de per�odos em que o valor presente est� sujeito aos juros
     * 
     * @param valorPresente Valor sujeito a juros
     * @param valorFuturo Valor ao final da opera��o, ap�s sofrer todos
     *                                              juros por todo per�odo indicado
     * @param juros Percentual de juros a que se sujeira o valor presente
     * @return Quantidade de per�odos a que o valor presente se sujeita aos juros
     */
    public static double obterPeriodos (double valorPresente, double valorFuturo, double juros) {
            return ((valorFuturo / valorPresente) - 1) / (juros / 100);
    }
    
}

