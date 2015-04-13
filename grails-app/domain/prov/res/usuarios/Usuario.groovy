package prov.res.usuarios

class Usuario {

	String agente
	String contraseña
	String correo
	String domicilio
	String nombre
	String telefono
	String usuario
	Rol rol

    static constraints = {
    	agente nullable: false
	contraseña nullable: false, maxSize: 12
	correo nullable: false
	domicilio nullable: true
	nombre nullable: false
	telefono nullable: true
	usuario nullable: false
	rol nullable: false
    }
}
