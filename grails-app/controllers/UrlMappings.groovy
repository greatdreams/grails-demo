class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }

        "/"(view: "/index")
        "/index.html"(controller: IndexController, action: index)
        "/user/register"(controller: SampleController, action: login)
        "500"(view:'/error')
        "404"(view:'/notFound')        
    }
}
