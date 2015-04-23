package prov.res.almacenes
import prov.res.sucursal.Sucursal
class Almacen {

	String clave
	String direccionDB
	String nombre
	static belongsTo =  Sucursal

	static constraints = {
		clave (blank: false)
		direccionDB (blank: false)
		nombre (blank: false)
	}
}