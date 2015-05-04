package prov.res.importacion

import grails.transaction.Transactional

import prov.res.catalogos.Agente

@Transactional
class ResMaeagtService {

    def resMaeagt = new ResMaeagt()
    def maeagt = new Maeagt()
    def agente = new Agente()

    static transactional = false

    def getResAgentes(){
        def datos = resMaeagt.findAll("from ResMaeagt where estatus > 0")

        if (!datos){
            return "nada por actualizar"
        }

        for (int i = 0; i < datos.size(); i++) {

            def agente = Agente.findByNumagt(datos.get(i).numagt)
            def newAgente = maeagt.find("from Maeagt where numagt = ?", [datos.get(i).numagt])

            if(!agente){
                new Agente(numagt: newAgente.NUMAGT, nombreagt: newAgente.NOMBREAGT, numalm: newAgente.NUMALM ).save(flush: true)
            }else{
                agente.numagt = newAgente.NUMAGT
                agente.nombreagt = newAgente.NOMBREAGT
                agente.numalm = newAgente.NUMALM
                agente.save(flush: true)
            }

            datos.get(i).estatus = 0
            datos.get(i).save(flush: true)


        }

        true
    }


}
