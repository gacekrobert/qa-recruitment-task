  Feature: Test user is changing his birth date


  Scenario: Set fields to valid data

    Given User is on "Edit profile" page

    When I select "Birthday day" field for "8"
    And I select "Birthday month" field for "5"
    And I click 'Save' button
    Then I can see page with "Upcoming birthdays" text

  Scenario: Set fields to invalid data

    Given User is on "Edit profile" page

    When I select "Birthday day" field for "15"
    And I select "Birthday month" field for "22"
    And I click 'Save' button
    Then I stay on "Edit profile" page


  Scenario: Set fields to non existing date (this test should fail!)

      Given User is on "Edit profile" page

      When I select "Birthday day" field for "31"
      And I select "Birthday month" field for "2"
      And I click 'Save' button
      Then I stay on "Edit profile" page