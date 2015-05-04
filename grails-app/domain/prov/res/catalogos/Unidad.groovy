package prov.res.catalogos

class Unidad {

    String clave
    String nombre

    static constraints = {
        clave blank: false, unique: true
        nombre blank: false
    }
}
