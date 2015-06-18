<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>places</title>
    </head>
    <body>
        <div class='container'>
            <h3>Book List</h3>
            <table class='table'>
                <thead>
                    <tr>
                        <th>book id</th>
                        <th>book name</th>
                        <th>book price</th>
                    </tr>
                </thead>
                <tbody>
                    <g:each in = '${booksList}' var='book'>
                        <tr>
                            <td>${book.id}</td>
                            <td>${book.name}</td>
                            <td>${book.price}</td>
                        </tr>
                    </g:each>
              </tbody>
            </ul>
        </div>
</html>
