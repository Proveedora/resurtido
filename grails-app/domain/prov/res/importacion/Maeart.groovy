package prov.res.importacion

class Maeart {
    String id
    String NUMART
    String UPCART
    String MODART
    String NOMART
    String UNIART
    Double UEXART
    Double COUART
    Double CRPART
    Double COAART
    Double CPRART
    Double MINART
    Double MAXART
    Double EX1ART
    Double EX2ART
    String FLGART
    String NUMDEP
    Date FUCART
    Double IEPART
    Double IVAART
    Double LARART
    Double ANCART
    Double ALTART
    Double DEMXART
    Double PESOART
    Double CUEPSART
    Double CPEPSART
    Double CDETART
    String FC1ART
    String FC2ART
    String TIPART
    String UNIART2
    String NUMMON
    String NOMART2
    String REPLICA
    Date FECACTCOS
    String CODBASE
    Integer NUMCARSUFIJO
    String IMAGART
    String NUMMED

    static transactional = false

    static mapping = {
        datasource "firebird"
        version false
        columns{
            id column: "NUMART"
        }
    }


    static constraints = {
        NUMART (nullable: false)
    }
}
