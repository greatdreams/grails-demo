/**
 *
 * @author greatdreams
 */
class BookService {
    static scope = 'singleton'
    def list() {
        List<Book> books = new ArrayList<>();
        books << new Book('0001', 'Java', 23.12)
        books << new Book('0002', 'C#', 23.13)
        books << new Book('0003', 'python', 23.14)
        books << new Book('0004', 'ruby', 23.15)
        return books
    }
}

