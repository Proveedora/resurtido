package prov.res.importacion

import grails.transaction.Transactional
import prov.res.catalogos.Articulo

@Transactional
class ResMaeartService {

    def resMaeart = new ResMaeart()
    def maeart = new Maeart()
    def articulo = new Articulo()

    static transactional = false

    def getResMaeart(){
        def datos = resMaeart.findAll("from ResMaeart where estatus > 0")

        if(!datos){
            return "Nada para actualizar"
        }

        for (int i = 0; i < datos.size(); i++) {
            def art = Articulo.findByNumart(datos.get(i).numart)
            def newArt = maeart.find("from Maeart where numart = ?", [datos.get(i).numart])

            if(!art){
                new Articulo(numart: newArt.NUMART, upcart: newArt.UPCART, nomart: newArt.NOMART, uniart: newArt.UNIART, crpart: newArt.CRPART, flgart: newArt.FLGART, numdep: newArt.NUMDEP, fucart: newArt.FUCART, ivaart: newArt.IVAART, tipart: newArt.TIPART, uniart2: newArt.UNIART2, nummon: newArt.NUMMON, nomart2: newArt.NOMART2 ).save(flush: true, failOnError: true)
            }else{

                art.numart = newArt.NUMART
                art.upcart = newArt.UPCART
                art.nomart = newArt.NOMART
                art.uniart = newArt.UNIART
                art.crpart = newArt.CRPART
                art.flgart = newArt.FLGART
                art.numdep = newArt.NUMDEP
                art.fucart = newArt.FUCART
                art.ivaart = newArt.IVAART
                art.tipart = newArt.TIPART
                art.uniart2 = newArt.UNIART2
                art.nummon = newArt.NUMMON
                art.nomart2 = newArt.NOMART2
                art.save(flush: true)
            }
            datos.get(i).estatus = 0
            datos.get(i).save(flush: true)

        }
        return "Actualizados " + datos.size()
    }
}
