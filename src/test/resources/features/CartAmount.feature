Feature: Cart Items Total
  In order to validate cart amount total calculated correctly
  As s standard user
  I want to successfully place an order with correct amount and total

  Scenario Outline: : Order placed with 2 items successfully
    #Given User opens chrome browser
    And User is on Log in page
    When User enters valid username standard_user and password secret_sauce
    Then User should successfully login
    And User should be on inventory page
    And User adds Bolt T-Shirt and Red T-Shirt to the cart
    And User clicks on Cart icon
    And User clicks on Checkout button
    And User enters First Name as "<FirstName>", Last Name as "<LastName>", Zip code as "<ZipCode>"
    And User clicks on Continue button
    And User clicks on Finish button
    Then Thank you for your order! should be displayed to the user
    And User should be on checkout-complete page

    Examples:
      | FirstName | LastName | ZipCode |
      | Sambavi   | Kanna    | 900452  |

  Scenario Outline: : Order placed with 2 items with correct total amount and tax calculations
    #Given User opens chrome browser
    And User is on Log in page
    When User enters valid username standard_user and password secret_sauce
    Then User should successfully login
    And User should be on inventory page
    And User adds Bolt T-Shirt and Red T-Shirt to the cart
    And User clicks on Cart icon
    And User reads and stores the prices of the products
    And User clicks on Checkout button
    #And User enters First Name as Aravindth, Last Name as Sathees , Zip code as 12345
    And User enters First Name as "<FirstName>", Last Name as "<LastName>", Zip code as "<ZipCode>"
    And User clicks on Continue button
    Then The total of the added products should be displayed correctly on Item total label
    #And 8 percent of tax should be displayed correctly on Tax label
    And 8 percent of tax should be displayed correctly on Tax label
    And Validate Total Label
    When User clicks on Finish button
    And Thank you for your order! should be displayed to the user
    And User should be on checkout-complete page


    Examples:
      | FirstName | LastName | ZipCode |
      | Maran  |   Sivash    |123456   |
      | Simran | Sharma      | 567543  |
      | Ritta  | Paul        | 670980  |
