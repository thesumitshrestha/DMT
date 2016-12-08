package digitalmediarecords

import grails.transaction.Transactional

@Transactional
class MemberService {

    def saveMember(Member memberInstance, String role, boolean newMember) {
        println "YOYOOYOYOOYOY"+role

        if (!memberInstance.save(flush: true,failOnError: true)) {
            if (newMember) {
                return 'Unable to save new user,error'
            }else {
                return 'Unable to update user,error'
            }
        }
        if (!newMember){
            def userRole = UserRole.findByUser(memberInstance)
            userRole.delete flush: true
        }

        UserRole.create memberInstance,Role.findByAuthority(role),true

        return "success"

    }
}
