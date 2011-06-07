package br.estacio.hermes.test;

import java.lang.reflect.*;  

import br.estacio.hermes.interceptor.Restrito;

public class InvocaMetodo {  
  
    public int umMetodo(int a, int b) {  
        return a + b;  
    }  
    
    public int umMetodo() {  
        return 1;  
    }
    
    public static void main(String args[]) {  
        try {  
            Class partypes[] = new Class[2];  
            partypes[0] = Integer.TYPE;  
            partypes[1] = Integer.TYPE;  
  
            Class cls = Class.forName("br.estacio.hermes.test.InvocaMetodo");  
            Method meth = cls.getMethod("umMetodo");  
          
            //Object arglist[] = new Object[2];  
            //arglist[0] = new Integer(37);  
           // arglist[1] = new Integer(47);  
  
            InvocaMetodo methobj = new InvocaMetodo();  
            Object retobj = meth.invoke(methobj);  
            Integer retval = (Integer)retobj;  
            System.out.println(retval.intValue());  
        }  
        catch (Throwable e) {  
            System.err.println(e);  
        }  
    }  
} 
