<!doctype html>
<html>
    <head>
        <meta name="layout" content="main"/>
        <title>Welcome to Grails</title>
        <style type="text/css" media="screen">
            #status {
            background-color: #eee;
            border: .2em solid #fff;
            margin: 2em 2em 1em;
            padding: 1em;
            width: 12em;
            float: left;
            -moz-box-shadow: 0px 0px 1.25em #ccc;
            -webkit-box-shadow: 0px 0px 1.25em #ccc;
            box-shadow: 0px 0px 1.25em #ccc;
            -moz-border-radius: 0.6em;
            -webkit-border-radius: 0.6em;
            border-radius: 0.6em;
            }

            #status ul {
            font-size: 0.9em;
            list-style-type: none;
            margin-bottom: 0.6em;
            padding: 0;
            }

            #status li {
            line-height: 1.3;
            }

            #status h1 {
            text-transform: uppercase;
            font-size: 1.1em;
            margin: 0 0 0.3em;
            }

            #page-body {
            margin: 2em 1em 1.25em 18em;
            }

            h2 {
            margin-top: 1em;
            margin-bottom: 0.3em;
            font-size: 1em;
            }

            p {
            line-height: 1.5;
            margin: 0.25em 0;
            }

            #controller-list ul {
            list-style-position: inside;
            }

            #controller-list li {
            line-height: 1.3;
            list-style-position: inside;
            margin: 0.25em 0;
            }

            @media screen and (max-width: 480px) {
            #status {
            display: none;
            }

            #page-body {
            margin: 0 1em 1em;
            }

            #page-body h1 {
            margin-top: 0;
            }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <h3>Learning</h3>  
                    <asset:image src="person-learning-img.jpeg" />
                    <p>
                        Stick to learning. Wherever you  and however busy, don't forget to learn. <br/>
                        <b>One is never too old to learn.</b>
                    </p>
                    <a href="#">more >> </a>
                </div>
                <div class="col-md-4">
                    <h3>Reading</h3>                    
                    <asset:image src="reading-books-img.jpeg"/>
                    <p>
                        Reading is full of fun.&nbsp; And Gorky once said, "Book are the stepping stones to human progress".
                    </p>
                    <a href="#">more >> </a>
                </div>
                <div class="col-md-4">
                    <h3>Physical Exercise</h3>      
                    <asset:image src="physical-exercise-img.jpeg"/>
                    <p>
                        If you keep doing exercise regularly, you will never be a lazy person. 
                    </p>
                    <a href="#">more >> </a>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <h3>Angularjs Service</h3>
                    <p>1 + 2 = {{ 1 + 2 }}</p>
                    <p>
                        Search: <input ng-model="query">
                        <br/>
                        Sort by:
                        <select ng-model="orderProp">
                            <option value="name" selected="true">Alphabetical</option>
                            <option value="age">Newest</option>
                        </select>
                    </p>
                    <div ng-controller="PhoneListCtrl">
                        <ul>
                            <li ng-repeat="phone in phones | filter : query | orderBy:orderProp">
                                <span>{{phone.name}}</span>
                                <p>{{phone.snippet}}</p>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-4">
                    <h3>Services We Provide</h3>
                    <ul>
                        <li>BAIDU Map Service &nbsp;&nbsp;<a href="/map/index">go</a></li>
                    </ul>
                </div>
                <div class="col-md-4">

                </div>
            </div>
            <br/>
        </div>
    </div>
</body>
</html>
