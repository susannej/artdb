package artdb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ShiroUserController {

    ShiroUserService shiroUserService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond shiroUserService.list(params), model:[shiroUserCount: shiroUserService.count()]
    }

    def show(Long id) {
        respond shiroUserService.get(id)
    }

    def create() {
        respond new ShiroUser(params)
    }

    def save(ShiroUser shiroUser) {
        if (shiroUser == null) {
            notFound()
            return
        }

        try {
            shiroUserService.save(shiroUser)
        } catch (ValidationException e) {
            respond shiroUser.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'shiroUser.label', default: 'ShiroUser'), shiroUser.id])
                redirect shiroUser
            }
            '*' { respond shiroUser, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond shiroUserService.get(id)
    }

    def update(ShiroUser shiroUser) {
        if (shiroUser == null) {
            notFound()
            return
        }

        try {
            shiroUserService.save(shiroUser)
        } catch (ValidationException e) {
            respond shiroUser.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'shiroUser.label', default: 'ShiroUser'), shiroUser.id])
                redirect shiroUser
            }
            '*'{ respond shiroUser, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        shiroUserService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'shiroUser.label', default: 'ShiroUser'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shiroUser.label', default: 'ShiroUser'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
