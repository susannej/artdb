package artdb

import grails.gorm.services.Service

@Service(ShiroUser)
interface ShiroUserService {

    ShiroUser get(Serializable id)

    List<ShiroUser> list(Map args)

    Long count()

    void delete(Serializable id)

    ShiroUser save(ShiroUser shiroUser)

}