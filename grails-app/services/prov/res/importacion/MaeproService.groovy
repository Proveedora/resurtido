package prov.res.importacion

import grails.transaction.Transactional
import prov.res.catalogos.Proveedor

@Transactional
class MaeproService {

    def maepro = new Maepro()
    def proveedor = new Proveedor()

    static transactional = false

    def getProveedores(){
        def provs = maepro.getAll()

        for (int i = 0; i < provs.size(); i++) {
            new Proveedor(numpro: provs.get(i).NUMPRO, nompro: provs.get(i).NOMPRO ).save(flush: true)
        }

        true

    }
}
