package br.estacio.hermes.util;

public final class JurosSimples {

    /**
     * Obtém o valor futuro, que é o valor presente (inicial) ao final
     * da operação, após sofrer todos juros por todo período indicado.
     * 
     * @param valorPresente Valor sujeito a juros
     * @param juros Percentual de juros a que se sujeira o valor presente 
     * @param periodos Quantidade de períodos a que o valor presente
     *                                      se sujeita aos juros
     * @return Valor Futuro
     */
    public static double obterValorFuturo (double valorPresente, double juros, double periodos) {
            return valorPresente * (1 + (juros / 100) * periodos);
    }
    
    /**
     * Obtém o valor presente, original da operação, antes de se sujeitar
     * aos juros.
     * 
     * @param valorFuturo Valor ao final da operação, após sofrer todos
     *                                              juros por todo período indicado
     * @param juros Percentual de juros a que se sujeira o valor presente
     * @param periodos Quantidade de períodos a que o valor presente
     *                                      se sujeita aos juros
     * @return Valor Presente
     */
    public static double obterValorPresente (double valorFuturo, double juros, double periodos) {
            return valorFuturo / (1 + (juros / 100) * periodos);
    }
    
    /**
     * Obtém o juro percentual a que o valor presente se sujeita
     * 
     * @param valorPresente Valor sujeito a juros
     * @param valorFuturo Valor ao final da operação, após sofrer todos
     *                                              juros por todo período indicado
     * @param periodos Quantidade de períodos a que o valor presente
     *                                      se sujeita aos juros
     * @return Percentual de juros a que se sujeira o valor presente
     */
    public static double obterJuros (double valorPresente, double valorFuturo, double periodos) {
            return (((valorFuturo / valorPresente) - 1) / periodos) * 100;
    }
    
    /**
     * Obtém quantidade de períodos em que o valor presente está sujeito aos juros
     * 
     * @param valorPresente Valor sujeito a juros
     * @param valorFuturo Valor ao final da operação, após sofrer todos
     *                                              juros por todo período indicado
     * @param juros Percentual de juros a que se sujeira o valor presente
     * @return Quantidade de períodos a que o valor presente se sujeita aos juros
     */
    public static double obterPeriodos (double valorPresente, double valorFuturo, double juros) {
            return ((valorFuturo / valorPresente) - 1) / (juros / 100);
    }
    
}

