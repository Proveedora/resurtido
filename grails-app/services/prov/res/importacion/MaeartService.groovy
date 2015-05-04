package prov.res.importacion

import grails.transaction.Transactional
import prov.res.catalogos.Articulo

@Transactional
class MaeartService {

    def maeart = new Maeart()
    def articulo = new Articulo()

    static transactional = false

    def getArticulos(){

        def arts = maeart.getAll()

        for (int i = 0; i < 100; i++) {
            def a = arts.get(i)
            new Articulo(numart: arts.get(i).NUMART, upcart: arts.get(i).UPCART, nomart: arts.get(i).NOMART, uniart: arts.get(i).UNIART, crpart: arts.get(i).CRPART, flgart: arts.get(i).FLGART, numdep: arts.get(i).NUMDEP, fucart: arts.get(i).FUCART, ivaart: arts.get(i).IVAART, tipart: arts.get(i).TIPART, uniart2: arts.get(i).UNIART2, nummon: arts.get(i).NUMMON, nomart2: arts.get(i).NOMART2 ).save(flush: true, failOnError: true)
        }

        true

    }

}
