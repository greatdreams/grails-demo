package simpleappwithsecurity

import org.springframework.beans.factory.annotation.Autowired
import org.springframework.context.annotation.Configuration
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter
import org.springframework.security.config.annotation.web.builders.HttpSecurity
import org.springframework.security.config.annotation.web.builders.WebSecurity
/**
 *
 * @author greatdreams
 */
@Configuration
@EnableWebSecurity
class SecurityConfiguration extends WebSecurityConfigurerAdapter{
	
    @Autowired
    protected void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth
        .inMemoryAuthentication()
        .withUser("user").password("user").roles("USER")
        .and()
        .withUser("test").password("test").roles("USER")
        .and()
        .withUser("administrator").password("administrator").roles("ADMIN")
        .and()
        .withUser("greatdreams").password("893557whw").roles("ADMIN")
    }
    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http
            .authorizeRequests()
            .antMatchers("/admin/**").hasAnyRole('ADMIN')
            .antMatchers("/user/**").hasAnyRole('USER')
            .antMatchers("/").permitAll()
        .and()
        .formLogin()   
            .loginPage("/login")
            .permitAll()
        .and()
        .logout()
            .logoutUrl("/logout")
            .logoutSuccessUrl("/login")
            .invalidateHttpSession(true)
            .permitAll()       
    }
    @Override
    public void configure(WebSecurity web) {
        
    }    
  
}

