# write tests for the comment view on the ticket page
Feature: Comment on a ticket
    Scenario: Comment on a ticket
        Given I am logged in
        And I am on the new ticket page
        When I fill in the new ticket form with valid information
        And I submit the formÍ
        When I go to the ticket page
        And I fill in the comment form
        And I press "Comment"
        Then I should see the comment