package prov.res.pedido

import prov.res.sucursal.Sucursal

class Pedido {

    Sucursal sucursal
    String estado
    Date fechaEnvio
    String folio
    Sucursal cedis

    static hasMany = [detalles: DetallePedido]



    static constraints = {
    }
}
