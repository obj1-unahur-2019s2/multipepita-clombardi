
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
	method energiaPorGramo() { return 5+4 }
}

// despues, agregar mijo y canelones
object mijo {
	
}

object mentitas {
	var energia = 30
	
	method consumiteUnPoco() { energia = energia - 2 }
	// esto tiene que devolver un numero
	method energiaPorGramo() { return energia }
}





















