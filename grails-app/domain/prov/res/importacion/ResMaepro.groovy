package prov.res.importacion

class ResMaepro {
    String numpro
    Integer estatus
    String id

    static transactional = false

    static mapping = {
        datasource "firebird"
        version false
        table "RESMAEPRO"
        columns {
            id column: "NUMPRO"
        }
    }

    static constraints = {
        numpro nullable: false, maxSize: 10
        estatus nullable: false
    }
}
