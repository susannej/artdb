package tools

class Tools {

    static String shortenTo(String string, int length) {
        String ret
        if(string.length() > length -4) {
            ret = string.substring(0, length -4) + " ..."
        } else {
            ret = string
        }
        ret
    }
}
