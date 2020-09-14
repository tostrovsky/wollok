import luchadores.*

object partida {

	var primerEquipo 
	var segundoEquipo 
	var energiaDelPrimero
	var energiaDelSegundo

	method primerEquipo() {
		return primerEquipo
	}

	method segundoEquipo() {
		return segundoEquipo 
	}

	method primerEquipo(unLuchador, otroLuchador) {
		primerEquipo = [ unLuchador, otroLuchador ]
	}

	method segundoEquipo(unLuchador, otroLuchador) {
		segundoEquipo = [ unLuchador, otroLuchador ]
	}

	method partida() {
		primerEquipo.forEach{ luchador => luchador.lucharContraEquipo(segundoEquipo)}
		segundoEquipo.forEach{ luchador => luchador.lucharContraEquipo(primerEquipo)}
		return self.obtenerGritoGanador()
	}

	method obtenerGritoGanador() {
		energiaDelPrimero = self.obtenerEnergia(primerEquipo)
		energiaDelSegundo = self.obtenerEnergia(segundoEquipo)
		if (energiaDelPrimero >= energiaDelSegundo) {
			return self.gritoDeEquipo(primerEquipo)
		} else {
			return self.gritoDeEquipo(segundoEquipo)
		}
	}

	method gritoDeEquipo(unEquipo) {
		return unEquipo.map{ luchador => luchador.gritar() }
	}
	method obtenerEnergia(unEquipo) {
		return unEquipo.map{ luchador => luchador.energia() }.sum()
	}

}

/*	method partida() {
 * 		self.pelea(primerEquipo, segundoEquipo)
 * 		self.pelea(segundoEquipo, primerEquipo)
 * 		
 * 		self.obtenerGanador()
 * 	
 * 	}

 * 	method obtenerGanador() {
 * 		energiaDelPrimero = self.obtenerEnergia(primerEquipo)
 * 		energiaDelSegundo = self.obtenerEnergia(segundoEquipo)
 * 		if (energiaDelPrimero > energiaDelSegundo) {
 * 			return primerEquipo
 * 		} else {
 * 			if (energiaDelPrimero < energiaDelSegundo) {
 * 				return segundoEquipo
 * 			} else {
 * 				return null
 * 			}
 * 		}
 * 	}

 * 	method obtenerEnergia(unEquipo) {
 * 		return unEquipo.map{ luchador => luchador.energia() }.sum()
 * 	}

 * 	method pelea(primero, segundo) {
 * 		primero.first().luchar(segundo.first())
 * 		primero.first().luchar(segundo.last())
 * 		primero.last().luchar(segundo.first())
 * 		primero.last().luchar(segundo.last())
 * 	}
 */
