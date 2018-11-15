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
	
	var property cantIngredientes
	
	method cantIngredientes(){
		if(cantIngredientes<=10){
			return cantIngredientes
		
		}else{
			return "No puede tener más de 10 ingredientes"
			
		}
	}
	
	method fermentacionAlta(){
		return true
	}
	
	method costo(lupulo){
		if(self.fermentacionAlta()){
			return lupulo.costo()*1.1 + self.cantIngredientes()*50
		}else{
			return lupulo.costo()	+ + self.cantIngredientes()*50
		}
	}
	
	
}

object porter{
		
	method fermentacionAlta(){
		return true
	}
	
	method proveedor(){
		return km
	}
	
	method costo(lupulo){
		if(self.fermentacionAlta()){
			return lupulo.costo()*1.1 + (lupulo.costo()*1.1)*self.proveedor()*0.02
		}else{
			return lupulo.costo() + (lupulo.costo()*1.1)*self.proveedor()*0.02	
		}
	}
	
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

object tresBirreros{
	var property cantPedidos = []
	method cantPedidos (_cantPedidos){
		cantPedidos.add(_cantPedidos)
		return cantPedidos
	}
}


object moe{
	var property cantPedidos = []
	method cantPedidos (_pedido){
		cantPedidos.add(_pedido)
		return cantPedidos
	}
}


