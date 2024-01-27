package artdb

import org.apache.shiro.authc.credential.PasswordService

class BootStrap {

    PasswordService credentialMatcher

    def init = { servletContext ->
        ShiroRole.withTransaction {
            def existingUser = ShiroUser.findByUsername("admin")
            if (!existingUser) {
                def firstUser = new ShiroUser(username: "admin", passwordHash: credentialMatcher.encryptPassword("asdf"))
                firstUser.addToPermissions("*:*")
                firstUser.save(flush: true, failOnError: true)
            }
        }
    }
    def destroy = {
    }
}
