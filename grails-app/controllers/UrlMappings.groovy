class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(controller: 'index', action: 'index')
        "/index.html"(controller: 'index', action: 'index')
        "/user/register"(controller: 'sample', action: 'login')
        "500"(view:'/error')
        "404"(view:'/notFound')        
    }
}
