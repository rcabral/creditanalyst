package br.estacio.hermes.interceptor;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

import br.estacio.hermes.model.Cargo;


/**
 * The easiest way to control intercepted methods is through annotations
 *
 */
@Target({ElementType.METHOD})
@Retention(RetentionPolicy.RUNTIME)
public @interface Restrito {
	Cargo[] value() default {};
}



