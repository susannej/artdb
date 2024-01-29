package artdb

import grails.gorm.services.Service

@Service(Technic)
interface TechnicService {

    Technic get(Serializable id)

    List<Technic> list(Map args)

    Long count()

    void delete(Serializable id)

    Technic save(Technic technic)

}