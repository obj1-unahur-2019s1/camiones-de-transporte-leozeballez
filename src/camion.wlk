import cosas.*

object camion {
	const property cosas = []
	
	method cargar(cosa) = cosas.add(cosa)
	method descargar(cosa) = cosas.remove(cosa)
	method pesoTotal(){
		var tara = 1000
		return cosas.sum{ c => c.peso() } + tara
	}
	method excedidoDePeso(){
		const pesoMaximo = 2500
		return self.pesoTotal()>pesoMaximo
	}
	method objetosPeligrosos(nivel){
		return cosas.count { c => c.nivelPeligrosidad() > nivel}
	}
	method objetosMasPeligrososQue(cosa){
		return cosas.filter { c => c.nivelPeligrosidad() > cosa.nivelPeligrosidad()}
	}
	method puedeCircularEnRuta(nivelMaximoPeligrosidad){
		return cosas.all { c => c.nivelPeligrosidad() < nivelMaximoPeligrosidad }
	}
	method tieneAlgoQuePesaEntre(min, max) {
		return cosas.any { c => c.peso().between(min, max) }
	}
	method cosaMasPesada() {
		return cosas.filter { c => c.peso() }
	}
	method pesos() { return cosas.peso() }
}
