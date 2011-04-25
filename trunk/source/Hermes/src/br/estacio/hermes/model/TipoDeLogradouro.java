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
	   ,EST("ESTAÇÃO") 	    
	   ,ETR("ESTRADA") 	    
	   ,FAZ("FAZENDA") 	    
	   ,FORT("FORTALEZA") 	  
	   ,GL("GALERIA") 	    
	   ,LD("LADEIRA") 	    
	   ,LGO("LARGO") 	      
	   ,PÇA("PRAÇA") 	      
	   ,PRQ("PARQUE") 	      
	   ,PR("PRAIA") 	      
	   ,QD("QUADRA") 	      
	   ,KM("QUILÔMETRO") 	  
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

