import prov.res.usuarios.Rol
import prov.res.usuarios.Usuario
import prov.res.catalogos.*
import prov.res.almacenes.Almacen
import prov.res.empresa.Empresa
import prov.res.sucursal.Sucursal

class BootStrap {

    def fakerService

    def init = { servletContext ->
    	Rol rol = new Rol(nombre: "Admin", permisos: "uno").save(failOnError: true)
        Empresa empresa = new Empresa(CP:"68050",domicilio:"Nicolas del puerto",estado:"Oaxaca",municipio:"Oaxaca de juarez",pais:"Mexico",razonSocial:"Proveedora Escolar S. de R.L.",regimen:"Mediano",RFC:"PES12345678").save()
        Almacen almacen=new Almacen(clave:"01",direccionDB:"C:/base/winvecaja.fdb",nombre:"Merced").save()
        new Sucursal(clave:"01",,nombre:"prueba",serie:"TA1",ubicacion:"Merced",empresa: empresa).addToAlmacenes(almacen).save()
        //new Usuario(agente:"dsd", contraseña: "david", correo:"admin@admin.com", domicilio:"asdas dasd asd asd",nombre:"David Barranco", telefono:"89080098",usuario:"david").save()
    	new Usuario(agente:"dsd", contraseña: "david", correo:"admin@admin.com", domicilio:"asdas dasd asd asd",nombre:"David Barranco", telefono:"89080098",usuario:"david").addToRoles(rol).save()

        for (int i = 0; i < 50; i++) {
            new Agente(numagt: fakerService.zipCode(), nombreagt: fakerService.name(), numalm: fakerService.bothify('##')).save()
        }

        for (int i = 0; i < 30; i++) {
            new Proveedor(numpro: fakerService.bothify('#####?'), nompro: fakerService.companyName()).save()
        }

        for (int i = 0; i < 300; i++) {
            new Articulo(numart: fakerService.letterify('??????'),
                    upcart: fakerService.bothify('?##??##??##?'),
                    nomart: fakerService.sentence(3),
                    uniart: "PZA",
                    crpart: fakerService.numerify('###.##'),
                    flgart: "MNNSNSNNSM",
                    numdep: fakerService.numerify('##'),
                    fucart: fakerService.pastDate(),
                    ivaart: 0.00,
                    tipart: "A",
                    uniart2: "CAJA",
                    nummon: "000",
                    nomart2: fakerService.paragraph(6)).save()
        }



    }
    def destroy = {
    }
}
