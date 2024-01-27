package artdb

import grails.gorm.services.Service

@Service(Painting)
interface PaintingService {

    Painting get(Serializable id)

    List<Painting> list(Map args)

    Long count()

    void delete(Serializable id)

    Painting save(Painting painting)

}