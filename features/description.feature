Feature: Test user description changes


  Scenario: Set description fields with valid data

    Given User is on user number "6" proposition page

    When I click "Edit description" button
    And I type "test test xyz" text in "celebrant.about" textarea
    And I click Save description button
    Then I can see page with "test test xyz" text


  Scenario: Set description fields with empty data

    Given User is on user number "6" proposition page

    When I click "Edit description" button
    And I leave empty "celebrant.about" textarea
    And I click Save description button
    Then I can see page with "This field is required" text


  Scenario Outline: Add proposition with space character as a title (this test should fail!)

    Given User is on user number "6" proposition page

    When I type " " in Title field
    And I type "<description>" in description field
    And I type "<price>" in price field
    And I click Save proposition button
    Then I can see page with "This field is required" text
    Examples:
      | description | price |
      |     d1      |   25  |