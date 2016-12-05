package digitalmediarecords



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VideoReleasedController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond VideoReleased.list(params), model:[videoReleasedInstanceCount: VideoReleased.count()]
    }

    def show(VideoReleased videoReleasedInstance) {
        respond videoReleasedInstance
    }

    def create() {
        respond new VideoReleased(params)
    }

    @Transactional
    def save(VideoReleased videoReleasedInstance) {
        if (videoReleasedInstance == null) {
            notFound()
            return
        }

        if (videoReleasedInstance.hasErrors()) {
            respond videoReleasedInstance.errors, view:'create'
            return
        }

        videoReleasedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'videoReleased.label', default: 'VideoReleased'), videoReleasedInstance.id])
                redirect videoReleasedInstance
            }
            '*' { respond videoReleasedInstance, [status: CREATED] }
        }
    }

    def edit(VideoReleased videoReleasedInstance) {
        respond videoReleasedInstance
    }

    @Transactional
    def update(VideoReleased videoReleasedInstance) {
        if (videoReleasedInstance == null) {
            notFound()
            return
        }

        if (videoReleasedInstance.hasErrors()) {
            respond videoReleasedInstance.errors, view:'edit'
            return
        }

        videoReleasedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'VideoReleased.label', default: 'VideoReleased'), videoReleasedInstance.id])
                redirect videoReleasedInstance
            }
            '*'{ respond videoReleasedInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(VideoReleased videoReleasedInstance) {

        if (videoReleasedInstance == null) {
            notFound()
            return
        }

        videoReleasedInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'VideoReleased.label', default: 'VideoReleased'), videoReleasedInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'videoReleased.label', default: 'VideoReleased'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
