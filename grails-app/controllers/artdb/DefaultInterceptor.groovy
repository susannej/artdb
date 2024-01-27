package artdb


class DefaultInterceptor {

    //customize me
    int order = HIGHEST_PRECEDENCE+100

    DefaultInterceptor() {
        matchAll()
                .excludes(controller:"auth")
    }

    boolean before() {
        // Access control by convention.
        accessControl()
    }

    void afterView() {
        // no-op
    }
}
