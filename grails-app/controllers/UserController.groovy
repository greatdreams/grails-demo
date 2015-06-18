/**
 *
 * @author greatdreams
 */
class UserController {
    def person
    def person1
    def person2
    def person3
    def person4
    def person5
    
    def index() {
         render(view: '/user/index', model: [users: [person, person1, person2, person3, person4, person5]])
    }
}

