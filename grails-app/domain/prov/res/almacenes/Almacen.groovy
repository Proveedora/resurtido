package prov.res.almacenes
class Almacen {

	String clave
	String direccionDB
	String nombre

	static constraints = {
		clave (blank: false)
		direccionDB (blank: false)
		nombre (blank: false)
	}
}