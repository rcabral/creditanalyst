package br.estacio.hermes.test;

import java.util.Calendar;

import br.estacio.hermes.util.Util;


public class Teste {
	public static void main(String[] args) {
		
		Calendar ca1 = Calendar.getInstance();
        Calendar ca2 = Calendar.getInstance();
		 
        ca1.set(2011, 05, 19);
        ca2.set(2011, 05, 21);
		 
		
		int result = Util.diffOfDays(ca1, ca2);
		
		System.out.println(result);
		
	}
}
