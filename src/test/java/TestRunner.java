import com.intuit.karate.junit5.Karate;

public class TestRunner {

  @Karate.Test
    Karate testRunner(){
      return Karate.run("features/employees/crudcrudTest.feature").relativeTo(getClass());


  }
}
