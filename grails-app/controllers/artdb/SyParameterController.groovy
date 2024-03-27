package artdb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class SyParameterController {

    SyParameterService syParameterService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond syParameterService.list(params), model:[syParameterCount: syParameterService.count()]
    }

    def show(Long id) {
        respond syParameterService.get(id)
    }

    def create() {
        respond new SyParameter(params)
    }

    def save(SyParameter syParameter) {
        if (syParameter == null) {
            notFound()
            return
        }

        try {
            syParameterService.save(syParameter)
        } catch (ValidationException e) {
            respond syParameter.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'syParameter.label', default: 'SyParameter'), syParameter.id])
                redirect action:"index", method:"GET"
            }
            '*' { respond syParameter, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond syParameterService.get(id)
    }

    def update(SyParameter syParameter) {
        if (syParameter == null) {
            notFound()
            return
        }

        try {
            syParameterService.save(syParameter)
        } catch (ValidationException e) {
            respond syParameter.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'syParameter.label', default: 'SyParameter'), syParameter.id])
                redirect action:"index", method:"GET"
            }
            '*'{ respond syParameter, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        syParameterService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'syParameter.label', default: 'SyParameter'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'syParameter.label', default: 'SyParameter'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
