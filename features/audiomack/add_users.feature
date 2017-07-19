@signup
Feature: AudioMack Users

Scenario: Create New User
  Given I am on the signup page
  When I want to create a new AudioMack user
  Then I should see I am logged in as the new user
