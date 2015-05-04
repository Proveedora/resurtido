package prov.res.sucursal
import prov.res.empresa.Empresa
import prov.res.almacenes.Almacen
class Sucursal{
	String clave
	String nombre
	String serie
	String ubicacion
	Empresa empresa
	static hasMany = [almacenes:Almacen]
	
	

	static constraints = {
		clave (blank: false)
		nombre (blank:false)
		serie (blank: false)
		ubicacion (blank: false)
	}

	
	String toString(){
		return this.nombre
	}

}