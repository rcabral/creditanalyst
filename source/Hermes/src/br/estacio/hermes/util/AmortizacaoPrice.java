package br.estacio.hermes.util;

/*
 *  This file is part of Alfred Library.
 *
 *  Alfred Library is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Alfred Library is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with Alfred Library.  If not, see <http://www.gnu.org/licenses/>.
 */

/**
 * Utilit�rio para c�lculos de presta��es para financiamentos com amortiza��o pela tabela Price.
 * 
 * @author Rodrigo Moreira Fagundes
 * @since 04/10/2010
 */
public final class AmortizacaoPrice {

        /**
         * Obt�m o acompanhamento do financiamento, presta��o a presta��o, com informa��es
         * do saldo devedor e valor amortizado e juros da parcela. F�rmula aplicada:
         * 
         * P = (p / j)  * ( 1 - ( 1 / ( ( 1 + j ) ^ n ) ) ), onde:
         * 
         * P � o saldo devedor inicial
         * p � o valor da parcela (amortiza��o + juros)
         * j � o juro
         * n � o n�mero de presta��es
         * 
         * @param valorFinanciado Valor do financiamento, que � o saldo devedor inicial
         * @param juros Percentual de juros a que se sujeira o valor presente, pela periodicidade
         *                              do pagamento de parcelas. Se a parcela for mensal, deve-se registrar os
         *                              juros a.m. 
         * @param periodos Quantidade de parcelas do financiamento
         * @param jurosSimples Indicativo se o m�todo de c�lculo de juros � simples (TRUE) ou
         *                                              composto (FALSE)
         * @return Tabela representativa do financiamento
         */
        public static double[][] obter (double valorFinanciado, double juros, int periodos, boolean jurosSimples) {
                double[][] resultado = new double[periodos + 1][4];
                double jurosPrestacao = 0D;
                
                double prestacao = (valorFinanciado * (juros / 100)) / (1 - (1 / Math.pow(1+(juros/100), periodos)));
                
                resultado[0] = new double[] {0, 0, 0, valorFinanciado};
                for (int indice = 1; indice <= periodos; indice++) {
                        if (jurosSimples) {
                                jurosPrestacao = JurosSimples.obterValorFuturo(resultado[indice-1][3], juros, 1) - resultado[indice-1][3];
                        } else {
                                jurosPrestacao = JurosCompostos.obterValorFuturo(resultado[indice-1][3], juros, 1) - resultado[indice-1][3];
                        }
                        double amortizacao = prestacao - jurosPrestacao;
                        double saldoDevedor = resultado[indice-1][3] - amortizacao;
                        resultado[indice] = new double[] {prestacao, jurosPrestacao, amortizacao, saldoDevedor};
                }
                return resultado;
        }
        
}
