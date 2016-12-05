import digitalmediarecords.Role
import digitalmediarecords.UserRole
import digitalmediarecords.User
class BootStrap {

    def init = { servletContext ->

        if(!Role.findByAuthority('ROLE_ADMIN')) {
            def superRole = new Role(authority: 'ROLE_ADMIN')
            superRole.save(flush: true)
        }
        /*if(!Role.findByAuthority('ROLE_ADMIN')) {
            def adminRole = new Role(authority: 'ROLE_ADMIN')
            adminRole.save(flush: true)
        }
        if(!Role.findByAuthority('ROLE_STUDENT')) {
            def userRole = new Role(authority: 'ROLE_STUDENT')
            userRole.save(flush: true)
        }*/
        if(!User.findByUsername('admin')) {
            def superUser = new User(username: 'admin', password: 'admin')
            superUser.save(flush: true)
            UserRole.create superUser, Role.findByAuthority('ROLE_ADMIN'), true
        }

    }
    def destroy = {
    }
}
