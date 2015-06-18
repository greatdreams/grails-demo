// Place your Spring DSL code here
import simpleappwithsecurity.SecurityConfiguration
import com.greatdreams.grailsdemo.domain.Person

beans = {
    webSecurityConfiguration(SecurityConfiguration)
    person(Person) {
        id = '0001'
        name = 'Huawei Wang'
        age = 25
    }
    person1(Person, id: '0005', name: 'Chunyang Zhang', age: '38')
}
