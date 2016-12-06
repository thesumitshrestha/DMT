package digitalmediarecords

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Secured('permitAll')
@Transactional(readOnly = true)
class VideoRecordedController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond VideoRecorded.list(params), model:[videoRecordedInstanceCount: VideoRecorded.count()]
    }

    def show(VideoRecorded videoRecordedInstance) {
        respond videoRecordedInstance
    }

    def create() {
        respond new VideoRecorded(params)
    }

    @Transactional
    def save(VideoRecorded videoRecordedInstance) {
        if (videoRecordedInstance == null) {
            notFound()
            return
        }

        if (videoRecordedInstance.hasErrors()) {
            respond videoRecordedInstance.errors, view:'create'
            return
        }

        videoRecordedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'videoRecorded.label', default: 'VideoRecorded'), videoRecordedInstance.id])
                redirect videoRecordedInstance
            }
            '*' { respond videoRecordedInstance, [status: CREATED] }
        }
    }

    def edit(VideoRecorded videoRecordedInstance) {
        respond videoRecordedInstance
    }

    @Transactional
    def update(VideoRecorded videoRecordedInstance) {
        if (videoRecordedInstance == null) {
            notFound()
            return
        }

        if (videoRecordedInstance.hasErrors()) {
            respond videoRecordedInstance.errors, view:'edit'
            return
        }

        videoRecordedInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'VideoRecorded.label', default: 'VideoRecorded'), videoRecordedInstance.id])
                redirect videoRecordedInstance
            }
            '*'{ respond videoRecordedInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(VideoRecorded videoRecordedInstance) {

        if (videoRecordedInstance == null) {
            notFound()
            return
        }

        videoRecordedInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'VideoRecorded.label', default: 'VideoRecorded'), videoRecordedInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'videoRecorded.label', default: 'VideoRecorded'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
