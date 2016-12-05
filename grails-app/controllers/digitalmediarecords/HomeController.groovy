package digitalmediarecords

import grails.plugin.springsecurity.SpringSecurityUtils
import grails.plugin.springsecurity.annotation.Secured

@Secured('permitAll')
class HomeController {
    def springSecurityService

    def index() {
        if(springSecurityService.isLoggedIn()){
            if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN') || SpringSecurityUtils.ifAllGranted('ROLE_TEACHER') || SpringSecurityUtils.ifAllGranted('ROLE_EDITOR')
                    || SpringSecurityUtils.ifAllGranted('ROLE_RECORDER') || SpringSecurityUtils.ifAllGranted('ROLE_REVIEWER')) {
                if (SpringSecurityUtils.ifAllGranted('ROLE_ADMIN')) {
                    println "Here"
                    render view: 'tst'
                }
                if (SpringSecurityUtils.ifAllGranted('ROLE_TEACHER')) {
                    render "Welcome Teacher"
                }
                if (SpringSecurityUtils.ifAllGranted('ROLE_EDITOR')) {
                    render "Welcome editor"
                }
                if (SpringSecurityUtils.ifAllGranted('ROLE_RECORDER')) {
                    render "Welcome Recorder"
                }
                if (SpringSecurityUtils.ifAllGranted('ROLE_REVIEWER')) {
                    render "Welcome Reviewer"
                }
            }
        }
        else {
            redirect(controller: 'login', action: 'auth')
        }

    }
}
