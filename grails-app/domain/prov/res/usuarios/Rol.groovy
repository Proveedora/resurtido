package prov.res.usuarios

class Rol {

	String nombre
	String permisos

    static constraints = {
    	nombre nullable: false
    }

    String toString(){
    	return this.nombre
    }
}
