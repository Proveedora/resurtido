package prov.res.importacion

class ResMaeart {
    String numart
    Integer estatus
    String id

    static transactional = false

    static mapping = {
        datasource "firebird"
        table "RESMAEART"
        version false
        columns {
            id column: "NUMART"
        }
    }

    static constraints = {
        numart nullable: false, maxSize: 10
        estatus nullable: false
    }
}
