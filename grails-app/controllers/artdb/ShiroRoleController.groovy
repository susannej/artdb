package artdb

import grails.validation.ValidationException
import static org.springframework.http.HttpStatus.*

class ShiroRoleController {

    ShiroRoleService shiroRoleService

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond shiroRoleService.list(params), model:[shiroRoleCount: shiroRoleService.count()]
    }

    def show(Long id) {
        respond shiroRoleService.get(id)
    }

    def create() {
        respond new ShiroRole(params)
    }

    def save(ShiroRole shiroRole) {
        if (shiroRole == null) {
            notFound()
            return
        }

        try {
            shiroRoleService.save(shiroRole)
        } catch (ValidationException e) {
            respond shiroRole.errors, view:'create'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'shiroRole.label', default: 'ShiroRole'), shiroRole.id])
                redirect shiroRole
            }
            '*' { respond shiroRole, [status: CREATED] }
        }
    }

    def edit(Long id) {
        respond shiroRoleService.get(id)
    }

    def update(ShiroRole shiroRole) {
        if (shiroRole == null) {
            notFound()
            return
        }

        try {
            shiroRoleService.save(shiroRole)
        } catch (ValidationException e) {
            respond shiroRole.errors, view:'edit'
            return
        }

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'shiroRole.label', default: 'ShiroRole'), shiroRole.id])
                redirect shiroRole
            }
            '*'{ respond shiroRole, [status: OK] }
        }
    }

    def delete(Long id) {
        if (id == null) {
            notFound()
            return
        }

        shiroRoleService.delete(id)

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'shiroRole.label', default: 'ShiroRole'), id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'shiroRole.label', default: 'ShiroRole'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
