Feature: Login functionality
  In order to login the sauce demo application successfully
  As a standard user
  I want to successfully login the application

  Scenario: Successful login with valid credentials
    #Given User opens chrome browser
    And User is on Log in page
    When User enters valid username standard_user and password secret_sauce
    Then User should successfully login
    And User should be on inventory page
    And User exits the browser


  Scenario: Unsuccessful login with invalid credentials
    #Given User opens chrome browser
    And User is on Log in page
    When User enters valid username standard_user and invalid password secret_sau
    Then Login should fail
    And User should be on login page
    And User exits the browser