<!doctype html>
<html>
    <head>
        <meta name="layout" content="main">
        <title>user</title>
    </head>
    <body>
        <div class='container'>
            <h3>当前用户列表</h3>
            <table class="table">
                <thead>
                    <tr>
                        <th> id </td> <th>name</th> <th>age</th>
                    </tr>
                    <g:each in='${users}' var='user'>
                    <tr>
                        <td>${user?.id}</td> 
                        <td>${user?.name}</td>
                        <Td>${user?.age}</td>
                    </tr>
                    </g:each>
                </thead>
            </table>
        </div>
</html>
