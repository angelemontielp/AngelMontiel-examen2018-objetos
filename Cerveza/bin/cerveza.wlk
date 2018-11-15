object clasica{
	
	method fermentacionAlta(){
		return true
	}
	
	method costo(lupulo){
		if(self.fermentacionAlta()){
			return lupulo.costo()*1.1
		}else{
			return lupulo.costo()
		
		}
	}
	
}

object lager{
	
}

object porter{
	
}

object lupuloLocal{
	
	method costo(){
		return 1000
	}
	
}

object lupuloImportado{
	
	method costo(){
		return 800
	}
	
}
