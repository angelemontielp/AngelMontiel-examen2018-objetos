import cerveza.*

class Distribuidora {
	
	var property pedidos = []
	var property costoLote
	var property costoPedido
	
	var property cantClasica
	var property cantLager
	var property cantPorter
	
	var property pedidoMasCaro = 0
	
	method addLotesAPedido(tipoDeLote){
		pedidos.add(tipoDeLote)
		return pedidos
	}
	
	method addPedidostoDistribuidora(pedido, distribuidora){
		distribuidora.cantPedidos(pedido)
		return distribuidora.cantPedidos()
	}
	
	
	method daDescuento(distribuidora){
		return ((distribuidora == tresBirreros &&  pedidos.size()>=3)||(distribuidora == moe &&  pedidos.size()>=7))	
	}
	
	 
	method descuento(tipoDeLote, distribuidora){
		if(self.daDescuento(distribuidora)){
			if(tipoDeLote == clasica){
				return 0
			}else if(tipoDeLote == lager){
				if(tipoDeLote.cantIngredientes() > 5){
					return 0.2
				}else if(tipoDeLote.cantIngredientes() > 1 && tipoDeLote.cantIngredientes() < 5){
					return tipoDeLote.cantIngredientes()*0.02
				}else {
					return 0
				}
			}else if (tipoDeLote == porter && tipoDeLote.proveedor() < 10){
				return 0.1	
			}else{
				return 0
			}	
		}else{
			return 0
		}
	}
	
	method costoLote(tipoDeLote, distribuidora, lupulo){
		costoLote = tipoDeLote.costo(lupulo) - tipoDeLote.costo(lupulo)*self.descuento(tipoDeLote, distribuidora)
		return costoLote
	}
	
	method costoPedido(distribuidora){
		costoPedido = pedidos.size()*costoLote
		return costoPedido
	}
	
	
	method totalFacturado(distribuidora){
		return distribuidora.cantPedidos()*costoPedido
	}
	
	method cantTipoDePedido(tipoDeLote){
		if(tipoDeLote == clasica){
			cantClasica = cantClasica + 1
			return cantClasica
		}else if(tipoDeLote == lager){
			cantLager = cantLager + 1
			return cantLager
		}else{
			cantPorter = cantPorter + 1
			return cantPorter
		}
		
	}
	
	method pedidoMasCaro(distribuidora){
		if (self.costoPedido() > pedidoMasCaro){
			pedidoMasCaro = costoPedido
		}
	}	
}
