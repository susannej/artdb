package artdb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class TechnicController {

    TechnicService technicService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond technicService.list(params), model:[technicCount: technicService.count()]
    }

    def show(Long id) {
        respond technicService.get(id)
    }

    def create() {
        respond new Technic(params)
    }

    def save(Technic technic) {
        if (technic == null) {
            notFound()
            return
        }

        try {
            technicService.save(technic)
        } catch (ValidationException e) {
            respond technic.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'technic.label', default: 'Technic'), technic.id])
                redirect technic
            }
            '*' { respond technic, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond technicService.get(id)
    }

    def update(Technic technic) {
        if (technic == null) {
            notFound()
            return
        }

        try {
            technicService.save(technic)
        } catch (ValidationException e) {
            respond technic.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'technic.label', default: 'Technic'), technic.id])
                redirect technic
            }
            '*'{ respond technic, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        technicService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'technic.label', default: 'Technic'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'technic.label', default: 'Technic'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
