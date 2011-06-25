package br.estacio.hermes.interceptor;

import org.apache.log4j.chainsaw.Main;
import org.hibernate.exception.ConstraintViolationException;

import br.com.caelum.vraptor.InterceptionException;
import br.com.caelum.vraptor.Intercepts;
import br.com.caelum.vraptor.Result;
import br.com.caelum.vraptor.core.InterceptorStack;
import br.com.caelum.vraptor.interceptor.Interceptor;
import br.com.caelum.vraptor.interceptor.OutjectResult;
import br.com.caelum.vraptor.resource.ResourceMethod;
import br.com.caelum.vraptor.util.hibernate.HibernateTransactionInterceptor;
import br.estacio.hermes.controller.MainController;
import br.estacio.hermes.controller.ProfissoesController;


@Intercepts(before=HibernateTransactionInterceptor.class)  
public class ConstraintViolationInterceptor implements Interceptor {  
    
    private final Result result;  
  
    public ConstraintViolationInterceptor(Result result) {  
        this.result = result;  
    }  
  
    public boolean accepts(ResourceMethod method) {  
        return true;  
    }  
  
    public void intercept(InterceptorStack stack, ResourceMethod method, Object resourceInstance) throws InterceptionException {  
        try {  
            stack.next(method,resourceInstance);  
        } catch (ConstraintViolationException e) {  
        	
    	}  
    }  
}  
