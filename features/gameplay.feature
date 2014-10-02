Feature: I want to be the very best
  Like no one ever was
  To catch them is my real test
  To train them is my cause

Scenario: Creating a trainer
   Given I am at the homepage
   When no name has yet been entered
   When I enter my name
   Then I should see "Let's go catch some Pokemon"