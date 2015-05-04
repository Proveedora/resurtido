package prov.res.importacion

import prov.res.catalogos.Agente

import grails.transaction.Transactional

@Transactional
class MaeagtService {

    def maeagt = new Maeagt()
    def agente = new Agente()

    static transactional = false

    def getAgentes(){

        def datos = maeagt.getAll()

        for (int i = 0; i < datos.size(); i++) {

            def agente = Agente.findByNumagt(datos.get(i).NUMAGT)

            if(!agente){
                new Agente(numagt: datos.get(i).NUMAGT, nombreagt: datos.get(i).NOMBREAGT, numalm: datos.get(i).NUMALM ).save(flush: true)
            }else{
                agente.numagt = datos.get(i).NUMAGT
                agente.nombreagt = datos.get(i).NOMBREAGT
                agente.numalm = datos.get(i).NUMALM
                agente.save(flush: true)
            }

        }

        true


    }
}
