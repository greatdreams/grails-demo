package grails
/**
 *
 * @author greatdreams
 */
class ReportingController {
    static namespace = 'business'
    def humanResources() {
        [numberOfEmployees: 9]
    }
    def accountsReceivable() {
        render(view : 'numberGrunch', model: [numberOfEmployees: 9])
    }
}

