package artdb

class Place {

    String shortDesc
    String description

    static mapping = {
        table name: 'places'
        description type: 'text'
    }

    static constraints = {
        shortDesc nullable: true
        description nullable: true
    }

    String toString() {
        shortDesc
    }
}
