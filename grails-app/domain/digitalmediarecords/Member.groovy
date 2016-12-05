package digitalmediarecords

class Member extends User{

    String fullName
    String contact
    String email

    static constraints = {
        fullName nullable: false
        contact nullable: false, matches: "\\d+", maxSize: 10
        email nullable: false, email: true
    }
}
