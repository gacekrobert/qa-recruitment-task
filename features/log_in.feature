    Feature: Test log in to Born application
    
    Scenario Outline: Log in with valid password
      When I visit home page
      And I type "<mail>" in email field
      And I type "<password>" in password field
      And I click "Log in" button
      Then I visit "<name>" user page
      Examples:
        | mail              | password | name       |
        | qa5@monterail.com | 123456   | BLACK JOHN |

    Scenario Outline: Log in with invalid password
      When I visit home page
      And I type "<mail>" in email field
      And I type "<password>" in password field
      And I click "Log in" button
      Then I can see "Log in" page
      Examples:
          | mail              | password |
          | qa5@monterail.com | 654321   |