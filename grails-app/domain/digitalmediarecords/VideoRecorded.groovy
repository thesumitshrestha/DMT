package digitalmediarecords

class VideoRecorded {

    Date recordedDate
    Integer classes
    String subject
    String chapter
    String unit
    String title
    User recordedBy
    User teacher
    User assignedTo
    String status

    static constraints = {
        status(inList: ['Not Started','On Progess', 'Closed'])
    }

    String toString(){
        return title
    }
}
