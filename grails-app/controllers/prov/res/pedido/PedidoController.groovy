package prov.res.pedido



import static org.springframework.http.HttpStatus.*
import prov.res.catalogos.Articulo
import prov.res.sucursal.Sucursal;
import grails.transaction.Transactional

@Transactional(readOnly = true)
class PedidoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def testDatePicker = {
    }

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Pedido.list(params), model:[pedidoInstanceCount: Pedido.count()]
    }

    def show(Pedido pedidoInstance) {
        respond pedidoInstance
    }

    def create() {
        respond new Pedido(params)
    }

    @Transactional
    def save(Pedido pedidoInstance) {
        if (pedidoInstance == null) {
            notFound()
            return
        }

        if (pedidoInstance.hasErrors()) {
            respond pedidoInstance.errors, view:'create'
            return
        }

        pedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'pedido.label', default: 'Pedido'), pedidoInstance.id])
                redirect pedidoInstance
            }
            '*' { respond pedidoInstance, [status: CREATED] }
        }
    }

    def edit(Pedido pedidoInstance) {
        respond pedidoInstance
    }

    @Transactional
    def update(Pedido pedidoInstance) {
        if (pedidoInstance == null) {
            notFound()
            return
        }

        if (pedidoInstance.hasErrors()) {
            respond pedidoInstance.errors, view:'edit'
            return
        }

        pedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Pedido.label', default: 'Pedido'), pedidoInstance.id])
                redirect pedidoInstance
            }
            '*'{ respond pedidoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Pedido pedidoInstance) {

        if (pedidoInstance == null) {
            notFound()
            return
        }

        pedidoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Pedido.label', default: 'Pedido'), pedidoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'pedido.label', default: 'Pedido'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }

    @Transactional
    def guardarPrueba(Pedido pedidoInstance){
        def suc = Sucursal.get(params.sucursal.id)
		def emp = Sucursal.get(params.cedis.id)
		def fecha = new Date()
		//def pedido = new Pedido(sucursal:suc,estado:params.estado,fechaEnvio:fecha,folio:params.folio,cedis:emp).save(flush:true,failOnError:true)
		
        //def list<articulos> articulos  

		
		//def detPedido = new DetallePedido
        
    }

    @Transactional
    def crearLista(Pedido pedidoInstance){
        render params
		//def articulo = Articulo.list
       // articulo.add()
    }
}
