package com.greatdreams.grailsdemo.domain

import grails.rest.Resource

/**
 *
 * @author greatdreams
 */

@Resource(uri = '/students')
class Student {
    String id;
    String name;
    String email;
    int age;
}

