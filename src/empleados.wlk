object gimenez {

	// la linea que sigue es equivalente a todo lo que está debajo.
	// le agrega al objeto: un atributo, el método para acceder, y el método para modificar.
	// var  sueldo = 15000
//	method sueldo() { return 15000 }
//	method sueldo(nuevoValor) { sueldo = nuevoValor }
	var property sueldo = 15000
	var dineroQueTiene = 0
	var dinero = 0
	var totalDeuda = 0

	method gasto(unValor) {
		totalDeuda = totalDeuda + unValor
	}

	method cobrarSueldo() {
		dinero = dinero + self.sueldo()
		self.pagarDeuda()
	}

	method pagarDeuda() {
		dineroQueTiene = dinero - self.totalDeuda()
		if (dineroQueTiene >= 0) {
			dinero = dineroQueTiene
			totalDeuda = 0
		} else {
			totalDeuda = -dineroQueTiene
			dinero = 0
		}
	}

	method totalDeuda() {
		return totalDeuda
	}

	method totalDinero() {
		return dinero
	}

}

object baigorria {

	var cantidadEmpanadasVendidas = 100
	var montoPorEmpanada = 15
	var dinero = 0

	method venderEmpanada() {
		cantidadEmpanadasVendidas += 1
	}

	method sueldo() =
		 cantidadEmpanadasVendidas * montoPorEmpanada
	

	method cobrarSueldo() {
		dinero = dinero + self.sueldo()
		cantidadEmpanadasVendidas = 100
		
	}

	method totalCobrado() {
		return dinero
	}

	method cantidadEmpanadasVendidas() {
		return cantidadEmpanadasVendidas
		}
	

}

object galvan {

	var dinero = 300000

	method dinero() {
		return dinero
	}

	method pagarA(empleado) {
		dinero -= empleado.sueldo()
		empleado.cobrarSueldo()
	}

}

