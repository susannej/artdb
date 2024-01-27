package artdb

import grails.gorm.services.Service

@Service(SyParameter)
interface SyParameterService {

    SyParameter get(Serializable id)

    List<SyParameter> list(Map args)

    Long count()

    void delete(Serializable id)

    SyParameter save(SyParameter syParameter)

}