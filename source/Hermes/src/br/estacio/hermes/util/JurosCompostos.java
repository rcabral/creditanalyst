package br.estacio.hermes.util;

/**
 * Utilit�rio para c�lculos envolvendo juros compostos, usando a f�rmula:
 * 
 * FV = PV * (1 + i) ^ n
 * 
 * FV: Valor Futuro (do ingl�s Future Value)
 * PV: Valor Presente (do ingl�s Present Value)
 * i: Taxa de juros (do ingl�s Interest Rate)
 * n: N�mero de per�odos
 *  
 * @author Rodrigo Moreira Fagundes
 * @since 03/10/2010
 */
public final class JurosCompostos {

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
                return valorPresente * Math.pow(1 + (juros / 100), periodos);
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
                return valorFuturo / Math.pow(1 + (juros / 100), periodos);
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
                return (Math.pow(valorFuturo / valorPresente, 1 / periodos) - 1) * 100;
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
                return Logaritmo.obter(valorFuturo / valorPresente, 1 + (juros / 100));
        }
     
}

