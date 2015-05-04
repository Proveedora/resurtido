package prov.res.importacion

import prov.res.catalogos.Articulo


class MaeagtController {

    def maeartService = new MaeartService()
    def maeagtService

    def resMaeagtService = new ResMaeagtService()
    def resMaeartService = new ResMaeartService()
    def resMaeproService = new ResMaeproService()

    def maeagt = new Maeagt()

    def index() {

        render maeartService.getArticulos()


    }

    def articulo(){
        render params
        render Articulo.findByNumart("H-EST-E70")
    }

    def agentes(){
        render maeagtService.getAgentes()
    }

    def resAgentes(){
        render resMaeagtService.getResAgentes()
    }

    def resArticulos(){
        render resMaeartService.getResMaeart()
    }

    def resProveedores(){
        render resMaeproService.getResMaepro()
    }
}
