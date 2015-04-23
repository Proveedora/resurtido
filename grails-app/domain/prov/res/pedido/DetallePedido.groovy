package prov.res.pedido

import prov.res.catalogos.Articulo

class DetallePedido {

    Articulo articulo
    int cp
    int cr
    int cs
    Pedido pedido
    String unidad

    static belongsTo = Pedido

    static constraints = {
    }
}
