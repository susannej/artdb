package artdb

import tools.YesNoType

class Painting {

    int status = 0

    // Deutsch
    String titleDe
    String descriptionDe

    // English
    String titleEn
    String descriptionEn

    // Farsi
    String titleFa
    String descriptionFa

    Date creationTime

    Place place
    String owner
    String ort

    Category category
    Material material
    Technic technic

    boolean web

    int height
    int width
    int depth

    static mapping = {
        table name: 'paintings'
        descriptionDe type: 'text'
        descriptionEn type: 'text'
        descriptionFa type: 'text'
        web type: 'tools.YesNoType'
    }

    static constraints = {

    }

}
