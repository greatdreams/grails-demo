package grails

import com.greatdreams.grailsdemo.domain.Person
import org.springframework.web.servlet.ModelAndView

/**
 *
 * @author greatdreams
 */
class IndexController {
    def index() {
        def user = new Person('001', 'Administrator', 100)
        return new ModelAndView('/index', [person: user])
    }
}

