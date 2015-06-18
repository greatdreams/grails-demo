/**
 *
 * @author greatdreams
 */
import org.springframework.security.core.context.SecurityContextHolder
class LoginController {
    def index() { 
        def auth = SecurityContextHolder.getContext().getAuthentication()
        def username = auth.getName()
        System.out.println(username)
        def flag = false
        if(username != null) {
            if(!username.equals('anonymousUser')) {
                System.out.println('----------' + username)
                flag = true
                redirect(controller: 'index', action: 'index')      
            }
        }
        if(!flag) {
            render(view: "/login")
        }
         
    }
}

