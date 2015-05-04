package prov.res.catalogos

class Articulo {

    String numart
    String upcart
    String nomart
    String uniart
    Double crpart
    String flgart
    String numdep
    Date   fucart
    Double ivaart
    String tipart
    String uniart2
    String nummon
    String nomart2

    static constraints = {
        numart blank: false, maxSize: 18
        upcart nullable: true, blank: true, maxSize: 18
        nomart nullable: true, blank: false, maxSize: 999999
        uniart nullable: true, blank: false, maxSize: 10
        flgart nullable: true, blank: false, maxSize: 10
        numdep nullable: true, blank: false, maxSize: 3
        tipart nullable: true, blank: true, maxSize: 1
        uniart2 nullable: true, blank: true, maxSize: 10
        nummon nullable: true, blank: true, maxSize: 10
        nomart2 nullable: true, blank: true, maxSize: 999999
        ivaart nullable: true
        fucart nullable: true
        crpart nullable: true
    }
}
