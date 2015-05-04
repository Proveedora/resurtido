package prov.res.importacion

class Maeagt {
    String NUMAGT
    String NUMTIPO
    String NOMBREAGT
    String CALLEAGT
    String COLONIAAGT
    String POBLACIONAGT
    String ESTADOAGT
    String PAISAGT
    String TELAGT
    String TEL2AGT
    String CPAGT
    String RFCAGT
    String MAILAGT
    Double COMVAGT
    Double COMCAGT
    String OBSAGT
    Double USER_ID
    String NUMALM
    String SERIEAGT
    String REPLICA
    String SERIES
    String PRECIOPALM
    String id

    static transactional = false

    static mapping = {
        datasource "firebird"
        version false
        columns{
            id column: "NUMAGT"
        }
    }

    static constraints = {
        NUMAGT (nullable: false)
        NUMTIPO (nullable: false)
        NOMBREAGT (nullable: true)
        CALLEAGT (nullable: true)
        COLONIAAGT (nullable: true)
        POBLACIONAGT (nullable: true)
        ESTADOAGT (nullable: true)
        PAISAGT (nullable: true)
        TELAGT (nullable: true)
        TEL2AGT (nullable: true)
        CPAGT (nullable: true)
        RFCAGT (nullable: true)
        MAILAGT (nullable: true)
        COMVAGT (nullable: true)
        COMCAGT (nullable: true)
        OBSAGT (nullable: true)
        USER_ID (nullable: true)
        NUMALM (nullable: true)
        SERIEAGT (nullable: true)
        REPLICA (nullable: true)
        SERIES (nullable: true)
        PRECIOPALM (nullable: true)

    }

}
