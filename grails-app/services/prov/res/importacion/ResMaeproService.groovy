package prov.res.importacion

import grails.transaction.Transactional
import prov.res.catalogos.Proveedor

@Transactional
class ResMaeproService {

    def resMaepro = new ResMaepro()
    def maepro = new Maepro()
    def proveedor = new Proveedor()

    static transactional = false

    def getResMaepro(){
        def datos = resMaepro.findAll("from ResMaepro where estatus > 0")

        if(!datos){
            return "Nada para actualizar"
        }

        for (int i = 0; i < datos.size() ; i++) {

            def pro = Proveedor.findByNumpro(datos.get(i).numpro)
            def newPro = Maepro.find("from Maepro where numpro = ?", [datos.get(i).numpro])

            if(!pro){
                new Proveedor(numpro: newPro.NUMPRO, nompro: newPro.NOMPRO ).save(flush: true)
            }else{
                pro.numpro = newPro.NUMPRO
                pro.nompro = newPro.NOMPRO
                pro.save(flush: true)
            }

            datos.get(i).estatus = 0
            datos.get(i).save(flush: true)

        }


        return "Actualizados " + datos.size()

    }
}
