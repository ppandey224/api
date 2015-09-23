import com.dwit.research.begnas.api.Role
import com.dwit.research.begnas.api.User
import com.dwit.research.begnas.api.UserRole
import commons.APIConstants

class BootStrap {

    def init = { servletContext ->

        def adminRole=Role.findByAuthority(APIConstants.ROLE_ADMIN)?:new Role(authority: APIConstants.ROLE_ADMIN).save(flush: true)

        def userRole=Role.findByAuthority(APIConstants.ROLE_USER)?:new Role(authority: APIConstants.ROLE_USER).save(flush: true)

        def testAdmin = User.findByUsername('admin')?:new User(id: '1', username: 'admin', enabled: true, password: 'admin', email: 'begnas.api@gmail.com').save(flush: true)

        if (!testAdmin.authorities.contains(adminRole)) {
            UserRole.create testAdmin,adminRole
        }
    }
    def destroy = {
    }
}
