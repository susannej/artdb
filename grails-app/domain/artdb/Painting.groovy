package artdb

class Painting {

    int status = 0
    String title
    String creationTime
    Place place
    String description
    String owner

    static mapping = {
        table name: 'paintings'
        description type: 'text'
    }

    static constraints = {

    }


}
