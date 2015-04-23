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
        upcart blank: true, maxSize: 18
        nomart blank: false, maxSize: 999999
        uniart blank: false, maxSize: 10
        flgart blank: false, maxSize: 10
        numdep blank: false, maxSize: 3
        tipart blank: true, maxSize: 1
        uniart2 blank: true, maxSize: 10
        nummon blank: true, maxSize: 10
        nomart2 blank: true, maxSize: 999999
    }
}
