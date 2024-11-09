package anshita.axisbank;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;


public class Capstone {

    public static void main(String[] args) throws InterruptedException {
        WebDriver d = new ChromeDriver();
        // Step 1: Launching the website
        d.get("https://testautomationpractice.blogspot.com/");
        d.manage().window().maximize();
        System.out.println("Website launched successfully!");

        // Step 2: Enter Name
        WebElement nameField = d.findElement(By.xpath("//*[@id=\"name\"]"));
        nameField.sendKeys("Anshita Singh");

        // Step 3: Print the value of the name
        System.out.println("Name entered: " + nameField.getAttribute("value"));

        // Step 4: Enter Email Address
        WebElement emailField = d.findElement(By.xpath("//*[@id=\"email\"]"));
        emailField.sendKeys("anshita.singh@gmail.com");

        // Step 5: Print the value of the email address
        System.out.println("Email entered: " + emailField.getAttribute("value"));

        // Step 6: Enter Phone Number
        WebElement phoneField = d.findElement(By.xpath("//*[@id=\"phone\"]"));
        phoneField.sendKeys("7537849970");

        // Step 7: Print the value of the phone number
        System.out.println("Phone number entered: " + phoneField.getAttribute("value"));
        Thread.sleep(3000); 

        // Step 8: Clear the Name and enter a new name
        nameField.clear();
        nameField.sendKeys("Anshi");
        System.out.println("Updated Name: " + nameField.getAttribute("value"));

        // Step 9: Clear the Phone Number and enter a new phone number
        phoneField.clear();
        phoneField.sendKeys("1234667810");
        System.out.println("Updated Phone number: " + phoneField.getAttribute("value"));

        // Step 10: Select the Gender
        WebElement genderRadioButton = d.findElement(By.xpath("//*[@id=\"female\"]"));
        genderRadioButton.click();
        System.out.println("Gender selected: Female");

        // Step 11: Select Days (Checkbox)
        WebElement mondayCheckbox = d.findElement(By.xpath("//*[@id=\"monday\"]"));
        mondayCheckbox.click();
        System.out.println("Day selected: Monday");

        // Close the browser after execution
        Thread.sleep(6000);  
        d.quit();
        System.out.println("Test execution completed!");
    }
}
