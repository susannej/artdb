package artdb

class ShiroUser {
    boolean active
    String username
    String passwordHash
    
    static hasMany = [ roles: ShiroRole, permissions: String ]

    static mapping = {
        active type: 'tools.YesNoType'
    }

    static constraints = {
        username(nullable: false, blank: false, unique: true)
    }
}
