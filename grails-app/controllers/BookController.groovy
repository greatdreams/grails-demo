
import grails.converters.JSON
import grails.converters.XML

/**
 *
 * @author greatdreams
 */
class BookController {
    def bookService
    
    def index() {
        render 'book page index page'
    }
    def list() {
        def books;
        books = bookService.list()
        withFormat {
            html booksList : books
            json { render books as JSON }
            xml { render books as XML }
                '*' { render books as JSON }
        }
    }
}

