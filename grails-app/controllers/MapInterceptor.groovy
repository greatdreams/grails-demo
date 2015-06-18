/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author greatdreams
 */
class MapInterceptor {
	MapInterceptor() {
            match(controller: 'map')
        }
        boolean before() {
            def key = params.key
            if (key != '893557' )
                setView("/error/error.gsp")
            return true;
        }
        boolean after() {
            true;
        }
        void afterView() {
            true;
        }
}

