object pamela {

	const inventario = [ "algodón", "aguaOxigenada", "cintaDePapel", "cintaDePapel" ]
	var energia = 6000

	method inventario() {
		return inventario
	}

	method energia() {
		return energia
	}

	method energia(unaEnergia) {
		energia = unaEnergia
	}

	method luchar() {
		energia += 400
	}

	method gritar() {
		return "acá pasó la Pamela"
	}

}

object pocardo {

	const inventario = [ "guitarra", "curitas", "cotonetes" ]
	var energia = 5600

	method inventario() {
		return inventario
	}

	method energia() {
		return energia
	}

	method energia(unaEnergia) {
		energia = unaEnergia
	}

	method luchar() {
		energia += 500
	}

	method gritar() {
		return "¡Siente el poder de la música!"
	}

}

object tulipan {

	const inventario = [ "rastrillo", "maceta", "maceta", "manguera" ]
	var energia = 8400

	method inventario() {
		return inventario
	}

	method energia() {
		return energia
	}

	method energia(unaEnergia) {
		energia = unaEnergia
	}

	method luchar(unContrincante) {
		unContrincante.energia(unContrincante.energia() * 0.5)
	}

	method gritar() {
		return "Hora de cuidar a las plantas"
	}

}

object toro {

	var inventario = []
	var energia = 7800
	var unItem

	method inventario() {
		return inventario
	}

	method energia() {
		return energia
	}

	method energia(unaEnergia) {
		energia = unaEnergia
	}

	method luchar(unContrincante) {
		unContrincante.energia(unContrincante.energia() - 200 * unContrincante.inventario().size())
		self.robarItem(unContrincante)
	}

	method robarItem(unContrincante){
		unItem = unContrincante.inventario().last()
		inventario.add(unItem)
		unContrincante.inventario().remove(unItem)
	}

	method gritar() {
		return "No se metan con el toro"
	}

}

