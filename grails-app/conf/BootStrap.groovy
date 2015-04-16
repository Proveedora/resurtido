import prov.res.usuarios.Rol
import prov.res.usuarios.Usuario

class BootStrap {

    def init = { servletContext ->
    	Rol rol = new Rol(nombre: "Admin", permisos: "uno").save(failOnError: true)
        //new Usuario(agente:"dsd", contraseña: "david", correo:"admin@admin.com", domicilio:"asdas dasd asd asd",nombre:"David Barranco", telefono:"89080098",usuario:"david").save()
    	new Usuario(agente:"dsd", contraseña: "david", correo:"admin@admin.com", domicilio:"asdas dasd asd asd",nombre:"David Barranco", telefono:"89080098",usuario:"david").addToRoles(rol).save()
    }
    def destroy = {
    }
}
