package prov.res.importacion

class ResMaeagt {
    String numagt
    Integer estatus
    String id

    static transactional = false

    static mapping = {
        datasource "firebird"
        table "RESMAEAGT"
        version false
        columns {
            id column: "NUMAGT"
        }
    }

    static constraints = {
        numagt nullable: false, maxSize: 5
        estatus nullable: false
    }
}
