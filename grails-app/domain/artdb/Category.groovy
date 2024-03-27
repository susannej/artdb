package artdb

class Category {

    String shortDesc
    String shortDescFa
    String descriptionDe
    String descriptionEn
    String descriptionFa

    static mapping = {
        table name: 'categories'
        descriptionDe type: 'text'
        descriptionEn type: 'text'
        descriptionFa type: 'text'
    }

    static constraints = {
        shortDesc nullable: true
        shortDescFa nullable: true
        descriptionDe nullable: true
        descriptionEn nullable: true
        descriptionFa nullable: true
    }

    String toString() {
        shortDesc + " / " + shortDescFa
    }
}
