package br.estacio.hermes.model;

public enum TipoDeLogradouro {
		AER("AEROPORTO")     
	   ,AL("ALAMEDA") 	    
	   ,AP("APARTAMENTO")   
	   ,AV("AVENIDA") 	    
	   ,BC("BECO") 	        
	   ,BL("BLOCO") 	      
	   ,CAM("CAMINHO") 	    
	   ,ESCD("ESCADINHA") 	  
	   ,EST("ESTA��O") 	    
	   ,ETR("ESTRADA") 	    
	   ,FAZ("FAZENDA") 	    
	   ,FORT("FORTALEZA") 	  
	   ,GL("GALERIA") 	    
	   ,LD("LADEIRA") 	    
	   ,LGO("LARGO") 	      
	   ,P�A("PRA�A") 	      
	   ,PRQ("PARQUE") 	      
	   ,PR("PRAIA") 	      
	   ,QD("QUADRA") 	      
	   ,KM("QUIL�METRO") 	  
	   ,QTA("QUINTA") 	      
	   ,ROD("RODOVIA") 	    
	   ,R("RUA") 	        
	   ,SQD("SUPER QUADRA") 	
	   ,TRV("TRAVESSA") 	    
	   ,VD("VIADUTO") 	    
	   ,VL("VILA"); 

	private final String nome;

	TipoDeLogradouro(String nome) {
		this.nome = nome;
	}

	public String getNome() {
		return nome;
	}

}

