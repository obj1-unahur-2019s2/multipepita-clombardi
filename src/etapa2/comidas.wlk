
object alpiste {
	method energiaPorGramo() { return 4 }
}

object mondongo {
	method energiaPorGramo() { return 100 }
}

// comida que esta fallada
object bigMac {
	method energiaPorGramo() { return 2 }
}

/*
 * el alcaucil da 20 joules por gramo
 */ 
object alcaucil {
	method energiaPorGramo() { return 20 }
}

/*
 * el sorgo da 9 joules por gramo
 */ 
object sorgo {
	// esto para mostrar que el valor de retorno 
	// puede ser el resultado de una cuenta
	method energiaPorGramo() { return 5+4 }
}

/* 
 * una forma de resolver el mijo
 */
object mijo {
	var energia = 0
	
	method mojarse() { energia = 15 }
	method secarse() { energia = 20 }
	method energiaPorGramo() { return energia }
}

/* 
 * otra forma de resolver el mijo
 * Las dos están igual de bien.
 * A pepita le es indistinto cómo está implementado el mijo,
 * mientras le responda la energiaPorGramo
 */
object mijo_alternativo {
	var estaMojado = false 
	
	method mojarse() { estaMojado = true }
	method secarse() { estaMojado = false }
	method energiaPorGramo() { 
		if (estaMojado) {
			return 15
		} else {
			return 20
		}
	}
}


/*
 * canelones, esta solución se queda corta
 */
object canelones_corto {
	var energia = 20 
	method ponerSalsa() { energia = energia + 5 }
	method sacarSalsa() { energia -= 5 }
	method ponerQueso() { energia = energia + 7 }
	method sacarQueso() { energia = energia - 7 }
	method energiaPorGramo() { return energia }
}

object canelones {
	var tieneQueso = false 
	var tieneSalsa = false 
	method ponerSalsa() { tieneSalsa = true }
	method sacarSalsa() { tieneSalsa = false }
	method ponerQueso() { tieneQueso = true }
	method sacarQueso() { tieneQueso = false }
	method energiaPorGramo() { 
		if (not tieneSalsa and not tieneQueso) {
			return 20
		} else if (tieneSalsa and not tieneQueso) {
			return 25
		} else if (not tieneSalsa and tieneQueso) {
			return 27
		} else {  // tiene ambas
			return 32
		}
	}
}


/* ejemplo agregado en clase para mostrar
 * que el valor de retorno de energiaPorGramo
 * puede determinarse a partir del estado del objeto.
 * A pepita no le importa cómo hace la comida para calcular 
 * la energiaPorGramo.
 */
object mentitas {
	var energia = 30
	
	method consumiteUnPoco() { energia = energia - 2 }
	// esto tiene que devolver un numero
	method energiaPorGramo() { return energia }
}





















