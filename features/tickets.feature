
Feature: Creating a new ticket

  Scenario: User creates a new ticket
    Given I am logged in
    When I am on the new ticket page
    And I fill in the new ticket form with valid information
    And I submit the form
    And the new ticket should be created in the system

  Scenario: User Edits a ticket
    Given I am logged in
    When I am on the new ticket page
    And I fill in the new ticket form with valid information
    And I submit the form
    And the new ticket should be created in the system
    And I should be able to visit the edit ticket page
    And I update the description
    And I am on the home page
    And I should see the updated description