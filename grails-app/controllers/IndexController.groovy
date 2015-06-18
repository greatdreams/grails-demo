package grails

import com.greatdreams.grailsdemo.domain.Person
import org.springframework.web.servlet.ModelAndView
import org.springframework.security.core.context.SecurityContextHolder

/**
 *
 * @author greatdreams
 */
class IndexController {
    def index() {
        def auth = SecurityContextHolder.getContext().getAuthentication()
        def username = auth.getName()
        def model = [username: username]
        return new ModelAndView('/index', model)
    }
}

