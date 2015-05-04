package prov.res.importacion

class Maepro {

    String id

    String NUMPRO
    String NOMPRO
    String RAZPRO
    String DIRPRO
    String COLPRO
    String POBPRO
    String ESTADO
    String PAIS
    String TELPRO
    String CTAPRO
    String FAXPRO
    String VENPRO
    Integer PZOPRO
    String CTCPRO
    String OBSPRO
    String RFCPRO
    String CURPPRO
    String UFAPRO
    String FLGPRO
    String MAILPRO
    String WEBPRO
    Double LMCPRO
    String SERPRO
    Double ISRAPRO
    Double RETAPRO
    Double ISRBPRO
    Double RETBPRO
    String NUMTIPO
    String MUNPRO
    String NLEPRO
    String NLIPRO
    String CPPRO
    String REPLICA


    static transactional = false

    static mapping = {
        datasource "firebird"
        version false
        columns {
            id column: "NUMPRO"
        }
    }

    static constraints = {
        NUMPRO (nullable: false)
        NOMPRO (nullable: true)
    }
}
