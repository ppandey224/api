import com.dwit.research.begnas.api.*


class BootStrap {

    def init = { servletContext ->
        def user=new User (username: 'ruby', password:'1234').save(flush:true)

        def userrole=new Role(authority: 'ROLE_ADMIN').save(flush:true)

        new UserRole(user:user, role:userrole).save(flush: true)
    }
    def destroy = {
    }
}
