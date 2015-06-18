
import groovy.xml.MarkupBuilder

/**
 *
 * @author greatdreams
 */
class SampleController {
    def index() {
        render "You accessed the Sample controller..."
    }	
    
    def register() {
        def writer = new StringWriter()
        def builder = new MarkupBuilder(writer)
        builder.html {
            head {
                title  'Log in'
            }
            body {
                h1 'Login Dialog'
                form {
                    
                }
            }
        }
        
        def html = writer.toString()
        render html
    }
}

