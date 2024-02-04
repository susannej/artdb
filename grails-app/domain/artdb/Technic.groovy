package artdb

class Technic {

    String shortDesc
    String shortDescFa
    String descriptionDe
    String descriptionEn
    String descriptionFa

    static mapping = {
        table name: 'technics'
        descriptionDe type: 'text'
        descriptionEn type: 'text'
        descriptionFa type: 'text'
    }

    static constraints = {
    }

    String toString() {
        shortDesc + " / " + shortDescFa
    }
}
