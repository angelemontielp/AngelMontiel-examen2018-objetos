import cerveza.*

class Costo {
	
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
