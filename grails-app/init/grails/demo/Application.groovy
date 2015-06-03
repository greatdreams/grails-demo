package grails.demo

import grails.boot.GrailsApp
import grails.boot.config.GrailsAutoConfiguration

import org.springframework.boot.CommandLineRunner;
import org.springframework.core.annotation.AnnotationAwareOrderComparator;


class Application extends GrailsAutoConfiguration {
    static void main(String[] args) {
        def ctx = GrailsApp.run(Application)
        String[] beanNames = ctx.getBeanDefinitionNames();
        java.util.Arrays.sort(beanNames);
        for(def name : beanNames) {
            println '\t' + name
        }
        List<String> runners = new ArrayList<String>(ctx
                .getBeansOfType(CommandLineRunner.class).keySet());
        AnnotationAwareOrderComparator.sort(runners);
        println runners.size()
        for (String runner : runners) {
          System.out.println(runner);
        }
    }
}