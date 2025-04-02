package steps;
import io.cucumber.java.*;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

public class BaseSteps {

    protected static WebDriver driver;

    @Before
    public static void setup(){
        System.out.println("base setup");
        driver = new ChromeDriver();
        driver.manage().window().maximize();
    }

   /* public static WebDriver getDriver(){
        return driver;
    }*/

    @After
    public static void tearDown(){
        driver.quit();
    }
}