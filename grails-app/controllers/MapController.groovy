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
    def index() {
    }
    def display() {
        render(text : "<xml>some xml document</xml>", contentType : "text  /xml", encoding : "UTF-8")
    }
}

