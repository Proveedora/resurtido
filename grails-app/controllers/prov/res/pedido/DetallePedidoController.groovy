package prov.res.pedido



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class DetallePedidoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond DetallePedido.list(params), model:[detallePedidoInstanceCount: DetallePedido.count()]
    }

    def show(DetallePedido detallePedidoInstance) {
        respond detallePedidoInstance
    }

    def create() {
        respond new DetallePedido(params)
    }

    @Transactional
    def save(DetallePedido detallePedidoInstance) {
        if (detallePedidoInstance == null) {
            notFound()
            return
        }

        if (detallePedidoInstance.hasErrors()) {
            respond detallePedidoInstance.errors, view:'create'
            return
        }

        detallePedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'detallePedido.label', default: 'DetallePedido'), detallePedidoInstance.id])
                redirect detallePedidoInstance
            }
            '*' { respond detallePedidoInstance, [status: CREATED] }
        }
    }

    def edit(DetallePedido detallePedidoInstance) {
        respond detallePedidoInstance
    }

    @Transactional
    def update(DetallePedido detallePedidoInstance) {
        if (detallePedidoInstance == null) {
            notFound()
            return
        }

        if (detallePedidoInstance.hasErrors()) {
            respond detallePedidoInstance.errors, view:'edit'
            return
        }

        detallePedidoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'DetallePedido.label', default: 'DetallePedido'), detallePedidoInstance.id])
                redirect detallePedidoInstance
            }
            '*'{ respond detallePedidoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(DetallePedido detallePedidoInstance) {

        if (detallePedidoInstance == null) {
            notFound()
            return
        }

        detallePedidoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'DetallePedido.label', default: 'DetallePedido'), detallePedidoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'detallePedido.label', default: 'DetallePedido'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
