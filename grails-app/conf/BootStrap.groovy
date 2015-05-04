import prov.res.catalogos.Agente
import prov.res.catalogos.Articulo
import prov.res.catalogos.Proveedor
import prov.res.importacion.MaeartService
import prov.res.importacion.MaeproService
import prov.res.importacion.MaeagtService
import prov.res.usuarios.Rol
import prov.res.usuarios.Usuario
import prov.res.almacenes.Almacen
import prov.res.empresa.Empresa
import prov.res.sucursal.Sucursal
import prov.res.catalogos.Unidad

class BootStrap {

    def empresa
    def almacen

    def init = { servletContext ->

    	Rol rol = new Rol(nombre: "Admin", permisos: "uno").save(failOnError: true)
        Empresa empresa = new Empresa(CP:"68050",domicilio:"Nicolas del puerto",estado:"Oaxaca",municipio:"Oaxaca de juarez",pais:"Mexico",razonSocial:"Proveedora Escolar S. de R.L.",regimen:"Mediano",RFC:"PES12345678").save()
        Almacen almacen=new Almacen(clave:"01",direccionDB:"C:/base/winvecaja.fdb",nombre:"Merced").save()
        new Sucursal(clave:"01",,nombre:"prueba",serie:"TA1",ubicacion:"Merced",empresa: empresa).addToAlmacenes(almacen).save()
    	new Usuario(agente:"dsd", contraseña: "david", correo:"admin@admin.com", domicilio:"asdas dasd asd asd",nombre:"David Barranco", telefono:"89080098",usuario:"david").addToRoles(rol).save()
        new Unidad(clave:"PZA",nombre:"Pieza");

        if(!Proveedor.count()){
            def maeproService = new MaeproService()
            maeproService.getProveedores()
        }

        if(!Articulo.count()){
            def maeartService = new MaeartService()
            maeartService.getArticulos()
        }

        if(!Agente.count()){
            def maeagtService = new MaeagtService()
            maeagtService.getAgentes()
        }

    }
    def destroy = {
    }
}
