
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

// despues, agregar mijo y canelones



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





















