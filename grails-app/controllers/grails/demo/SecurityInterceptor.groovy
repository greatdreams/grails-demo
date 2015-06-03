package grails.demo


class SecurityInterceptor {

    boolean before() { true }

    boolean after() { true }

    void afterView() {
        // no-op
    }

}
