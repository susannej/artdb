package artdb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class PaintingController {

    PaintingService paintingService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond paintingService.list(params), model:[paintingCount: paintingService.count()]
    }

    def show(Long id) {
        respond paintingService.get(id)
    }

    def create() {
        respond new Painting(params)
    }

    def save(Painting painting) {
        if (painting == null) {
            notFound()
            return
        }

        try {
            paintingService.save(painting)
        } catch (ValidationException e) {
            respond painting.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'painting.label', default: 'Painting'), painting.id])
                //redirect painting
                redirect action:"index", method:"GET"
            }
            '*' { respond painting, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond paintingService.get(id)
    }

    def update(Painting painting) {
        if (painting == null) {
            notFound()
            return
        }

        try {
            paintingService.save(painting)
        } catch (ValidationException e) {
            respond painting.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'painting.label', default: 'Painting'), painting.id])
                //redirect painting
                redirect action:"index", method:"GET"
            }
            '*'{ respond painting, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        paintingService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'painting.label', default: 'Painting'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'painting.label', default: 'Painting'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
