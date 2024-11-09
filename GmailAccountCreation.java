package Nikita.AxisBank;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class GmailAccountCreation {
    public static void main(String[] args) throws InterruptedException {
        // Initialize WebDriver and open Chrome browser
        WebDriver d = new ChromeDriver();
        System.out.println("Browser has opened");
        d.manage().window().maximize();

        // Navigate to Gmail signup page
        d.get("https://accounts.google.com/signup");

        WebDriverWait wait = new WebDriverWait(d, Duration.ofSeconds(15));

        // Step 1: Enter First Name
        WebElement firstName = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("firstName")));
        firstName.sendKeys("Nikita");
        System.out.println("Entered First Name: " + firstName.getAttribute("value"));

        // Step 2: Enter Last Name
        WebElement lastName = d.findElement(By.id("lastName"));
        lastName.sendKeys("Aglave");
        System.out.println("Entered Last Name: " + lastName.getAttribute("value"));

        // Step 3: Click on the "Next" button
        WebElement nextButton = d.findElement(By.xpath("//span[contains(text(),'Next')]"));
        nextButton.click();

        // Step 4: Wait for birth date fields to appear
        WebElement monthDropdownElement = wait.until(ExpectedConditions.visibilityOfElementLocated(By.id("month")));
        
        // Step 5: Select Month
        Select monthDropdown = new Select(monthDropdownElement);
        monthDropdown.selectByVisibleText("January");

        // Step 6: Enter Day
        WebElement dayField = d.findElement(By.id("day"));
        dayField.sendKeys("01");

        // Step 7: Enter Year
        WebElement yearField = d.findElement(By.id("year"));
        yearField.sendKeys("2000");

        // Step 8: Select Gender
        Select genderDropdown = new Select(d.findElement(By.id("gender")));
        genderDropdown.selectByVisibleText("Female");
        Thread.sleep(3000);

        // Step 9: Click on the "Next" button
        nextButton = d.findElement(By.xpath("//span[contains(text(),'Next')]"));
        nextButton.click();
     

        System.out.println("The account creation process is in progress!");

        //Close the browser after a short delay for demonstration purpose
        Thread.sleep(3000);
        d.quit();
        System.out.println("Browser closed.");
    }
}
