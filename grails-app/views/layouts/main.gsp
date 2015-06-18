<!doctype html>
<html lang="en" class="no-js"  ng-app="phonecatApp">
    <head>
        <meta name="viewport" content="initial-scale=1.0 user-scalable=no"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title><g:layoutTitle default="Grails"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
    <asset:stylesheet  src="application.css"/>
    <asset:javascript src="application.js"/>
    <g:layoutHead/>
    <style>
        .dropdown-submenu{
        position: relative;
        }
        .dropdown-submenu>ul {
        background-color: #34495E;
        }

        .dropdown-submenu>.dropdown-menu{
        top: 0;
        left: 100%;
        margin-top: -6px;
        margin-left: 0px;
        border-radius: 0 6px 6px 6px;
        }
        .dropdown-submenu:hover>.dropdown-menu{
        display: block;
        }
        .dropdown-submenu>a:after{
        display: block;
        content: "";
        float: right;
        width: 0;
        height: 0;
        border-color: transparent;
        border-style: solid;
        border-width: 5px 0 5px 5px 5px;
        border-left-color: #cccccc;
        margin-top: 5px;
        margin-right: -10px;
        }
        .dropdown-submenu.pull-left{
        float:none;
        }
        .dropdown-submenu.pull-left>.dropdown-menu {
        left: -100%;
        margin-left: 10px;
        }

        .dropdown-submenu > a:hover, .dropdown-submenu > a:focus {
        color: #55606c;
        background-color: rgba(202, 206, 209, 0.5);
        }
    </style>

</head>
<body style="backgroud: #000000">    
    <nav class="navbar navbar-default navbar-inverse">
        <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="/">Grails Demo App</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Home <span class="sr-only">(current)</span></a></li>
                    <li class="dropdown">
                        <a href='#' tabindex="-1" data-toggle="dropdown" role="button" aria-expanded="false">
                            Projects <span class="caret"></span>                              
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="/personal-workspace/projects/index.tiles">All Projects</a></li>
                            <li><a href='/personal-workspace/projects/cellphone-security/index.tiles'>Cellphone Security</a></li>  
                            <li><a href='#'>....</a></li>
                            <li><a href='#'>....</a></li>                                
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Tutorials<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">    
                            <li><a href='/personal-workspace/tutorials/programming/books.tiles'>Programming Books</a></li>
                            <li><a href='/personal-workspace/tutorials/programming/index.tiles'>Programming Tutorials</a></li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-left" role="search">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Search</button>
                </form>
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#"><span class="glyphicon glyphicon-question-sign"></span></a></li>
                        <g:if test="${username != null}">
                            <g:if test="${username != 'anonymousUser'}">
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
                                    <span class="glyphicon glyphicon-user"></span>
                                    &nbsp;&nbsp;${username}
                                    <span class="caret"></span></a>
                                <ul class="dropdown-menu" role="menu">
                                    <li><a href="#">账户管理</a></li>
                                    <li class="divider "></li>
                                    <li>
                                        <form action='/logout' method="post">
                                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                            <button type='submit' class="btn btn-link">退出</button>
                                        </form>
                                    </li>
                                </ul>
                            </li>
                        </g:if>
                        <g:else>
                            <li><a href="/login">登录</a></li>
                            </g:else>
                        </g:if>
                        <g:else>
                        <li><a href="/login">登录</a></li>
                        </g:else>

                </ul>
            </div>
        </div>
    </nav>
    <g:layoutBody/>
</body>
</html>
