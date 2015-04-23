package prov.res.catalogos

class Agente {

    String numagt
    String nombreagt
    String numalm


    static constraints = {
        numagt blank: false, unique: true
        nombreagt blank: false
        numalm blank: false
    }
}
