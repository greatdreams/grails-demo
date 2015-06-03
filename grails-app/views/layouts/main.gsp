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
        body {
        padding-top: 50px;
        }
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
<body>    
    <nav class="navbar navbar-default navbar-inverse navbar-fixed-top" style='backgroud-color: #888888'>
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
                    <li><a href="#">Help</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">Greatdreams<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="#">Action</a></li>
                            <li><a href="#">Another action</a></li>
                            <li><a href="#">Something else here</a></li>
                            <li class="divider "></li>
                            <li><a href="#">Separated link</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <g:layoutBody/>
</body>
</html>
