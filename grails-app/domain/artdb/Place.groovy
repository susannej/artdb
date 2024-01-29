package artdb

class Place {

    String shortDesc
    String description

    static mapping = {
        table name: 'places'
        description type: 'text'
    }

    static constraints = {
    }

    String toString() {
        shortDesc
    }
}
