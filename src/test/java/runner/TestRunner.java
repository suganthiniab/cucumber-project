package runner;

//import io.cucumber.junit.platform.engine.Cucumber;
import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)
@CucumberOptions(
        features = "src/test/resources/features",
        glue = "steps",
        plugin = {"pretty",
                "html: target/cucumber-report.html",
                "json: target/cucumber.json",
                "junit: target/cucumber.xml",
                "io.qameta.allure.cucumber7jvm.AllureCucumber7Jvm"
        }

)

//The purpose of the runner class is link/glue both feature file and step file together
public class TestRunner {

}


