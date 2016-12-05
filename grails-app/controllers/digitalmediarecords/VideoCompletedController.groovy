package digitalmediarecords



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class VideoCompletedController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond VideoCompleted.list(params), model:[videoCompletedInstanceCount: VideoCompleted.count()]
    }

    def show(VideoCompleted videoCompletedInstance) {
        respond videoCompletedInstance
    }

    def create() {
        respond new VideoCompleted(params)
    }

    @Transactional
    def save(VideoCompleted videoCompletedInstance) {
        if (videoCompletedInstance == null) {
            notFound()
            return
        }

        if (videoCompletedInstance.hasErrors()) {
            respond videoCompletedInstance.errors, view:'create'
            return
        }

        videoCompletedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'videoCompleted.label', default: 'VideoCompleted'), videoCompletedInstance.id])
                redirect videoCompletedInstance
            }
            '*' { respond videoCompletedInstance, [status: CREATED] }
        }
    }

    def edit(VideoCompleted videoCompletedInstance) {
        respond videoCompletedInstance
    }

    @Transactional
    def update(VideoCompleted videoCompletedInstance) {
        if (videoCompletedInstance == null) {
            notFound()
            return
        }

        if (videoCompletedInstance.hasErrors()) {
            respond videoCompletedInstance.errors, view:'edit'
            return
        }

        videoCompletedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'VideoCompleted.label', default: 'VideoCompleted'), videoCompletedInstance.id])
                redirect videoCompletedInstance
            }
            '*'{ respond videoCompletedInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(VideoCompleted videoCompletedInstance) {

        if (videoCompletedInstance == null) {
            notFound()
            return
        }

        videoCompletedInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'VideoCompleted.label', default: 'VideoCompleted'), videoCompletedInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'videoCompleted.label', default: 'VideoCompleted'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
