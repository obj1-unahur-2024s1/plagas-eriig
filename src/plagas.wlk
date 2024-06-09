import elementos.*

class Plaga {
	var poblacion
	
	method transmiteEnfermedades() = poblacion >= 10
	method atacarElemento(unElemento) {
		unElemento.recibirAtaqueDe(self)
		self.efectoAtaque()
	} 
	method efectoAtaque() {
		poblacion *= 1.1
	}
}

class Cucarachas inherits Plaga {
	var pesoPromedioBicho
	
	method nivelDeDanio() = poblacion * 0.5
	override method transmiteEnfermedades() = super() && pesoPromedioBicho >= 10
	override method efectoAtaque() {
		super()
		pesoPromedioBicho += 2
	}
}

class Pulgas inherits Plaga {
	method nivelDeDanio() = poblacion * 2
	
}

class Garrapatas inherits Pulgas {
	override method efectoAtaque() {poblacion *= 1.2}
	
}

class Mosquitos inherits Plaga {
	method nivelDeDanio() = poblacion 
	override method transmiteEnfermedades() = super() && poblacion % 3 == 0
	
}