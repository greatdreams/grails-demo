package grails.demo;

import grails.boot.config.GrailsAutoConfiguration;
import org.springframework.boot.test.SpringApplicationConfiguration;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

/**
 *
 * @author greatdreams
 */
@SpringApplicationConfiguration
@ImportResource(value="classpath:spring/resources*.xml")
public class AppConfig {
    
}
