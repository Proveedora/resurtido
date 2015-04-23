package prov.res.usuarios

class Rol {

        //SortedSet usuarios
	String nombre
	String permisos

	static hasMany = [usuarios : Usuario]
    static belongsTo = Usuario

    static constraints = {
    	nombre nullable: false
    }

    String toString(){
    	return this.nombre
    }
}
