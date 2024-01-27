package artdb

import grails.gorm.services.Service

@Service(ShiroRole)
interface ShiroRoleService {

    ShiroRole get(Serializable id)

    List<ShiroRole> list(Map args)

    Long count()

    void delete(Serializable id)

    ShiroRole save(ShiroRole shiroRole)

}