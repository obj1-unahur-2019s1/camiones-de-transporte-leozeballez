object knightRider {
	method peso() { return 500 }
	method nivelPeligrosidad() { return 10 }
}

object bumblebee {
	var transformadoEnAuto = true
	
	method peso() { return 800 }
	method nivelPeligrosidad() { return if (transformadoEnAuto) { 15 } else { 30 }  }
	method transformar() { transformadoEnAuto = not transformadoEnAuto }
}

object paqueteDeLadrillos {
	var property cantidad
	method peso() = return 2*cantidad
	method nivelPeligrosidad() = return 2 //*cantidad?
}

object arenaAGranel {
	var property peso
	method nivelPeligrosidad() = return 1
}

object bateriaAntiaerea {
	var estaConMisiles = true
	method peso() { return if(estaConMisiles) {300} else {200} }
	method cargarODescargarMisiles() { estaConMisiles = not estaConMisiles }
	method nivelPeligrosidad() { return if(estaConMisiles) {100} else {0} }
}

object contenedorPortuario {
	const property cosas = []
	method peso() { return cosas.sum { c => c.peso() } + 100 }
	method nivelPeligrosidad() { return cosas.max{ c => c.nivelPeligrosidad() } }
}

object residuosRadioactivos {
	var property peso
	method nivelPeligrosidad() { return 200 }
}

object embalajeDeSeguridad {
	var property cosas = []
	method peso() { return cosas.peso() }
	method nivelPeligrosidad() { return cosas.nivelPeligrosidad() /2 }
}