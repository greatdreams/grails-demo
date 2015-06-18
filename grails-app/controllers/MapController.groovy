import org.springframework.web.servlet.ModelAndView
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author greatdreams
 */
class MapController {
    static scope = 'singleton'
    
    def index() {
    }
    def display() {
        render(text : "<xml>some xml document</xml>", contentType : "text  /xml", encoding : "UTF-8")
    }
    
    def list() {
        def favoritePlaces = ['Beijing', 'Tianjing', "Chengdu"]
        // return new ModelAndView("/map/list", [favoritePlaces : favoritePlaces])
        render(view: '/map/list', model: [favoritePlaces : favoritePlaces])
        
    }
}

