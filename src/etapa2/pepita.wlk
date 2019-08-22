import comidas.*

/*
 * p.ej. pepita.comer(alpiste, 300) o pepita.comer(alcaucil, 50) 
 */
object pepita {
	var energia = 0
	method energia() { return energia }
	method comer(cosa, gramos) {
		// la "forma corta" 
		energia += cosa.energiaPorGramo() * gramos
		// la "forma larga"
//		energia = energia + cosa.energiaPorGramo() * gramos
	}
	method volar(kms) { energia -= kms + 10 }
	
	// metodos nuevos
	method estaDebil() { 
		return energia < 50
	}  
	
	// está igual de bien, tranca ...
	method estaFeliz_1() { 
		return energia >= 500 and energia <= 1000
	}  

	// ... aunque este nos hace un toque más felices
	method estaFeliz() { 
		return not energia.between(500,1000)
	}  
	
	method cuantoQuiereVolar() { 
		var cuanto = energia / 5
		if (energia.between(300, 400)) { cuanto += 10 }
		if (energia % 20 == 0) { cuanto += 15 }
		return cuanto
	}
	
	method salirAComer() {
		self.volar(5)		// "self" es una referencia al objeto que recibe el mensaje
		pepita.comer(alpiste, 80)
		// ... completar este metodo con las otra acciones sobre self
	}
	
	method haceLoQueQuieras() { 
		if (self.estaDebil()) {
			self.comer(alpiste, 20)
		// completar el método, de acuerdo a la estructura
		// que se deja comentada aca abajo
		} else if (self.estaFeliz()) {
			//		
		}
	}
}