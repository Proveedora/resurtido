package prov.res.catalogos

class Proveedor {

    String numpro
    String nompro

    static constraints = {
        numpro blank: false, unique: true
        nompro blank: false
    }
}
