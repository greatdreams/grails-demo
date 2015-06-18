<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>places</title>
    </head>
    <body>
        <div class='container'>
            <h3>My Favorite Places</h3>
            <ul>
              <g:each in = '${favoritePlaces}' var='place'>
                 <li>${place}</li> 
              </g:each>
            </ul>
        </div>
</html>
