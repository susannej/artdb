package artdb

class Technic {

    String shortDesc
    String shortDescFa
    String descriptionDe
    String descriptionEn
    String descriptionFa

    static constraints = {
        table name: 'technics'
        descriptionDe type: 'text'
        descriptionEn type: 'text'
        descriptionFa type: 'text'
    }

    String toString() {
        shortDesc + " / " + shortDescFa
    }
}
